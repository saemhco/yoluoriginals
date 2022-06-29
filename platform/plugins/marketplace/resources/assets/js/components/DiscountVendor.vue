<template>
    <div class="flexbox-grid no-pd-none">
        <div class="flexbox-content">
            <div class="wrapper-content">
                <div class="pd-all-20 ws-nm">
                    <label class="title-product-main text-no-bold">
                        <span>{{ __('Create coupon code')}}</span>
                    </label>
                    <a href="#" v-if="generateUrl" class="btn-change-link float-right" v-on:click="generateCouponCode($event)">{{ __('Generate coupon code')}}</a>
                    <div class="form-group mt15">
                        <input type="text" class="next-input coupon-code-input"
                            name="code" v-model="code" v-bind:placeholder="__('Enter code of auto generate')">
                        <p class="help-block">{{ __('Customers will enter this coupon code when they checkout') }}.</p>
                    </div>
                    <div class="form-group mb0">
                        <input type="text" class="next-input" name="title" v-model="title"
                               v-bind:placeholder="__('Enter coupon name')">
                    </div>
                </div>
                <div class="pd-all-20 border-top-color">
                    <div class="form-group mb0 mt15">
                        <label>
                            <input type="checkbox" class="hrv-checkbox" name="is_unlimited" value="1"
                                   v-model="is_unlimited">{{ __('Unlimited coupon')}}
                        </label>
                    </div>
                    <div class="form-group mb0 mt15" v-show="!is_unlimited">
                        <label class="text-title-field">{{ __('Enter number') }}</label>
                        <div class="limit-input-group">
                            <input type="text" class="form-control pl5 p-r5" name="quantity" v-model="quantity"
                                   autocomplete="off" v-bind:disabled="is_unlimited">
                        </div>
                    </div>
                </div>
                <div class="pd-all-20 border-top-color">
                    <label class="title-product-main text-no-bold block-display">{{ __('Coupon type') }}</label>
                    <div class="form-inline form-group discount-input mt15 mb0 ws-nm">
                        <div class="ui-select-wrapper inline_block mb5" style="min-width: 200px;">
                            <select id="discount-type-option" name="type_option" class="ui-select" v-model="type_option"
                                    @change="handleChangeTypeOption()">
                                <option v-for="(item, index) in type_options"
                                        v-bind:value="index"
                                        v-bind:key="index">{{ item }}
                                </option>
                            </select>
                            <svg class="svg-next-icon svg-next-icon-size-16">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                            </svg>
                        </div>
                        <span class="lb-dis"> <span>{{ value_label }}</span></span>
                        <div class="inline width20-rsp-768 mb5">
                            <div class="next-input--stylized">
                                <input type="text" class="next-input next-input--invisible" name="value"
                                       v-model="value" autocomplete="off" placeholder="0">
                                <span class="next-input-add-on next-input__add-on--after">{{ discountUnit }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="flexbox-content flexbox-right">
            <div class="wrapper-content">
                <div class="pd-all-20">
                    <label class="title-product-main text-no-bold">{{ __('Time') }}</label>
                </div>
                <div class="pd-all-10-20 form-group mb0">
                    <label class="text-title-field">{{ __('Start date')}}</label>
                    <div class="next-field__connected-wrapper z-index-9">
                        <div class="input-group date form_datetime form_datetime bs-datetime">
                            <input type="text" placeholder="Select date..." data-date-format="dd-mm-yyyy" name="start_date"
                                   class="next-field--connected next-input z-index-9 datepicker" autocomplete="off">
                            <span class="input-group-prepend">
                                <button class="btn default" type="button">
                                    <span class="fa fa-fw fa-calendar"></span>
                                </button>
                            </span>
                        </div>
                        <div class="input-group">
                            <input type="text" placeholder="Select time..." name="start_time"
                                   class="next-field--connected next-input z-index-9 time-picker timepicker timepicker-24">
                            <span class="input-group-prepend">
                                <button class="btn default" type="button">
                                    <i class="fa fa-clock"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="pd-all-10-20 form-group mb0">
                    <label class="text-title-field">{{ __('End date')}}</label>
                    <div class="next-field__connected-wrapper z-index-9">
                        <div class="input-group date form_datetime form_datetime bs-datetime">
                            <input type="text" placeholder="Select date..."
                                data-date-format="dd-mm-yyyy"
                                name="end_date"
                                class="next-field--connected next-input z-index-9 datepicker"
                                v-bind:disabled="unlimited_time">
                            <span class="input-group-prepend">
                                <button class="btn default" type="button">
                                    <span class="fa fa-fw fa-calendar"></span>
                                </button>
                            </span>
                        </div>
                        <div class="input-group">
                            <input type="text" placeholder="Select time..." name="end_time"
                                   class="next-field--connected next-input z-index-9 time-picker timepicker timepicker-24"
                                   v-bind:disabled="unlimited_time">
                            <span class="input-group-prepend">
                                <button class="btn default" type="button">
                                    <i class="fa fa-clock"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="pd-all-10-20">
                    <label class="next-label disable-input-date-discount">
                        <input type="checkbox" class="hrv-checkbox" name="unlimited_time" value="1"
                               v-model="unlimited_time">{{ __('Never expired')}}
                    </label>
                </div>
            </div>

            <br>
            <div class="wrapper-content">
                <div class="pd-all-20">
                    <a class="btn btn-secondary" v-bind:href="cancleUrl" v-if="cancleUrl">{{ __('Cancel') }}</a>
                    <button class="btn btn-primary">{{ __('Save') }}</button>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
    // let moment = require('moment');

    export default {
        data: () => {
            return {
                title: null,
                code: null,
                type: 'coupon',
                is_unlimited: 1,
                quantity: 0,
                unlimited_time: 1,
                type_option: 'amount',
                value: null,
                target: 'all-orders',
                can_use_with_promotion: false,
                value_label: 'Discount',
                hidden_product_search_panel: true,
                product_collection_id: null,
                product_collections: [],
                discount_on: 'per-order',
                min_order_price: null,
                loading: false,
                discountUnit: '$',
                type_options: []
            }
        },
        props: {
            currency: {
                type: String,
                default: () => null,
                required: true
            },
            generateUrl: {
                type: String,
                default: () => null,
            },
            cancleUrl: {
                type: String,
                default: () => null,
            },
        },
        mounted: function () {
            this.discountUnit = this.currency;
            this.type_options = window.trans.enums.typeOptions;
        },
        methods: {
            generateCouponCode: function (event) {
                event.preventDefault();
                let context = this;
                axios
                    .post(this.generateUrl)
                    .then(res => {
                        context.code = res.data.data;
                        context.title = null;
                        $('.coupon-code-input').closest('div').find('.invalid-feedback').remove();
                    })
                    .catch(res => {
                        Botble.handleError(res.response.data);
                    });
            },
            handleChangeTypeOption: function () {
                let context = this;

                context.discountUnit = this.currency;
                context.value_label = 'Discount';

                switch (context.type_option) {
                    case 'amount':
                        context.target = 'all-orders';
                        break;
                    case 'percentage':
                        context.target = 'all-orders';
                        context.discountUnit = '%';
                        break;
                    case 'shipping':
                        context.value_label = 'when shipping fee less than';
                        break;
                    case 'same-price':
                        context.target = 'group-products';
                        context.value_label = 'Is';
                        context.getListProductCollections();
                        break;
                }
            }
        }
    }
</script>
