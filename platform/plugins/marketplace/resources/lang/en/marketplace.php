<?php

return [
    'name'            => 'Marketplace',
    'email'           => [
        'store_name'                  => 'Store name',
        'store_new_order_title'       => 'Send order to store',
        'store_new_order_description' => 'Send email to store when a customer an order placed',
        'verify_vendor_title'         => 'Verify vendor',
        'verify_vendor_description'   => 'Send email to the admin when a vendor registers',
    ],
    'current_balance' => 'Current balance',
    'settings'        => [
        'name'                  => 'Settings',
        'title'                 => 'Settings for marketplace',
        'description'           => '...',
        'fee_per_order'         => 'Fee per order (%), suggest: 2 or 3',
        'fee_withdrawal'        => 'Fee withdrawal (Fixed amount)',
        'check_valid_signature' => 'Check valid signature in vendor\'s earnings',
        'verify_vendor'         => 'Verify vendor when registered',
    ],
    'theme_options'   => [
        'name'                  => 'Marketplace',
        'description'           => 'Theme options for Marketplace',
        'logo_vendor_dashboard' => 'Logo in the vendor dashboard (Default is the main logo)',
    ],
];
