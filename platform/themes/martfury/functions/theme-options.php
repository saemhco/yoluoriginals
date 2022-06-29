<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => '© 2021 Martfury. All right reserved.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])
        ->setField([
            'id'         => 'primary_font',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'googleFonts',
            'label'      => __('Primary font'),
            'attributes' => [
                'name'  => 'primary_font',
                'value' => 'Work Sans',
            ],
        ])
        ->setField([
            'id'         => 'primary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'primary_color',
                'value' => '#fcb800',
            ],
        ])
        ->setField([
            'id'         => 'secondary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Secondary color'),
            'attributes' => [
                'name'  => 'secondary_color',
                'value' => '#222222',
            ],
        ])
        ->setField([
            'id'         => 'header_text_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Header text color'),
            'attributes' => [
                'name'  => 'header_text_color',
                'value' => '#000',
            ],
        ])
        ->setField([
            'id'         => 'header_text_hover_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Header text hover color'),
            'attributes' => [
                'name'  => 'header_text_hover_color',
                'value' => '#fff',
            ],
        ])
        ->setField([
            'id'         => 'header_text_accent_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Header text accent color'),
            'attributes' => [
                'name'  => 'header_text_accent_color',
                'value' => '#000',
            ],
        ])
        ->setField([
            'id'         => 'button_text_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Button text color'),
            'attributes' => [
                'name'  => 'button_text_color',
                'value' => '#000',
            ],
        ])
        ->setField([
            'id'         => 'enable_newsletter_popup',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'select',
            'label'      => __('Enable newsletter popup?'),
            'attributes' => [
                'name'    => 'enable_newsletter_popup',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'newsletter_image',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'mediaImage',
            'label'      => __('Image for newsletter popup'),
            'attributes' => [
                'name'  => 'newsletter_image',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'newsletter_show_after_seconds',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'number',
            'label'      => __('Newsletter popup delay time (seconds)'),
            'attributes' => [
                'name'    => 'newsletter_show_after_seconds',
                'value'   => 10,
                'options' => [
                    'class'       => 'form-control',
                    'placeholder' => __('Default: 10 (seconds)'),
                ],
            ],
        ])
        ->setField([
            'id'         => 'welcome_message',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Welcome message'),
            'attributes' => [
                'name'    => 'welcome_message',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Welcome message'),
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'hotline',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Hotline'),
            'attributes' => [
                'name'    => 'hotline',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Hotline'),
                    'data-counter' => 30,
                ],
            ],
        ])
        ->setField([
            'id'         => 'address',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Address'),
            'attributes' => [
                'name'    => 'address',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Address'),
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'email',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'email',
            'label'      => __('Email'),
            'attributes' => [
                'name'    => 'email',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Email'),
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'payment_methods',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'mediaImages',
            'label'      => __('Accepted Payment methods'),
            'attributes' => [
                'name'   => 'payment_methods[]',
                'values' => theme_option('payment_methods', []),
            ],
        ])
        ->setField([
            'id'         => 'show_featured_brands_on_products_page',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'select',
            'label'      => __('Show featured brands on the products page?'),
            'attributes' => [
                'name'    => 'show_featured_brands_on_products_page',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'show_recommend_items_on_products_page',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'select',
            'label'      => __('Show recommend items on the products page?'),
            'attributes' => [
                'name'    => 'show_recommend_items_on_products_page',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setSection([
            'title'      => __('Product features'),
            'desc'       => __('Product features'),
            'id'         => 'opt-text-subsection-product-features',
            'subsection' => true,
            'icon'       => 'fa fa-cube',
        ])
        ->setSection([
            'title'      => __('Contact info boxes'),
            'desc'       => __('Contact info boxes'),
            'id'         => 'opt-text-subsection-contact-info-boxes',
            'subsection' => true,
            'icon'       => 'fa fa-envelope',
        ]);

    for ($i = 1; $i <= 5; $i++) {
        theme_option()
            ->setField([
                'id'         => 'product_feature_' . $i . '_title',
                'section_id' => 'opt-text-subsection-product-features',
                'type'       => 'text',
                'label'      => __('Product feature title') . ' ' . $i,
                'attributes' => [
                    'name'    => 'product_feature_' . $i . '_title',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'product_feature_' . $i . '_icon',
                'section_id' => 'opt-text-subsection-product-features',
                'type'       => 'themeIcon',
                'label'      => __('Product feature icon') . ' ' . $i,
                'attributes' => [
                    'name'    => 'product_feature_' . $i . '_icon',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ]);
    }

    for ($i = 1; $i <= 6; $i++) {
        theme_option()
            ->setField([
                'id'         => 'contact_info_box_' . $i . '_title',
                'section_id' => 'opt-text-subsection-contact-info-boxes',
                'type'       => 'text',
                'label'      => __('Contact box title') . ' ' . $i,
                'attributes' => [
                    'name'    => 'contact_info_box_' . $i . '_title',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'contact_info_box_' . $i . '_subtitle',
                'section_id' => 'opt-text-subsection-contact-info-boxes',
                'type'       => 'text',
                'label'      => __('Contact box subtitle') . ' ' . $i,
                'attributes' => [
                    'name'    => 'contact_info_box_' . $i . '_subtitle',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'contact_info_box_' . $i . '_details',
                'section_id' => 'opt-text-subsection-contact-info-boxes',
                'type'       => 'text',
                'label'      => __('Contact box detail') . ' ' . $i,
                'attributes' => [
                    'name'    => 'contact_info_box_' . $i . '_details',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ]);
    }

    theme_option()
        ->setSection([
            'title'      => __('Social links'),
            'desc'       => __('Social links'),
            'id'         => 'opt-text-subsection-social-links',
            'subsection' => true,
            'icon'       => 'fa fa-share-alt',
        ]);

    for ($i = 1; $i <= 10; $i++) {
        theme_option()
            ->setField([
                'id'         => 'social-name-' . $i,
                'section_id' => 'opt-text-subsection-social-links',
                'type'       => 'text',
                'label'      => __('Name') . ' ' . $i,
                'attributes' => [
                    'name'    => 'social-name-' . $i,
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'social-icon-' . $i,
                'section_id' => 'opt-text-subsection-social-links',
                'type'       => 'themeBrand',
                'label'      => __('Icon') . ' ' . $i,
                'attributes' => [
                    'name'    => 'social-icon-' . $i,
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'social-url-' . $i,
                'section_id' => 'opt-text-subsection-social-links',
                'type'       => 'text',
                'label'      => __('URL') . ' ' . $i,
                'attributes' => [
                    'name'    => 'social-url-' . $i,
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ])
            ->setField([
                'id'         => 'social-color-' . $i,
                'section_id' => 'opt-text-subsection-social-links',
                'type'       => 'customColor',
                'label'      => __('Color') . ' ' . $i,
                'attributes' => [
                    'name'    => 'social-color-' . $i,
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ]);
    }

    // Facebook integration
    theme_option()
        ->setSection([
            'title'      => __('Facebook Integration'),
            'desc'       => __('Facebook Integration'),
            'id'         => 'opt-text-subsection-facebook-integration',
            'subsection' => true,
            'icon'       => 'fab fa-facebook',
        ])
        ->setField([
            'id'         => 'facebook_chat_enabled',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'select',
            'label'      => __('Enable Facebook chat?'),
            'attributes' => [
                'name'    => 'facebook_chat_enabled',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper'     => __('To show chat box on that website, please go to :link and add :domain to whitelist domains!',
                [
                    'domain' => Html::link(url('')),
                    'link'   => Html::link('https://www.facebook.com/' . theme_option('facebook_page_id') . '/settings/?tab=messenger_platform'),
                ]),
        ])
        ->setField([
            'id'         => 'facebook_page_id',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'text',
            'label'      => __('Facebook page ID'),
            'attributes' => [
                'name'    => 'facebook_page_id',
                'value'   => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper'     => __('You can get fan page ID using this site :link',
                ['link' => Html::link('https://findmyfbid.com')]),
        ])
        ->setField([
            'id'         => 'facebook_comment_enabled_in_post',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'select',
            'label'      => __('Enable Facebook comment in post detail page?'),
            'attributes' => [
                'name'    => 'facebook_comment_enabled_in_post',
                'list'    => [
                    'yes' => trans('core/base::base.yes'),
                    'no'  => trans('core/base::base.no'),
                ],
                'value'   => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'facebook_app_id',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'text',
            'label'      => __('Facebook App ID'),
            'attributes' => [
                'name'        => 'facebook_app_id',
                'value'       => null,
                'options'     => [
                    'class' => 'form-control',
                ],
                'placeholder' => 'Ex: 2061237023872679',
            ],
            'helper'     => __('You can create your app in :link',
                ['link' => Html::link('https://developers.facebook.com/apps')]),
        ])
        ->setField([
            'id'         => 'facebook_admins',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'repeater',
            'label'      => __('Facebook Admins'),
            'attributes' => [
                'name'   => 'facebook_admins',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Facebook Admin ID'),
                        'attributes' => [
                            'name'    => 'text',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 40,
                            ],
                        ],
                    ],
                ],
            ],
            'helper'     => __('Facebook admins to manage comments :link',
                ['link' => Html::link('https://developers.facebook.com/docs/plugins/comments')]),
        ]);

    add_filter(THEME_FRONT_HEADER, function ($html) {
        if (theme_option('facebook_app_id')) {
            $html .= Html::meta(null, theme_option('facebook_app_id'), ['property' => 'fb:app_id'])->toHtml();
        }

        if (theme_option('facebook_admins')) {
            foreach (json_decode(theme_option('facebook_admins'), true) as $facebookAdminId) {
                if (Arr::get($facebookAdminId, '0.value')) {
                    $html .= Html::meta(null, Arr::get($facebookAdminId, '0.value'), ['property' => 'fb:admins'])
                        ->toHtml();
                }
            }
        }

        return $html;
    }, 1180);
});
