<?php

Route::group(['namespace' => 'Botble\Marketplace\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'marketplaces', 'as' => 'marketplace.'], function () {
            Route::group(['prefix' => 'stores', 'as' => 'store.'], function () {
                Route::resource('', 'StoreController')->parameters(['' => 'store']);
                Route::delete('items/destroy', [
                    'as'         => 'deletes',
                    'uses'       => 'StoreController@deletes',
                    'permission' => 'marketplace.store.destroy',
                ]);
            });

            Route::group(['prefix' => 'withdrawals', 'as' => 'withdrawal.'], function () {
                Route::resource('', 'WithdrawalController')
                    ->parameters(['' => 'withdrawal'])
                    ->except([
                        'create',
                        'store',
                        'destroy'
                    ]);
            });

            Route::match(['get', 'post'], '/settings', [
                'as'   => 'settings',
                'uses' => 'MarketplaceController@settings',
            ]);

            Route::group(['prefix' => 'unverified-vendors', 'as' => 'unverified-vendors.'], function () {
                Route::resource('', 'UnverifiedVendorController')
                    ->parameters(['' => 'unverifiedVendor'])
                    ->except([
                        'create',
                        'store',
                        'destroy'
                    ]);
            });
        });

    });

});
