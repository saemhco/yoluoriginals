try {
    window.$ = window.jQuery = require('jquery');

    require('bootstrap');
} catch (e) {
}

import {CheckoutAddress} from './partials/address';
import {DiscountManagement} from './partials/discount';

class MainCheckout {
    constructor() {
        new CheckoutAddress().init();
        new DiscountManagement().init();
    }

    static showNotice(messageType, message, messageHeader = '') {
        toastr.clear();

        toastr.options = {
            closeButton: true,
            positionClass: 'toast-bottom-right',
            onclick: null,
            showDuration: 1000,
            hideDuration: 1000,
            timeOut: 10000,
            extendedTimeOut: 1000,
            showEasing: 'swing',
            hideEasing: 'linear',
            showMethod: 'fadeIn',
            hideMethod: 'fadeOut'
        };

        if (!messageHeader) {
            switch (messageType) {
                case 'error':
                    messageHeader = window.messages.error_header;
                    break;
                case 'success':
                    messageHeader = window.messages.success_header;
                    break;
            }
        }
        toastr[messageType](message, messageHeader);
    }

    init() {
        let shippingForm = '#main-checkout-product-info #shipping-method-wrapper';

        let disablePaymentMethodsForm = () => {
            $('.payment-info-loading').show();
            $('.payment-checkout-btn').prop('disabled', true);
        }

        let enablePaymentMethodsForm = () => {
            $('.payment-info-loading').hide();
            $('.payment-checkout-btn').prop('disabled', false);

            document.dispatchEvent(new CustomEvent('payment-form-reloaded'));
        }

        let loadShippingFeeAtTheFirstTime = () => {
            let shippingMethod = $(document).find('input[name=shipping_method]:checked').first();
            if (!shippingMethod.length) {
                shippingMethod = $(document).find('input[name=shipping_method]').first()
            }

            if (shippingMethod.length) {
                shippingMethod.trigger('click');

                disablePaymentMethodsForm();

                $('.mobile-total').text('...');

                $('.shipping-info-loading').show();
                $(shippingForm).load(window.location.href
                    + '?shipping_method=' + shippingMethod.val()
                    + '&shipping_option=' + shippingMethod.data('option')
                    + ' ' + shippingForm + ' > *', () => {
                    $('.shipping-info-loading').hide();
                    enablePaymentMethodsForm();
                });
            }
        }

        loadShippingFeeAtTheFirstTime();

        let loadShippingFeeAtTheSecondTime = () => {
            const $marketplace = $('.checkout-products-marketplace');
            if (!$marketplace || !$marketplace.length) {
                return;
            }
            let shippingMethods = $(shippingForm).find('input.shipping_method_input');
            let methods = {
                'shipping_method': {},
                'shipping_option': {}
            };
            if (shippingMethods.length) {
                let storeIds = [];
                shippingMethods.map((i, shm) => {
                    let val = $(shm).filter(':checked').val();
                    let sId = $(shm).data('id');
                    if (!storeIds.includes(sId)) {
                        storeIds.push(sId);
                    }
                    if (val) {
                        methods['shipping_method'][sId] = val;
                        methods['shipping_option'][sId] = $(shm).data('option');
                    }
                });
                if (Object.keys(methods['shipping_method']).length !== storeIds.length) {
                    shippingMethods.map((i, shm) => {
                        let sId = $(shm).data('id');
                        if (!methods['shipping_method'][sId]) {
                            methods['shipping_method'][sId] = $(shm).val();
                            methods['shipping_option'][sId] = $(shm).data('option');
                            $(shm).prop('checked', true).trigger('change');
                        }
                    });
                }
            }

            disablePaymentMethodsForm();

            $('.shipping-info-loading').show();
            $(shippingForm).load(window.location.href + '?' + $.param(methods) + ' ' + shippingForm + ' > *', () => {
                $('.shipping-info-loading').hide();
                enablePaymentMethodsForm();
            });
        }

        loadShippingFeeAtTheSecondTime();

        $(document).on('change', 'input.shipping_method_input', () => {
            loadShippingFeeAtTheSecondTime()
        });

        $(document).on('change', 'input[name=shipping_method]', event => {
            // Fixed: set shipping_option value based on shipping_method change:
            const $this = $(event.currentTarget);
            $('input[name=shipping_option]').val($this.data('option'));

            disablePaymentMethodsForm();

            $('.mobile-total').text('...');

            $('.shipping-info-loading').show();
            $(shippingForm).load(window.location.href
                + '?shipping_method=' + $this.val()
                + '&shipping_option=' + $this.data('option')
                + ' ' + shippingForm + ' > *', () => {
                $('.shipping-info-loading').hide();
                enablePaymentMethodsForm();
            });
        });

        let validatedFormFields = () => {
            if ($('#address_id').val()) {
                return true;
            }

            let validated = true;
            $.each($(document).find('.address-control-item-required'), (index, el) => {
                if (!$(el).val()) {
                    validated = false;
                }
            });

            return validated;
        }

        $(document).on('change', '.customer-address-payment-form .address-control-item', (event) => {
            let _self = $(event.currentTarget);
            _self.closest('.form-group').find('.text-danger').remove();
            if (validatedFormFields()) {
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: $('#save-shipping-information-url').val(),
                    data: new FormData(_self.closest('form')[0]),
                    contentType: false,
                    processData: false,
                    success: res => {
                        if (!res.error) {
                            disablePaymentMethodsForm();

                            let $wrapper = $(shippingForm);
                            if ($wrapper.length) {
                                $('.shipping-info-loading').show();
                                $wrapper.load(window.location.href + ' ' + shippingForm + ' > *', () => {
                                    $('.shipping-info-loading').hide();
                                    const isChecked = $wrapper.find('input[name=shipping_method]:checked');
                                    if (!isChecked) {
                                        $wrapper.find('input[name=shipping_method]:first-child').trigger('click'); // need re-check
                                    }
                                    enablePaymentMethodsForm();
                                });
                            }

                            loadShippingFeeAtTheSecondTime(); // marketplace
                        }
                    },
                    error: res => {
                        console.log(res);
                    }
                });
            }
        });
    }
}

$(document).ready(() => {
    new MainCheckout().init();

    window.MainCheckout = MainCheckout;
});
