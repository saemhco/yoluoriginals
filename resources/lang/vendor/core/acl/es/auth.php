<?php

return [
    'login' => [
        'username' => 'Email/Usuario',
        'email' => 'Correo electrónico',
        'password' => 'Contraseña',
        'title' => 'Inicio de sesión de usuario',
        'remember' => '¿Recuérdame?',
        'login' => 'Iniciar sesión',
        'placeholder' => [
            'username' => 'Por favor, ingrese su nombre de usuario',
            'email' => 'Por favor ingrese su correo electrónico',
        ],
        'success' => '¡Sesión iniciada con éxito!',
        'fail' => 'Nombre de usuario o contraseña incorrectos.',
        'not_active' => '¡Tu cuenta no ha sido activada todavía!',
        'banned' => 'Esta cuenta está suspendida.',
        'logout_success' => '¡Sesión cerrado con éxito!',
        'dont_have_account' => 'No tiene una cuenta en este sistema, comuníquese con el administrador para obtener más información.',
    ],
    'forgot_password' => [
        'title' => 'Has olvidado tu contraseña',
        'message' => '<p>¿Has olvidado tu contraseña?</p><p>'."\n"
            .'Por favor ingrese su cuenta de correo electrónico. El sistema enviará un correo electrónico con un enlace activo para restablecer su contraseña.</p>',
        'submit' => 'Enviar',
    ],
    'reset' => [
        'new_password' => 'Nueva contraseña',
        'password_confirmation' => 'Confirmar nueva contraseña',
        'email' => 'Correo electrónico',
        'title' => 'Restablecer tu contraseña',
        'update' => 'Actualizar',
        'wrong_token' => 'Este enlace no es válido o ha caducado. Intente usar el formulario de reinicio nuevamente.',
        'user_not_found' => 'Este nombre de usuario no existe.',
        'success' => '¡La contraseña se restableció correctamente!',
        'fail' => 'El token no es válido, el enlace para restablecer la contraseña ha caducado.',
        'reset' => [
            'title' => 'Restablecer contraseña de email',
        ],
        'send' => [
            'success' => 'Se envió un correo electrónico a su cuenta de correo electrónico. Verifique y complete esta acción.',
            'fail' => 'No se puede enviar correo electrónico en este momento. Por favor, inténtelo de nuevo más tarde.',
        ],
        'new-password' => 'Nueva contraseña',
    ],
    'email' => [
        'reminder' => [
            'title' => 'Restablecer contraseña de email',
        ],
    ],
    'password_confirmation' => 'Contraseña confirmada',
    'failed' => 'Fallido',
    'throttle' => 'Acelerador',
    'not_member' => '¿No eres miembro todavía?',
    'register_now' => 'Registrarse ahora',
    'lost_your_password' => '¿Perdiste tu contraseña?',
    'login_title' => 'administrador',
    'login_via_social' => 'Iniciar sesión con redes sociales',
    'back_to_login' => 'Volver a la página de inicio de sesión',
    'sign_in_below' => 'Iniciar sesión a continuación',
    'languages' => 'Lenguajes',
    'reset_password' => 'Restablecer contraseña',
    'settings' => [
        'email' => [
            'title' => 'ACL',
            'description' => 'Configuración de correo electrónico de ACL',
        ],
    ],
];
