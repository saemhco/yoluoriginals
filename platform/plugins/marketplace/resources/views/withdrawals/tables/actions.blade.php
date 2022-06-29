<div class="table-actions">
    @if ($item->vendor_can_edit)
        <a href="{{ route('marketplace.vendor.withdrawals.edit', $item->id) }}" class="btn btn-icon btn-sm btn-primary" data-toggle="tooltip" data-original-title="{{ trans('core/base::tables.edit') }}">
            <i class="fa fa-edit"></i>
        </a>
    @else 
        <a href="{{ route('marketplace.vendor.withdrawals.show', $item->id) }}" class="btn btn-icon btn-sm btn-success" data-toggle="tooltip" data-original-title="{{ __('Show') }}">
            <i class="fa fa-eye"></i>
        </a>
    @endif
</div>
