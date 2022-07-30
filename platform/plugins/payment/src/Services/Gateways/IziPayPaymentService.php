<?php

namespace Botble\Payment\Services\Gateways;

use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Enums\PaymentStatusEnum;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use Botble\Payment\Services\Traits\PaymentErrorTrait;

class IziPayPaymentService extends Controller
{
    use PaymentErrorTrait;
    private $request;
    public function __construct($request)
    {
        $this->request = $request;
        $this->request->validate([
            'pan' => 'required|string|max:19',
            'expiryMonth' => 'required|string|max:2',
            'expiryYear' => 'required|string|max:4',
            'securityCode' => 'required|string|max:4',
            'amount' => 'required|numeric',
            'currency' => 'required|string|max:3|in:PEN,USD',
            'name' => 'required|string|max:120',
            'email' => 'required|email',
        ]);
    }

    public function execute()
    {
        $response = Http::withHeaders($this->headers($this->auth()))
            ->post(
                $this->url(),
                $this->data()
            );

        if ($response->failed()) {
            $this->setErrorMessage("Error al conectarse con el servicio de pago");
            return false;
        }
        $result = $response->object();
        if ($result->status == "ERROR") {
            $this->setErrorMessage("IZIPAY ( {$result->answer->errorCode}): {$result->answer->errorMessage}");
            return false;
        }
        $status = $result->answer->orderStatus == "PAID" ? true : false;

        if (!$status) {
            $data = collect($result->answer->transactions)->map(function ($item, $key) {
                return collect($item)->only('errorCode', 'errorMessage', 'detailedErrorCode', 'detailedErrorMessage');
            });
            $this->setErrorMessage("El pago no se ha realizado correctamente.");
        }

        $chargeId = Str::upper(Str::random(10));

        $orderIds = (array)$this->request->input('order_id', []);

        do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
            'amount'          => $this->request->input('amount'),
            'currency'        => $this->request->input('currency'),
            'charge_id'       => $chargeId,
            'order_id'        => $orderIds,
            'customer_id'     => $this->request->input('customer_id'),
            'customer_type'   => $this->request->input('customer_type'),
            'payment_channel' => PaymentMethodEnum::IZIPAY,
            'status'          => PaymentStatusEnum::COMPLETED,
        ]);

        return $chargeId;
    }

    private function auth()
    {
        $user       = setting('payment_izi_pay_user');
        $password   = setting('payment_izi_pay_password');
        return base64_encode($user . ':' . $password);
    }

    private function headers($auth)
    {
        return [
            'Authorization' => 'Basic ' . $auth,
            'Content-Type' => 'application/json',
        ];
    }

    private function url()
    {
        $url_base = setting('payment_izi_pay_url');
        $url_path = setting('payment_izi_pay_path');
        return $url_base . "/" . $url_path;
    }
    private function data()
    {
        return
            [
                "amount" => round(100 * $this->request->amount),
                "currency" => 'PEN',

                "paymentForms" => [
                    [
                        "paymentMethodType" => "CARD",
                        "pan" => $this->request->pan,
                        "expiryMonth" => $this->request->expiryMonth,
                        "expiryYear" => $this->request->expiryYear,
                        "securityCode" => $this->request->securityCode,
                    ]
                ],
                "customer" => [
                    "name" => $this->request->name,
                    "email" => $this->request->email
                ]
            ];
    }
}
