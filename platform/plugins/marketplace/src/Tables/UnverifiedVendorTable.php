<?php

namespace Botble\Marketplace\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Repositories\Interfaces\CustomerInterface;
use Botble\Table\Abstracts\TableAbstract;
use Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use RvMedia;
use Yajra\DataTables\DataTables;

class UnverifiedVendorTable extends TableAbstract
{

    /**
     * @var bool
     */
    protected $hasActions = true;

    /**
     * @var bool
     */
    protected $hasFilter = true;

    /**
     * UnverifiedVendorTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param CustomerInterface $customerRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, CustomerInterface $customerRepository)
    {
        $this->repository = $customerRepository;
        $this->setOption('id', 'plugins-unverified-vendors-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['marketplace.unverified-vendors.edit'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    /**
     * {@inheritDoc}
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                if (!Auth::user()->hasPermission('marketplace.unverified-vendors.edit')) {
                    return $item->name;
                }
                return Html::link(route('marketplace.unverified-vendors.edit', $item->id), $item->name);
            })
            ->editColumn('avatar', function ($item) {
                if ($this->request()->input('action') == 'excel' ||
                    $this->request()->input('action') == 'csv') {
                    return $item->avatar_url;
                }

                return '<img src="' . $item->avatar_url . '" width="50" alt="' . $item->name . '" />';
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('store_name', function ($item) {
                return $item->store->name;
            })
            ->editColumn('store_phone', function ($item) {
                return $item->store->phone;
            })
            ->addColumn('operations', function ($item) {
                return Html::link(route('marketplace.unverified-vendors.edit', $item->id),
                    '<i class="fa fa-eye"></i>',
                    ['class' => 'btn btn-icon btn-sm btn-primary'], null, false);
            });

        return $this->toJson($data);
    }

    /**
     * {@inheritDoc}
     */
    public function query()
    {
        $query = $this->repository->getModel()
            ->select([
                'id',
                'name',
                'created_at',
                'is_vendor',
                'avatar'
            ])
            ->where([
                'is_vendor'          => true,
                'vendor_verified_at' => null,
            ])
            ->with(['store']);

        return $this->applyScopes($query);
    }

    /**
     * {@inheritDoc}
     */
    public function columns()
    {
        return [
            'id'         => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'avatar'        => [
                'title' => trans('plugins/ecommerce::customer.avatar'),
                'class' => 'text-center',
            ],
            'name'       => [
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'store_name'       => [
                'title'      => trans('plugins/marketplace::unverified-vendor.forms.store_name'),
                'class'      => 'text-left',
                'searchable' => false,
                'orderable'  => false,
            ],
            'store_phone'       => [
                'title'      => trans('plugins/marketplace::unverified-vendor.forms.store_phone'),
                'class'      => 'text-left',
                'searchable' => false,
                'orderable'  => false,
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'name'       => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'status'     => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type'  => 'date',
            ],
        ];
    }
}
