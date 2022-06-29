<?php

use Botble\Marketplace\Models\Store;

Route::group(['namespace' => 'Botble\Marketplace\Http\Controllers\Fronts', 'middleware' => ['web', 'core']],
    function () {
        Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

            Route::get(SlugHelper::getPrefix(Store::class, 'stores'), [
                'as'   => 'public.stores',
                'uses' => 'PublicStoreController@getStores',
            ]);

            Route::get(SlugHelper::getPrefix(Store::class, 'stores') . '/{slug}', [
                'uses' => 'PublicStoreController@getStore',
                'as'   => 'public.store',
            ]);

            Route::post('ajax/stores/check-store-url', [
                'as'   => 'public.ajax.check-store-url',
                'uses' => 'PublicStoreController@checkStoreUrl',
            ]);
        });

        Route::group(['prefix' => 'vendor', 'as' => 'marketplace.vendor.', 'middleware' => ['vendor']], function () {

            Route::group(['prefix' => 'ajax'], function () {
                Route::post('upload', [
                    'as'   => 'upload',
                    'uses' => 'DashboardController@postUpload',
                ]);

                Route::post('upload-from-editor', [
                    'as'   => 'upload-from-editor',
                    'uses' => 'DashboardController@postUploadFromEditor',
                ]);

                Route::group(['prefix' => 'chart', 'as' => 'chart.'], function () {
                    Route::get('month', [
                        'as'   => 'month',
                        'uses' => 'RevenueController@getMonthChart',
                    ]);
                });
            });

            Route::get('dashboard', [
                'as'   => 'dashboard',
                'uses' => 'DashboardController@index',
            ]);

            Route::get('orders', [
                'as'   => 'orders',
                'uses' => 'OrderController@index',
            ]);

            Route::get('products', [
                'as'   => 'products',
                'uses' => 'ProductController@index',
            ]);

            Route::get('settings', [
                'as'   => 'settings',
                'uses' => 'SettingController@index',
            ]);

            Route::post('settings', [
                'as'   => 'settings',
                'uses' => 'SettingController@saveSettings',
            ]);

            Route::resource('revenues', 'RevenueController')
                ->parameters(['' => 'revenue'])
                ->only(['index']);

            Route::resource('withdrawals', 'WithdrawalController')
                ->parameters(['' => 'withdrawal'])
                ->only([
                    'index',
                    'create',
                    'store',
                    'edit',
                    'update',
                ]);

            Route::group(['prefix' => 'withdrawals'], function () {
                Route::get('show/{id}', [
                    'as'   => 'withdrawals.show',
                    'uses' => 'WithdrawalController@show',
                ]);
            });
        });

        Route::group(['prefix' => 'vendor', 'as' => 'marketplace.vendor.', 'middleware' => ['customer']], function () {

            Route::get('become-vendor', [
                'as'   => 'become-vendor',
                'uses' => 'DashboardController@getBecomeVendor',
            ]);

            Route::post('become-vendor', [
                'as'   => 'become-vendor',
                'uses' => 'DashboardController@postBecomeVendor',
            ]);

        });
    });
