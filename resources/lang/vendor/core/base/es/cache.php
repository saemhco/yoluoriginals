<?php

return [
    'cache_management' => 'Gestión de caché',
    'cache_commands' => 'Borrar comandos de caché',
    'commands' => [
        'clear_cms_cache' => [
            'title' => 'Borrar todo el caché CMS',
            'description' => 'Borrar almacenamiento en caché de CMS: almacenamiento en caché de base de datos, bloques estáticos... Ejecute este comando cuando no vea los cambios después de actualizar los datos.',
            'success_msg' => 'Caché limpiado',
        ],
        'refresh_compiled_views' => [
            'title' => 'Actualizar vistas compiladas',
            'description' => 'Borre las vistas compiladas para actualizar las vistas.',
            'success_msg' => 'Vista de caché actualizada',
        ],
        'clear_config_cache' => [
            'title' => 'Borrar caché de configuración',
            'description' => 'Es posible que deba actualizar el almacenamiento en caché de configuración cuando cambie algo en el entorno de producción.',
            'success_msg' => 'Caché de configuración limpiado',
        ],
        'clear_route_cache' => [
            'title' => 'Borrar caché de ruta',
            'description' => 'Borrar enrutamiento de caché.',
            'success_msg' => 'Se ha limpiado la caché de rutas.',
        ],
        'clear_log' => [
            'title' => 'Borrar registro',
            'description' => 'Borrar archivos de registro del sistema',
            'success_msg' => 'El registro del sistema ha sido limpiado',
        ],
    ],
];
