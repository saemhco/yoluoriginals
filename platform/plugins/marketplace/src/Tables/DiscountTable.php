<?php

namespace Botble\Marketplace\Tables;

use BaseHelper;
use Botble\Ecommerce\Repositories\Interfaces\DiscountInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;

class DiscountTable extends TableAbstract
{
    /**
     * @var bool
     */
    protected $hasActions = true;

    /**
     * @var bool
     */
    protected $hasFilter = false;

    /**
     * DiscountTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param DiscountInterface $discountRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, DiscountInterface $discountRepository)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $discountRepository;
    }

    /**
     * {@inheritDoc}
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('detail', function ($item) {
                return view('plugins/ecommerce::discounts.detail', compact('item'))->render();
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('total_used', function ($item) {
                if ($item->type === 'promotion') {
                    return '-';
                }

                if ($item->quantity === null) {
                    return $item->total_used;
                }

                return $item->total_used . '/' . $item->quantity;
            })
            ->editColumn('start_date', function ($item) {
                return BaseHelper::formatDate($item->start_date);
            })
            ->editColumn('end_date', function ($item) {
                return $item->end_date ?: '-';
            })
            ->addColumn('operations', function ($item) {
                return view('plugins/marketplace::themes.dashboard.table.actions', [
                    'edit'   => '',
                    'delete' => 'marketplace.vendor.discounts.destroy',
                    'item'   => $item,
                ])->render();
            });

        return $this->toJson($data);
    }

    /**
     * {@inheritDoc}
     */
    public function query()
    {
        $storeId = auth('customer')->user()->store->id;
        $query = $this->repository
            ->getModel()
            ->select(['*'])
            ->where('store_id', $storeId);

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
                'class' => 'text-left',
            ],
            'detail'     => [
                'name'  => 'code',
                'title' => trans('plugins/ecommerce::discount.detail'),
                'class' => 'text-left',
            ],
            'total_used' => [
                'title' => trans('plugins/ecommerce::discount.used'),
                'width' => '100px',
            ],
            'start_date' => [
                'title' => trans('plugins/ecommerce::discount.start_date'),
                'class' => 'text-center',
            ],
            'end_date'   => [
                'title' => trans('plugins/ecommerce::discount.end_date'),
                'class' => 'text-center',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function buttons()
    {
        return $this->addCreateButton(route('marketplace.vendor.discounts.create'));
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('marketplace.vendor.discounts.deletes'), null, parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function renderTable($data = [], $mergeData = [])
    {
        if ($this->query()->count() === 0 &&
            !$this->request()->wantsJson() &&
            $this->request()->input('filter_table_id') !== $this->getOption('id')
        ) {
            return view('plugins/ecommerce::discounts.intro');
        }

        return parent::renderTable($data, $mergeData);
    }
}
