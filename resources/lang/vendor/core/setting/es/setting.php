<?php

return [
    'title' => 'Ajustes',
    'email_setting_title' => 'Ajustes del correo electrónico',
    'general' => [
        'theme' => 'Tema',
        'description' => 'Configuración de la información del sitio',
        'title' => 'General',
        'general_block' => 'Información general',
        'rich_editor' => 'Rich Editor',
        'site_title' => 'Título del sitio',
        'admin_email' => 'Correo electrónico del administrador',
        'seo_block' => 'Configuración SEO',
        'seo_title' => 'Título SEO',
        'seo_description' => 'Descripción SEO',
        'webmaster_tools_block' => 'Herramientas para webmasters de Google',
        'google_site_verification' => 'Verificación del sitio de Google',
        'placeholder' => [
            'site_title' => 'Título del sitio (máximo 120 caracteres)',
            'admin_email' => 'Correo electrónico del administrador',
            'seo_title' => 'Título SEO (máximo 120 caracteres)',
            'seo_description' => 'Descripción SEO (máximo 120 caracteres)',
            'google_analytics' => 'Google Analytics',
            'google_site_verification' => 'Verificación del sitio de Google',
        ],
        'cache_admin_menu' => '¿Menú de administración de caché?',
        'enable_send_error_reporting_via_email' => '¿Habilitar para enviar informes de errores por correo electrónico?',
        'time_zone' => 'Zona horaria',
        'default_admin_theme' => 'Tema de administración predeterminado',
        'enable_change_admin_theme' => '¿Habilitar cambiar el tema de administración?',
        'enable' => 'Habilitar',
        'disable' => 'Deshabilitar',
        'enable_cache' => '¿Habilitar caché?',
        'cache_time' => 'Tiempo de caché (minutos)',
        'cache_time_site_map' => 'Caché Tiempo Mapa del sitio',
        'admin_logo' => 'Logotipo de administrador',
        'admin_favicon' => 'icono de administrador',
        'admin_title' => 'Título de administrador',
        'admin_title_placeholder' => 'Mostrar título en la pestaña del navegador',
        'cache_block' => 'Cache',
        'admin_appearance_title' => 'Apariencia del administrador',
        'admin_appearance_description' => 'Configuración de la apariencia del administrador, como editor, idioma...',
        'seo_block_description' => 'Configuración del título del sitio, meta descripción del sitio, palabra clave del sitio para optimizar el SEO',
        'webmaster_tools_description' => 'Google Webmaster Tools (GWT) es un software gratuito que lo ayuda a administrar el aspecto técnico de su sitio web',
        'cache_description' => 'Caché de configuración para el sistema para optimizar la velocidad',
        'yes' => 'Si',
        'no' => 'No',
        'show_on_front' => 'Mostar pagina de inicio',
        'select' => '— Seleccione —',
        'show_site_name' => '¿Mostrar el nombre del sitio después del título de la página, separado con "-"?',
        'locale' => 'Idioma del sitio',
        'locale_direction' => 'Dirección del idioma del sitio frontal',
        'admin_locale_direction' => 'Dirección del idioma del administrador',
        'admin_login_screen_backgrounds' => 'Fondos de la pantalla de inicio de sesión (~1366x768)',
    ],
    'email' => [
        'subject' => 'Sujeto',
        'content' => 'Contenido',
        'title' => 'Configuración de la plantilla de correo electrónico',
        'description' => 'Plantilla de correo electrónico usando HTML y variables del sistema.',
        'reset_to_default' => 'Restablecer a los predeterminados',
        'back' => 'volver a la configuración',
        'reset_success' => 'Restablecer a los valores predeterminados correctamente',
        'confirm_reset' => '¿Confirmar restablecer plantilla de correo electrónico?',
        'confirm_message' => '¿Realmente desea restablecer esta plantilla de correo electrónico a los valores predeterminados?',
        'continue' => 'Continuar',
        'sender_name' => 'Nombre del remitente',
        'sender_name_placeholder' => 'Nombre',
        'sender_email' => 'Correo electrónico del remitente',
        'mailer' => 'Remitente',
        'port' => 'Puerto',
        'port_placeholder' => 'Ej: 587',
        'host' => 'Host',
        'host_placeholder' => 'Ej: smtp.gmail.com',
        'username' => 'Nombre de usuario',
        'username_placeholder' => 'Nombre de usuario para iniciar sesión en el servidor de correo',
        'password' => 'Contraseña',
        'password_placeholder' => 'Password to login to mail server',
        'encryption' => 'Cifrado',
        'mail_gun_domain' => 'Dominio',
        'mail_gun_domain_placeholder' => 'Dominio',
        'mail_gun_secret' => 'Secreto',
        'mail_gun_secret_placeholder' => 'Secreto',
        'mail_gun_endpoint' => 'punto final',
        'mail_gun_endpoint_placeholder' => 'punto final',
        'log_channel' => 'Canal de registro',
        'sendmail_path' => 'Ruta de envío de correo',
        'encryption_placeholder' => 'Cifrado: ssl or tls',
        'ses_key' => 'Key',
        'ses_key_placeholder' => 'Key',
        'ses_secret' => 'Secreto',
        'ses_secret_placeholder' => 'Secreto',
        'ses_region' => 'Region',
        'ses_region_placeholder' => 'Region',
        'postmark_token' => 'Token',
        'postmark_token_placeholder' => 'Token',
        'template_title' => 'Plantillas de correo electrónico',
        'template_description' => 'Plantillas base para todos los correos electrónicos',
        'template_header' => 'Encabezado de plantilla de correo electrónico',
        'template_header_description' => 'Plantilla para encabezado de correos electrónicos',
        'template_footer' => 'Pie de página de plantilla de correo electrónico',
        'template_footer_description' => 'Plantilla para pie de página de correos electrónicos',
        'default' => 'Por defecto',
        'using_queue_to_send_mail' => 'Usar el trabajo en cola para enviar correos electrónicos (debe configurar la cola primero https://laravel.com/docs/queues#supervisor-configuration)',
    ],
    'media' => [
        'title' => 'Media',
        'driver' => 'Driver',
        'description' => 'Configuraciones para medios',
        'aws_access_key_id' => 'ID de clave de acceso de AWS',
        'aws_secret_key' => 'Clave secreta de AWS',
        'aws_default_region' => 'Región predeterminada de AWS',
        'aws_bucket' => 'Cubo de AWS',
        'aws_url' => 'URL de AWS',
        'do_spaces_access_key_id' => 'ID de clave de acceso a espacios DO',
        'do_spaces_secret_key' => 'Clave secreta de los espacios DO',
        'do_spaces_default_region' => 'Región predeterminada de espacios DO',
        'do_spaces_bucket' => 'Cubo de espacios DO',
        'do_spaces_endpoint' => 'Extremo de espacios DO',
        'do_spaces_cdn_enabled' => '¿Está habilitado DO Spaces CDN?',
        'media_do_spaces_cdn_custom_domain' => 'Dominio personalizado de Spaces CDN',
        'media_do_spaces_cdn_custom_domain_placeholder' => 'https://your-custom-domain.com',
        'wasabi_access_key_id' => 'ID de la clave de acceso de Wasabi',
        'wasabi_secret_key' => 'Clave secreta de wasabi',
        'wasabi_default_region' => 'Región predeterminada de Wasabi',
        'wasabi_bucket' => 'Cubo de wasabi',
        'wasabi_root' => 'raíz de wasabi',
        'default_placeholder_image' => 'Imagen de marcador de posición predeterminada',
        'enable_chunk' => '¿Habilitar carga de tamaño de fragmento?',
        'chunk_size' => 'Tamaño de porción (Bytes)',
        'chunk_size_placeholder' => 'Por defecto: 1048576 ~ 1MB',
        'max_file_size' => 'Tamaño máximo de archivo de fragmento (MB)',
        'max_file_size_placeholder' => 'Por defecto: 1048576 ~ 1GB',
        'enable_watermark' => '¿Habilitar marca de agua?',
        'watermark_source' => 'Imagen de marca de agua',
        'watermark_size' => 'Tamaño de la marca de agua (%)',
        'watermark_size_placeholder' => 'Por defecto: 10 (%)',
        'watermark_opacity' => 'Opacidad de marca de agua (%)',
        'watermark_opacity_placeholder' => 'Por defecto: 70 (%)',
        'watermark_position' => 'Posición de marca de agua',
        'watermark_position_x' => 'Marca de agua posición X',
        'watermark_position_y' => 'Marca de agua posición Y',
        'watermark_position_top_left' => 'Arriba a la izquierda',
        'watermark_position_top_right' => 'Arriba a la derecha',
        'watermark_position_bottom_left' => 'Abajo a la izquierda',
        'watermark_position_bottom_right' => 'Abajo a la derecha',
        'watermark_position_center' => 'Centro',
        'turn_off_automatic_url_translation_into_latin' => '¿Desactivar la traducción automática de URL al latín?',
    ],
    'license' => [
        'purchase_code' => 'Código de compra',
        'buyer' => 'Comprador',
    ],
    'field_type_not_exists' => 'Este tipo de campo no existe',
    'save_settings' => 'Guardar ajustes',
    'template' => 'Plantilla',
    'description' => 'Descripción',
    'enable' => 'Habilitar',
    'send' => 'Enviar',
    'test_email_description' => 'Para enviar un correo electrónico de prueba, asegúrese de tener la configuración actualizada para enviar correo.',
    'test_email_input_placeholder' => 'Ingrese el correo electrónico al que desea enviar un correo electrónico de prueba.',
    'test_email_modal_title' => 'Enviar un correo electrónico de prueba',
    'test_send_mail' => 'Enviar correo de prueba',
    'test_email_send_success' => 'Enviar correo electrónico correctamente!',
    'locale_direction_ltr' => 'De izquierda a derecha',
    'locale_direction_rtl' => 'De derecha a izquierda',
    'saving' => 'Guardando...',
    'emails_warning' => 'Puede agregar hasta :count correos electrónicos',
    'email_add_more' => 'Añadir más',
];
