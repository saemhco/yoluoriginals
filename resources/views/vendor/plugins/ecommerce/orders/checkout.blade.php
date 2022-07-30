@extends('plugins/ecommerce::orders.master')
@section('title')
{{ __('Checkout') }}
@stop
@section('content')
@if (Cart::instance('cart')->count() > 0)
<link rel="stylesheet" href="{{ asset('saem/payment/css/payment.css') }}?v=1.0.4">
<script src="{{ asset('saem/payment/js/payment.js') }}?v=1.0.4"></script>

{!! Form::open(['route' => ['public.checkout.process', $token], 'class' => 'checkout-form payment-checkout-form-saem', 'id' => 'checkout-form-saem']) !!}
<input type="hidden" name="checkout-token" id="checkout-token" value="{{ $token }}">

<div class="container" id="main-checkout-product-info">
    <div class="row">
        <div class="order-1 order-md-2 col-lg-5 col-md-6 right">
            <div class="d-block d-sm-none">
                @include('plugins/ecommerce::orders.partials.logo')
            </div>
            <div id="cart-item" class="position-relative">

                <div class="payment-info-loading" style="display: none;">
                    <div class="payment-info-loading-content">
                        <i class="fas fa-spinner fa-spin"></i>
                    </div>
                </div>

                <!---------------------- RENDER PRODUCTS IN HERE ---------------- -->
                {!! apply_filters(RENDER_PRODUCTS_IN_CHECKOUT_PAGE, $products) !!}

                <div class="mt-2 p-2">
                    <div class="row">
                        <div class="col-6">
                            <p>{{ __('Subtotal') }}:</p>
                        </div>
                        <div class="col-6">
                            <p class="price-text sub-total-text text-right"> {{ format_price(Cart::instance('cart')->rawSubTotal()) }} </p>
                        </div>
                    </div>
                    @if (session('applied_coupon_code'))
                    <div class="row coupon-information">
                        <div class="col-6">
                            <p>{{ __('Coupon code') }}:</p>
                        </div>
                        <div class="col-6">
                            <p class="price-text coupon-code-text"> {{ session('applied_coupon_code') }} </p>
                        </div>
                    </div>
                    @endif
                    @if ($couponDiscountAmount > 0)
                    <div class="row price discount-amount">
                        <div class="col-6">
                            <p>{{ __('Coupon code discount amount') }}:</p>
                        </div>
                        <div class="col-6">
                            <p class="price-text total-discount-amount-text"> {{ format_price($couponDiscountAmount) }} </p>
                        </div>
                    </div>
                    @endif
                    @if ($promotionDiscountAmount > 0)
                    <div class="row">
                        <div class="col-6">
                            <p>{{ __('Promotion discount amount') }}:</p>
                        </div>
                        <div class="col-6">
                            <p class="price-text"> {{ format_price($promotionDiscountAmount) }} </p>
                        </div>
                    </div>
                    @endif
                    @if (!empty($shipping))
                    <div class="row">
                        <div class="col-6">
                            <p>{{ __('Shipping fee') }}:</p>
                        </div>
                        <div class="col-6 float-right">
                            <p class="price-text shipping-price-text">{{ format_price($shippingAmount) }}</p>
                        </div>
                    </div>
                    @endif

                    @if (EcommerceHelper::isTaxEnabled())
                    <div class="row">
                        <div class="col-6">
                            <p>{{ __('Tax') }}:</p>
                        </div>
                        <div class="col-6 float-right">
                            <p class="price-text tax-price-text">{{ format_price(Cart::instance('cart')->rawTax()) }}</p>
                        </div>
                    </div>
                    @endif

                    <div class="row">
                        <div class="col-6">
                            <p><strong>{{ __('Total') }}</strong>:</p>
                        </div>
                        <div class="col-6 float-right">
                            <p class="total-text raw-total-text" data-price="{{ format_price(Cart::instance('cart')->rawTotal(), null, true) }}"> {{ ($promotionDiscountAmount + $couponDiscountAmount - $shippingAmount) > Cart::instance('cart')->rawTotal() ? format_price(0) : format_price(Cart::instance('cart')->rawTotal() - $promotionDiscountAmount - $couponDiscountAmount + $shippingAmount) }} </p>
                        </div>
                    </div>
                </div>
            </div>

            <hr>

            <div class="mt-3 mb-5">
                @include('plugins/ecommerce::themes.discounts.partials.form')
            </div>
        </div>
        <div class="col-lg-7 col-md-6 left">
            <div class="d-none d-sm-block">
                @include('plugins/ecommerce::orders.partials.logo')
            </div>
            <div class="form-checkout">
                <form action="{{ route('payments.checkout') }}" method="post">
                    @csrf

                    <div>
                        <h5 class="checkout-payment-title">{{ __('Shipping information') }}</h5>
                        <input type="hidden" value="{{ route('public.checkout.save-information', $token) }}" id="save-shipping-information-url">
                        @include('plugins/ecommerce::orders.partials.address-form', compact('sessionCheckoutData'))
                    </div>
                    <br>

                    @if (!is_plugin_active('marketplace'))
                    <div id="shipping-method-wrapper">
                        <h5 class="checkout-payment-title">{{ __('Shipping method') }}</h5>
                        <div class="shipping-info-loading" style="display: none;">
                            <div class="shipping-info-loading-content">
                                <i class="fas fa-spinner fa-spin"></i>
                            </div>
                        </div>
                        @if (!empty($shipping))
                        <div class="payment-checkout-form-saem">
                            <input type="hidden" name="shipping_option" value="{{ old('shipping_option', $defaultShippingOption) }}">
                            <ul class="list-group list_payment_method">
                                @foreach ($shipping as $shippingKey => $shippingItem)
                                @foreach($shippingItem as $subShippingKey => $subShippingItem)
                                @include('plugins/ecommerce::orders.partials.shipping-option', [
                                'defaultShippingMethod' => $defaultShippingMethod,
                                'defaultShippingOption' => $defaultShippingOption,
                                'shippingOption' => $subShippingKey,
                                'shippingItem' => $subShippingItem,
                                ])
                                @endforeach
                                @endforeach
                            </ul>
                        </div>
                        @else
                        <p>{{ __('No shipping methods available!') }}</p>
                        @endif
                    </div>
                    <br>
                    @endif

                    <div class="position-relative">
                        <div class="payment-info-loading" style="display: none;">
                            <div class="payment-info-loading-content">
                                <i class="fas fa-spinner fa-spin"></i>
                            </div>
                        </div>
                        <h5 class="checkout-payment-title">{{ __('Payment method') }}</h5>
                        <input type="hidden" name="amount" value="{{ ($promotionDiscountAmount + $couponDiscountAmount - $shippingAmount) > Cart::instance('cart')->rawTotal() ? 0 : format_price(Cart::instance('cart')->rawTotal() - $promotionDiscountAmount - $couponDiscountAmount + $shippingAmount, null, true) }}">
                        <input type="hidden" name="currency" value="{{ strtoupper(get_application_currency()->title) }}">
                        <!-- By saem: se quitó:  payment.paypal.status') -->
                        <!-- <input type="hidden" name="callback_url" value=""> -->
                        <input type="hidden" name="return_url" value="{{ \Botble\Payment\Supports\PaymentHelper::getRedirectURL($token) }}">
                        {!! apply_filters(PAYMENT_FILTER_PAYMENT_PARAMETERS, null) !!}
                        <ul class="list-group list_payment_method">
                            <!-- add by saem IziPAy -->
                            @if (setting('payment_izi_pay_status') == 1)
                            <li class="list-group-item">
                                <input class="magic-radio js_payment_method" type="radio" name="payment_method" id="payment_izi_pay" value="izi_pay" @if (!setting('default_payment_method') || setting('default_payment_method')==\Botble\Payment\Enums\PaymentMethodEnum::IZIPAY) checked @endif data-toggle="collapse" data-target=".payment_izi:pay_wrap" data-parent=".list_payment_method">
                                <label for="payment_izi_pay" class="text-left">
                                    {{ setting('payment_izi_pay_name', trans('plugins/payment::payment.payment_via_card')) }}
                                </label>
                                <div class="payment_izi_pay_wrap collapse @if (!setting('default_payment_method') || setting('default_payment_method') == \Botble\Payment\Enums\PaymentMethodEnum::IZIPAY) show @endif">
                                    <div class="card-checkout">
                                        <div class="form-group">
                                            <div class="izi_pay-card-wrapper"></div>
                                        </div>
                                        <div class="form-group @if ($errors->has('number') || $errors->has('expiry')) has-error @endif">
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <input placeholder="{{ trans('plugins/payment::payment.card_number') }}" name="card[number]" class="form-control" type="text" id="izi_pay-number" data-stripe="number">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input placeholder="{{ trans('plugins/payment::payment.mm_yy') }}" name="card[date]" class="form-control" type="text" id="izi_pay-exp" data-izi_pay="exp">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group @if ($errors->has('name') || $errors->has('cvc')) has-error @endif">
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <input placeholder="{{ trans('plugins/payment::payment.full_name') }}" name="card[full_name]" class="form-control" id="izi_pay-name" type="text" data-izi_pay="name">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input placeholder="{{ trans('plugins/payment::payment.cvc') }}" name="card[cvv]" class="form-control" type="text" id="izi_pay-cvc" data-izi_pay="cvc">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="payment-izi_pay-key" data-value="{{ setting('payment_izi_pay_client_id') }}"></div>
                                </div>
                            </li>
                            @endif
                            <!--By saem, hidden other payment methods  -->
                            @if(false)
                            @if (setting('payment_stripe_status') == 1)
                            <li class="list-group-item">
                                <input class="magic-radio js_payment_method" type="radio" name="payment_method" id="payment_stripe" value="stripe" @if (!setting('default_payment_method') || setting('default_payment_method')==\Botble\Payment\Enums\PaymentMethodEnum::STRIPE) checked @endif data-toggle="collapse" data-target=".payment_stripe_wrap" data-parent=".list_payment_method">
                                <label for="payment_stripe" class="text-left">
                                    {{ setting('payment_stripe_name', trans('plugins/payment::payment.payment_via_card')) }}
                                </label>
                                <div class="payment_stripe_wrap payment_collapse_wrap collapse @if (!setting('default_payment_method') || setting('default_payment_method') == \Botble\Payment\Enums\PaymentMethodEnum::STRIPE) show @endif">
                                    <div class="card-checkout">
                                        <div class="form-group">
                                            <div class="stripe-card-wrapper"></div>
                                        </div>
                                        <div class="form-group @if ($errors->has('number') || $errors->has('expiry')) has-error @endif">
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <input placeholder="{{ trans('plugins/payment::payment.card_number') }}" class="form-control" type="text" id="stripe-number" data-stripe="number">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input placeholder="{{ trans('plugins/payment::payment.mm_yy') }}" class="form-control" type="text" id="stripe-exp" data-stripe="exp">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group @if ($errors->has('name') || $errors->has('cvc')) has-error @endif">
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <input placeholder="{{ trans('plugins/payment::payment.full_name') }}" class="form-control" id="stripe-name" type="text" data-stripe="name">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input placeholder="{{ trans('plugins/payment::payment.cvc') }}" class="form-control" type="text" id="stripe-cvc" data-stripe="cvc">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="payment-stripe-key" data-value="{{ setting('payment_stripe_client_id') }}"></div>
                                </div>
                            </li>
                            @endif
                            @if (setting('payment_paypal_status') == 1)
                            <li class="list-group-item">
                                <input class="magic-radio js_payment_method" type="radio" name="payment_method" id="payment_paypal" @if (setting('default_payment_method')==\Botble\Payment\Enums\PaymentMethodEnum::PAYPAL) checked @endif value="paypal" data-toggle="collapse" data-target=".payment_paypal_wrap" data-parent=".list_payment_method">
                                <label for="payment_paypal" class="text-left">{{ setting('payment_paypal_name', trans('plugins/payment::payment.payment_via_paypal')) }}</label>
                                <div class="payment_paypal_wrap payment_collapse_wrap collapse @if (setting('default_payment_method') == \Botble\Payment\Enums\PaymentMethodEnum::PAYPAL) show @endif" style="padding: 15px 0;">
                                    {!! clean(setting('payment_paypal_description')) !!}

                                    @php $supportedCurrencies = (new \Botble\Payment\Services\Gateways\PayPalPaymentService)->supportedCurrencyCodes(); @endphp
                                    @if (!in_array(get_application_currency()->title, $supportedCurrencies))
                                    <div class="alert alert-warning" style="margin-top: 15px;">
                                        {{ __(":name doesn't support :currency. List of currencies supported by :name: :currencies.", ['name' => 'PayPal', 'currency' => get_application_currency()->title, 'currencies' => implode(', ', $supportedCurrencies)]) }}

                                        <div style="margin-top: 10px;">
                                            {{ __('Learn more') }}: <a href="https://developer.paypal.com/docs/api/reference/currency-codes" target="_blank" rel="nofollow">https://developer.paypal.com/docs/api/reference/currency-codes</a>
                                        </div>

                                        @php
                                        $currencies = get_all_currencies();

                                        $currencies = $currencies->filter(function ($item) use ($supportedCurrencies) { return in_array($item->title, $supportedCurrencies); });
                                        @endphp
                                        @if (count($currencies))
                                        <div style="margin-top: 10px;">{{ __('Please switch currency to any supported currency') }}:&nbsp;&nbsp;
                                            @foreach ($currencies as $currency)
                                            <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id()==$currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>
                                            @if (!$loop->last)
                                            &nbsp; | &nbsp;
                                            @endif
                                            @endforeach
                                        </div>
                                        @endif
                                    </div>
                                    @endif

                                </div>
                            </li>
                            @endif

                            {!! apply_filters(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, null, ['amount' => ($promotionDiscountAmount + $couponDiscountAmount - $shippingAmount) > Cart::instance('cart')->rawTotal() ? 0 : format_price(Cart::instance('cart')->rawTotal() - $promotionDiscountAmount - $couponDiscountAmount + $shippingAmount, null, true), 'currency' => strtoupper(get_application_currency()->title), 'name' => null]) !!}

                            @if (setting('payment_cod_status') == 1)
                            <li class="list-group-item">
                                <input class="magic-radio js_payment_method" type="radio" name="payment_method" id="payment_cod" @if (setting('default_payment_method')==\Botble\Payment\Enums\PaymentMethodEnum::COD) checked @endif value="cod" data-toggle="collapse" data-target=".payment_cod_wrap" data-parent=".list_payment_method">
                                <label for="payment_cod" class="text-left">{{ setting('payment_cod_name', trans('plugins/payment::payment.payment_via_cod')) }}</label>
                                <div class="payment_cod_wrap payment_collapse_wrap collapse @if (setting('default_payment_method') == \Botble\Payment\Enums\PaymentMethodEnum::COD) show @endif" style="padding: 15px 0;">
                                    {!! clean(setting('payment_cod_description')) !!}

                                    @php $minimumOrderAmount = setting('payment_cod_minimum_amount', 0); @endphp
                                    @if ($minimumOrderAmount > Cart::instance('cart')->rawSubTotal())
                                    <div class="alert alert-warning" style="margin-top: 15px;">
                                        {{ __('Minimum order amount to use COD (Cash On Delivery) payment method is :amount, you need to buy more :more to place an order!', ['amount' => format_price($minimumOrderAmount), 'more' => format_price($minimumOrderAmount - Cart::instance('cart')->rawSubTotal())]) }}
                                    </div>
                                    @endif
                                </div>
                            </li>
                            @endif
                            @if (setting('payment_bank_transfer_status') == 1)
                            <li class="list-group-item">
                                <input class="magic-radio js_payment_method" type="radio" name="payment_method" id="payment_bank_transfer" @if (setting('default_payment_method')==\Botble\Payment\Enums\PaymentMethodEnum::BANK_TRANSFER) checked @endif value="bank_transfer" data-toggle="collapse" data-target=".payment_bank_transfer_wrap" data-parent=".list_payment_method">
                                <label for="payment_bank_transfer" class="text-left">{{ setting('payment_bank_transfer_name', trans('plugins/payment::payment.payment_via_bank_transfer')) }}</label>
                                <div class="payment_bank_transfer_wrap payment_collapse_wrap collapse @if (setting('default_payment_method') == \Botble\Payment\Enums\PaymentMethodEnum::BANK_TRANSFER) show @endif" style="padding: 15px 0;">
                                    {!! clean(setting('payment_bank_transfer_description')) !!}
                                </div>
                            </li>
                            @endif
                            @endif
                        </ul>
                    </div>

                    <br>

                    <div class="form-group @if ($errors->has('description')) has-error @endif">
                        <label for="description" class="control-label">{{ __('Note') }}</label>
                        <br>
                        <textarea name="description" id="description" rows="3" class="form-control" placeholder="{{ __('Note') }}...">{{ old('description') }}</textarea>
                        {!! Form::error('description', $errors) !!}
                    </div>

                    @if (EcommerceHelper::getMinimumOrderAmount() > Cart::instance('cart')->rawSubTotal())
                    <div class="alert alert-warning">
                        {{ __('Minimum order amount is :amount, you need to buy more :more to place an order!', ['amount' => format_price(EcommerceHelper::getMinimumOrderAmount()), 'more' => format_price(EcommerceHelper::getMinimumOrderAmount() - Cart::instance('cart')->rawSubTotal())]) }}
                    </div>
                    @endif

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6 d-none d-md-block" style="line-height: 53px">
                                <a class="text-info" href="{{ route('public.cart') }}"><i class="fas fa-long-arrow-alt-left"></i> <span class="d-inline-block back-to-cart">{{ __('Back to cart') }}</span></a>
                            </div>
                            <div class="col-md-6 checkout-button-group">
                                <button type="submit" @if (EcommerceHelper::getMinimumOrderAmount()> Cart::instance('cart')->rawSubTotal()) disabled @endif class="btn btn-info payment-checkout-btn payment-checkout-btn-step float-right" data-processing-text="{{ __('Processing. Please wait...') }}" data-error-header="{{ __('Error') }}" id="btn-send-payment">
                                    {{ __('Checkout') }}
                                </button>
                            </div>
                        </div>
                        <div class="d-block d-md-none back-to-cart-button-group">
                            <a class="text-info" href="{{ route('public.cart') }}"><i class="fas fa-long-arrow-alt-left"></i> <span class="d-inline-block">{{ __('Back to cart') }}</span></a>
                        </div>
                    </div>
                </form>

            </div> <!-- /form checkout -->
        </div>
    </div>
