<?php

return [
    'name'        => 'Marketplace',
    'description' => 'Config email templates for Marketplace',
    'templates'   => [
        'store_new_order' => [
            'title'       => 'plugins/marketplace::marketplace.email.store_new_order_title',
            'description' => 'plugins/marketplace::marketplace.email.store_new_order_description',
            'subject'     => 'New order(s) at {{ site_title }}',
            'can_off'     => true,
            'enabled'     => false,
        ],
        'verify_vendor' => [
            'title'       => 'plugins/marketplace::marketplace.email.verify_vendor_title',
            'description' => 'plugins/marketplace::marketplace.email.verify_vendor_description',
            'subject'     => 'New vendor at {{ site_title }} needs to be verified',
            'can_off'     => true,
            'enabled'     => false,
        ],
    ],
    'variables'   => [
        'store_name'       => 'plugins/marketplace::marketplace.email.store_name',
        'product_list'     => 'plugins/ecommerce::ecommerce.product_list',
        'payment_detail'   => 'plugins/ecommerce::ecommerce.payment_detail',
        'shipping_method'  => 'plugins/ecommerce::ecommerce.shipping_method',
        'payment_method'   => 'plugins/ecommerce::ecommerce.payment_method',
        'customer_name'    => 'plugins/ecommerce::ecommerce.customer_name',
        'customer_email'   => 'plugins/ecommerce::ecommerce.customer_email',
        'customer_phone'   => 'plugins/ecommerce::ecommerce.customer_phone',
        'customer_address' => 'plugins/ecommerce::ecommerce.customer_address',
        'store_name'       => 'plugins/ecommerce::store.store_name',
        'store_phone'      => 'plugins/ecommerce::store.store_phone',
        'store_link'       => 'plugins/ecommerce::store.store_link',
    ],
];
