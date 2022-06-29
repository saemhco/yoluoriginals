@extends('plugins/marketplace::themes.dashboard.master')

@section('content')
    {!! Form::open(['id' => 'marketplace-vendor-discount']) !!}
        <div id="main-discount">
            <div class="max-width-1200">
                <discount-vendor-component
                    currency="{{ get_application_currency()->symbol }}"
                    generate-url={{ route('marketplace.vendor.discounts.generate-coupon') }}
                    cancle-url={{ route('marketplace.vendor.discounts.index') }}
                    >
                </discount-vendor-component>
            </div>
        </div>
    {!! Form::close() !!}
@stop

@push('pre-footer')
    <script>
        'use strict';

        window.trans = Object.assign(window.trans || {}, {
            "Discount": "{{ trans('plugins/ecommerce::discount.discount') }}",
            "enums": {
                "typeOptions": {!! json_encode(get_discount_type_options_for_vendor()) !!}
            },
        });
    </script>
    @php
        Assets::addScripts(['form-validation']);
    @endphp
    {!! JsValidator::formRequest(\Botble\Ecommerce\Http\Requests\DiscountRequest::class, '#marketplace-vendor-discount') !!}
@endpush
