<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

Route::group(['namespace' => 'Botble\Payment\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(['prefix' => 'payments'], function () {
        Route::post('checkout', 'PaymentController@postCheckout')->name('payments.checkout');

        Route::get('status', 'PaymentController@getPayPalStatus')->name('payments.paypal.status');
    });

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'payments/methods', 'permission' => 'payment.settings'], function () {
            Route::get('', [
                'as'   => 'payments.methods',
                'uses' => 'PaymentController@methods',
            ]);

            Route::post('settings', [
                'as'         => 'payments.settings',
                'uses'       => 'PaymentController@updateSettings',
                'middleware' => 'preventDemo',
            ]);

            Route::post('', [
                'as'         => 'payments.methods.post',
                'uses'       => 'PaymentController@updateMethods',
                'middleware' => 'preventDemo',
            ]);

            Route::post('update-status', [
                'as'         => 'payments.methods.update.status',
                'uses'       => 'PaymentController@updateMethodStatus',
                'middleware' => 'preventDemo',
            ]);
        });

        Route::group(['prefix' => 'payments/transactions', 'as' => 'payment.'], function () {
            Route::resource('', 'PaymentController')->parameters(['' => 'payment'])->only(['index', 'destroy']);

            Route::get('{chargeId}', [
                'as'         => 'show',
                'uses'       => 'PaymentController@show',
                'permission' => 'payment.index',
            ]);

            Route::put('{chargeId}', [
                'as'         => 'update',
                'uses'       => 'PaymentController@update',
                'permission' => 'payment.index',
            ]);

            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'PaymentController@deletes',
                'permission' => 'payment.destroy',
            ]);

            Route::get('refund-detail/{id}/{refundId}', [
                'as'         => 'refund-detail',
                'uses'       => 'PaymentController@getRefundDetail',
                'permission' => 'payment.index',
            ]);
        });

    });
});

Route::get("buscar_ubigeo_reniec",function(Request $r){
    $search = $r->search;
     $q = \App\Models\Ubigeo::select( DB::raw("CONCAT(cod_ubigeo_reniec) as id"), DB::raw("CONCAT(desc_ubigeo_reniec,' - ', desc_prov_reniec,' - ', desc_dep_reniec) AS text"))
     ->where("cod_ubigeo_reniec","<>","NA")
     ->where(DB::raw("CONCAT(desc_ubigeo_reniec,' - ', desc_prov_reniec,' - ', desc_dep_reniec)"),"like","%$search%")
      ->get();
    
     return response()->json($q);
});
