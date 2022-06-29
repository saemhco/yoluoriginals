<?php

namespace Botble\Marketplace\Providers;

use Auth;
use BaseHelper;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Models\Discount;
use Botble\Ecommerce\Models\Order;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Repositories\Interfaces\CustomerInterface;
use Botble\Marketplace\Models\Store;
use Botble\Marketplace\Repositories\Interfaces\StoreInterface;
use Botble\Marketplace\Repositories\Interfaces\VendorInfoInterface;
use Html;
use Illuminate\Database\Eloquent\Builder as EloquentBuilder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\ServiceProvider;
use Yajra\DataTables\EloquentDataTable;

class HookServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->app->booted(function () {
            add_filter(BASE_FILTER_AFTER_FORM_CREATED, [$this, 'registerAdditionalData'], 128, 2);

            add_action(BASE_ACTION_AFTER_CREATE_CONTENT, [$this, 'saveAdditionalData'], 128, 3);

            add_action(BASE_ACTION_AFTER_UPDATE_CONTENT, [$this, 'saveAdditionalData'], 128, 3);

            add_filter(IS_IN_ADMIN_FILTER, [$this, 'setInAdmin'], 128);

            add_filter(BASE_FILTER_GET_LIST_DATA, [$this, 'addColumnToEcommerceTable'], 153, 2);
            add_filter(BASE_FILTER_TABLE_HEADINGS, [$this, 'addHeadingToEcommerceTable'], 153, 2);
            add_filter(BASE_FILTER_TABLE_QUERY, [$this, 'modifyQueryInCustomerTable'], 153);

            add_filter(BASE_FILTER_REGISTER_CONTENT_TABS, [$this, 'addBankInfoTab'], 55, 3);
            add_filter(BASE_FILTER_REGISTER_CONTENT_TAB_INSIDE, [$this, 'addBankInfoContent'], 55, 3);

            add_filter(BASE_FILTER_APPEND_MENU_NAME, [$this, 'getUnverifiedVendors'], 130, 2);
            add_filter(BASE_FILTER_MENU_ITEMS_COUNT, [$this, 'getMenuItemCount'], 120, 1);

            if (function_exists('theme_option')) {
                add_action(RENDERING_THEME_OPTIONS_PAGE, [$this, 'addThemeOptions'], 55);
            }
        });
    }

    public function addThemeOptions()
    {
        theme_option()
            ->setSection([
                'title'      => trans('plugins/marketplace::marketplace.theme_options.name'),
                'desc'       => trans('plugins/marketplace::marketplace.theme_options.description'),
                'id'         => 'opt-text-subsection-marketplace',
                'subsection' => true,
                'icon'       => 'fa fa-shopping-cart',
                'fields'     => [
                    [
                        'id'         => 'logo_vendor_dashboard',
                        'type'       => 'mediaImage',
                        'label'      => trans('plugins/marketplace::marketplace.theme_options.logo_vendor_dashboard'),
                        'attributes' => [
                            'name'  => 'logo_vendor_dashboard',
                            'value' => null,
                        ],
                    ],
                ],
            ]);
    }

    /**
     * @param FormAbstract $form
     * @param BaseModel $data
     * @throws \Illuminate\Contracts\Container\BindingResolutionException
     */
    public function registerAdditionalData($form, $data)
    {
        if (get_class($data) == Product::class && request()->segment(1) === BaseHelper::getAdminPrefix()) {
            $stores = $this->app->make(StoreInterface::class)->pluck('name', 'id');

            $form
                ->addAfter('status', 'store_id', 'customSelect', [
                    'label'      => trans('plugins/marketplace::store.forms.store'),
                    'label_attr' => ['class' => 'control-label'],
                    'choices'    => [0 => trans('plugins/marketplace::store.forms.select_store')] + $stores,
                ]);
        } elseif (get_class($data) == Customer::class) {
            $form
                ->addAfter('email', 'is_vendor', 'onOff', [
                    'label'         => trans('plugins/marketplace::store.forms.is_vendor'),
                    'label_attr'    => ['class' => 'control-label'],
                    'default_value' => false,
                ]);
        }

        return $form;
    }

    /**
     * @param string $type
     * @param Request $request
     * @param BaseModel $object
     */
    public function saveAdditionalData($type, $request, $object)
    {
        if (!is_in_admin()) {
            if (in_array($type, [CUSTOMER_MODULE_SCREEN_NAME])) {
                if (!$object->is_vendor &&
                    $request->input('is_vendor') &&
                    get_marketplace_setting('verify_vendor', 1)) {
                    $object->vendor_verified_at = now();
                    $object->save();
                }
            }
            return false;
        }

        if (in_array($type, [PRODUCT_MODULE_SCREEN_NAME])) {
            $object->store_id = $request->input('store_id');
            $object->save();
        } elseif (in_array($type, [CUSTOMER_MODULE_SCREEN_NAME])) {
            $object->is_vendor = $request->input('is_vendor');
            // Create vendor info
            if ($object->is_vendor && !$object->vendorInfo->id) {
                $this->app->make(VendorInfoInterface::class)
                    ->createOrUpdate([
                        'customer_id' => $object->id,
                    ]);
            }

            $object->save();
        }

        return true;
    }

    /**
     * @return bool
     */
    public function setInAdmin($isInAdmin): bool
    {
        return request()->segment(1) === 'vendor' || $isInAdmin;
    }

    /**
     * @param EloquentDataTable $data
     * @param string|Model $model
     * @return EloquentDataTable
     */
    public function addColumnToEcommerceTable($data, $model)
    {
        if (!$model || !is_in_admin(true)) {
            return $data;
        }

        switch (get_class($model)) {
            case Customer::class:
                return $data->addColumn('is_vendor', function ($item) use ($model) {
                    return $item->is_vendor ? Html::tag('span', trans('core/base::base.yes'),
                        ['class' => 'text-success']) : trans('core/base::base.no');
                });
            case Order::class:
                return $data->addColumn('store', function ($item) use ($model) {
                    return $item->store->name ?: '&mdash;';
                });
            case Discount::class:
                return $data->addColumn('store', function ($item) use ($model) {
                    return $item->store->name ?: '&mdash;';
                });
            default:
                return $data;
        }
    }

    /**
     * @param array $headings
     * @param string|Model $model
     * @return array
     */
    public function addHeadingToEcommerceTable($headings, $model)
    {
        if (!$model || !is_in_admin(true)) {
            return $headings;
        }

        switch (get_class($model)) {
            case Customer::class:
                return array_merge($headings, [
                    'is_vendor' => [
                        'name'  => 'ec_customers.is_vendor',
                        'title' => trans('plugins/marketplace::store.forms.is_vendor'),
                        'class' => 'text-center',
                        'width' => '100px',
                    ],
                ]);
            case Order::class:
                return array_merge($headings, [
                    'store' => [
                        'name'      => 'ec_orders.store_id',
                        'title'     => trans('plugins/marketplace::store.forms.store'),
                        'class'     => 'text-center no-sort',
                        'orderable' => false
                    ],
                ]);
            case Discount::class:
                return array_merge($headings, [
                    'store' => [
                        'name'  => 'ec_discounts.store_id',
                        'title' => trans('plugins/marketplace::store.forms.store'),
                        'class' => 'text-center',
                    ],
                ]);
            default:
                return $headings;
        }
    }

    /**
     * @param Builder $query
     * @return mixed
     */
    public function modifyQueryInCustomerTable($query)
    {
        $model = null;

        if ($query instanceof Builder || $query instanceof EloquentBuilder) {
            $model = $query->getModel();
        }

        switch (get_class($model)) {
            case Customer::class:
                return $query->addSelect('ec_customers.is_vendor');

            case Order::class:
                return $query->addSelect('ec_orders.store_id')->with(['store']);

            default:
                return $query;
        }
    }


    /**
     * @param string $tabs
     * @param BaseModel $data
     * @return string
     */
    public function addBankInfoTab($tabs, $data = null)
    {
        if (!empty($data) && get_class($data) == Store::class) {
            $customer = $data->customer;
            if ($customer->is_vendor) {
                return $tabs . view('plugins/marketplace::customers.bank-info-tab')->render();
            }
        }

        return $tabs;
    }

    /**
     * @param string $tabs
     * @param BaseModel $data
     * @return string
     */
    public function addBankInfoContent($tabs, $data = null)
    {
        if (!empty($data) && get_class($data) == Store::class) {
            $customer = $data->customer;
            if ($customer->is_vendor) {
                return $tabs . view('plugins/marketplace::customers.bank-info-content', ['model' => $customer])
                        ->render();
            }
        }

        return $tabs;
    }

    /**
     * @param int $number
     * @param string $menuId
     * @return string
     */
    public function getUnverifiedVendors($number, $menuId)
    {
        if (Auth::user()->hasPermission('marketplace.unverified-vendor.index') &&
            in_array($menuId, ['cms-plugins-marketplace', 'cms-plugins-marketplace-unverified-vendor']) &&
            get_marketplace_setting('verify_vendor', 1)
        ) {
            $attributes = [
                'class'    => 'badge badge-success menu-item-count unverified-vendors',
                'style'    => 'display: none;',
            ];

            return Html::tag('span', '', $attributes)->toHtml();
        }

        return $number;
    }

    /**
     * @param array $data
     * @return array
     */
    public function getMenuItemCount(array $data = []) : array
    {
        if (Auth::check() &&
            Auth::user()->hasPermission('marketplace.unverified-vendor.index') &&
            get_marketplace_setting('verify_vendor', 1)) {
            $data[] = [
                'key'   => 'unverified-vendors',
                'value' => app(CustomerInterface::class)->count([
                    'is_vendor'          => true,
                    'vendor_verified_at' => null,
                ]),
            ];
        }

        return $data;
    }
}