</div>

@if (setting('payment_izi_pay_status') == 1)
<link rel="stylesheet" href="{{ asset('saem/payment/libraries/card/card.css') }}">
<script src="{{ asset('saem/payment/libraries/card/card.js') }}"></script>
<!-- <script src="{{ asset('https://js.stripe.com/v2/') }}"></script> -->
@endif
@else
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="alert alert-warning my-5">
                <span>{!! __('No products in cart. :link!', ['link' => Html::link(route('public.index'), __('Back to shopping'))]) !!}</span>
            </div>
        </div>
    </div>
</div>
@endif
<script>
    $(document).ready(function() {



        $('#btn-send-payment').on('click', function() {
            //cambiar texto del boton
            $('#btn-send-payment').html('Verificando...');
            $('#btn-send-payment').attr('disabled', true);
            //validar datos de tarjeta
            if ($("#izi_pay-cvc").val() == "") {
                alert("Ingrese el CVC (código de seguridad de la tarjeta)");
                $('#btn-send-payment').html('Verificar');
                $('#btn-send-payment').attr('disabled', false);
                return false;
            }
            if ($("#izi_pay-exp").val() == "") {
                alert("Ingrese el mes de expiración de la tarjeta");
                $('#btn-send-payment').html('Verificar');
                $('#btn-send-payment').attr('disabled', false);
                return false;
            }
            if ($("#izi_pay-number").val() == "") {
                alert("Ingrese el número de la tarjeta");
                $('#btn-send-payment').html('Verificar');
                $('#btn-send-payment').attr('disabled', false);
                return false;
            }
            if ($("#izi_pay-name").val() == "") {
                alert("Ingrese el nombre del titular de la tarjeta");
                $('#btn-send-payment').html('Verificar');
                $('#btn-send-payment').attr('disabled', false);
                return false;
            }
            $('#btn-send-payment').attr('disabled', false);
            return true;

        });
    });
</script>
@stop