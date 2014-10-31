<?php
return [
    'wi_main' => [
        'route' => '',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Wi',
                    ],
                ],
                'main' => 'Wi:Index',
            ],
            'layout' => 'Ice:Layout_Main',
        ],
        'weight' => 10000,
    ],
];