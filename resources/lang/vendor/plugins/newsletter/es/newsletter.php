<?php

return [
    'name' => 'Boletines',
    'settings' => [
        'email' => [
            'templates' => [
                'title' => 'Boletín',
                'description' => 'Configurar plantillas de correo electrónico para boletines',
                'to_admin' => [
                    'title' => 'Enviar correo electrónico al administrador',
                    'description' => 'Plantilla para enviar correo electrónico al administrador',
                ],
                'to_user' => [
                    'title' => 'Enviar correo electrónico al usuario',
                    'description' => 'Plantilla para enviar correo electrónico al suscriptor',
                ],
            ],
        ],
        'title' => 'Boletín',
        'description' => 'Configuraciones para el boletín',
        'mailchimp_api_key' => 'Clave API de Mailchimp',
        'mailchimp_list_id' => 'ID de lista de Mailchimp',
        'mailchimp_list' => 'Lista de mailchimp',
        'sendgrid_api_key' => 'Clave API de Sendgrid',
        'sendgrid_list_id' => 'ID de la lista Sendgrid',
        'sendgrid_list' => 'Lista de Sendgrid',
    ],
    'statuses' => [
        'subscribed' => 'Suscrito',
        'unsubscribed' => 'Suscripción cancelada',
    ],
];
