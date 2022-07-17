<?php

return [
    'settings' => [
        'title' => 'Configuración de inicio de sesión social',
        'description' => 'Configurar opciones de inicio de sesión social',
        'facebook' => [
            'title' => 'Configuración de inicio de sesión de Facebook',
            'description' => 'Habilitar/deshabilitar y configurar las credenciales de la aplicación para iniciar sesión en Facebook',
            'app_id' => 'ID de la aplicación',
            'app_secret' => 'App secreta',
            'helper' => 'Vaya a https://developers.facebook.com para crear una nueva actualización de la aplicación ID de la aplicación, App Secreta. La URL de devolución de llamada es :callback',
        ],
        'google' => [
            'title' => 'Configuración de inicio de sesión de Google',
            'description' => 'Habilitar/deshabilitar y configurar las credenciales de la aplicación para el inicio de sesión de Google',
            'app_id' => 'ID de la aplicación',
            'app_secret' => 'App Secreta',
            'helper' => 'Vaya a https://console.developers.google.com/apis/dashboard para crear una nueva actualización de la aplicación ID de la aplicación, App Secreta. La URL de devolución de llamada es :callback',
        ],
        'github' => [
            'title' => 'Configuración de inicio de sesión de Github',
            'description' => 'Habilitar/deshabilitar y configurar las credenciales de la aplicación para iniciar sesión en Github',
            'app_id' => 'ID de la aplicación',
            'app_secret' => 'App Secreta',
            'helper' => 'Vaya a https://github.com/settings/developers para crear una nueva actualización de la aplicación ID de la aplicación, App Secreta. La URL de devolución de llamada es  :callback',
        ],
        'linkedin' => [
            'title' => 'Configuración de inicio de sesión de Linkedin',
            'description' => 'Habilitar/deshabilitar y configurar las credenciales de la aplicación para iniciar sesión en Linkedin',
            'app_id' => 'ID de la aplicación',
            'app_secret' => 'App Secreta',
            'helper' => 'Vaya a https://www.linkedin.com/developers/apps/new para crear una nueva actualización de la aplicación ID de la aplicación, App Secreta. La URL de devolución de llamada es :callback',
        ],
        'enable' => '¿Habilitar?',
    ],
    'menu' => 'Inicio de sesión social',
];
