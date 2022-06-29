@extends('core/base::layouts.master')
@section('content')
    {!! Form::open(['route' => 'marketplace.settings', 'class' => 'main-setting-form']) !!}
        <div class="max-width-1200">
            <div class="flexbox-annotated-section">
                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                        <h2>{{ trans('plugins/marketplace::marketplace.settings.title') }}</h2>
                    </div>
                    <div class="annotated-section-description pd-all-20 p-none-t">
                        <p class="color-note">{{ trans('plugins/marketplace::marketplace.settings.description') }}</p>
                    </div>
                </div>
                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">
                        <div class="form-group">
                            <label class="text-title-field" for="{{ get_marketplace_setting_key('fee_per_order') }}">{{ trans('plugins/marketplace::marketplace.settings.fee_per_order') }}</label>
                            <input type="number" class="next-input" min="0" max="100" name="{{ get_marketplace_setting_key('fee_per_order') }}" id="{{ get_marketplace_setting_key('fee_per_order') }}" value="{{ get_marketplace_setting('fee_per_order', 0) }}">
                        </div>
                        <div class="form-group">
                            <label class="text-title-field" for="{{ get_marketplace_setting_key('fee_withdrawal') }}">{{ trans('plugins/marketplace::marketplace.settings.fee_withdrawal') }}</label>
                            <input type="number" class="next-input" name="{{ get_marketplace_setting_key('fee_withdrawal') }}" id="{{ get_marketplace_setting_key('fee_withdrawal') }}" value="{{ get_marketplace_setting('fee_withdrawal', 0) }}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="{{ get_marketplace_setting_key('check_valid_signature') }}" value="0">
                            <label>
                                <input type="checkbox" class="hrv-checkbox" value="1" @if (get_marketplace_setting('check_valid_signature', 1)) checked @endif name="{{ get_marketplace_setting_key('check_valid_signature') }}">
                                {{ trans('plugins/marketplace::marketplace.settings.check_valid_signature') }}
                            </label>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="{{ get_marketplace_setting_key('verify_vendor') }}" value="0">
                            <label>
                                <input type="checkbox" class="hrv-checkbox" value="1" @if (get_marketplace_setting('verify_vendor', 1)) checked @endif name="{{ get_marketplace_setting_key('verify_vendor') }}">
                                {{ trans('plugins/marketplace::marketplace.settings.verify_vendor') }}
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flexbox-annotated-section" style="border: none">
                <div class="flexbox-annotated-section-annotation">
                    &nbsp;
                </div>
                <div class="flexbox-annotated-section-content">
                    <button class="btn btn-info" type="submit">{{ trans('core/setting::setting.save_settings') }}</button>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@endsection
