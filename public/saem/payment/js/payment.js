
            $(document).ready(function () {
            new Card({
                form: ".payment-checkout-form-saem",
                container: ".izi_pay-card-wrapper",
                formSelectors: { numberInput: "input#izi_pay-number", expiryInput: "input#izi_pay-exp", cvcInput: "input#izi_pay-cvc", nameInput: "input#izi_pay-name" },
            });
        $('.payment-info-loading').hide();
        $('.payment-checkout-btn').prop('disabled', false);
 
        });


