<?php

return [
    'name' => 'Retiros',
    'edit' => 'Editar retiro',
    'statuses' => [
        'pending' => 'Pending',
        'processing' => 'Procesando',
        'completed' => 'Completado',
        'canceled' => 'Cancelado',
        'refused' => 'Rechazado',
    ],
    'amount' => 'Importe',
    'customer' => 'Cliente',
    'vendor' => 'vendedor',
    'currency' => 'Divisa',
    'forms' => [
        'amount' => 'Monto',
        'amount_placeholder' => 'Cantidad que desea retirar',
        'fee' => 'Tarifa',
        'fee_helper' => 'Tienes que pagar una comisión al retirar: :fee',
        'pending_status_helper' => 'Para completar el retiro, actualice el estado como procesamiento y luego se completó',
    ],
];
