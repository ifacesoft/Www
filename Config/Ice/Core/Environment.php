<?php
return [
    'production' => [
        'Ice/Core/Data_Provider' => [
            'Ice\\Data\\Provider\\Mysqli' => [
                'default' => [
                    'username' => 'root',
                    'password' => '',
                ],
            ],
        ],
        'dataProviderKeys' => [],
    ],
];