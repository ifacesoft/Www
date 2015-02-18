<?php
return [
    'wi_main' => [
        'route' => '/',
        'weight' => 10000,
        'request' => [
            'GET' => [
                'Wi:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title', ['title' => 'Ice - Open Source PHP Framework '], 'title'],
                        ['Wi:Index', [], 'main']
                    ]
                ]
            ]
        ]
    ],
    'wi_handbook' => [
        'route' => '/handbook{$article}',
        'params' => [
            'article' => ['/(.*)', true]
        ],
        'request' => [
            'GET' => [
                'Wi:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title', ['title' => 'Ice - Руководство (Handbook)'], 'title'],
                        ['Wi:Handbook', [], 'main']
                    ]
                ]
            ]
        ]
    ],
    'wi_cookbook' => [
        'route' => '/cookbook{$article}',
        'params' => [
            'article' => ['/(.*)', true]
        ],
        'request' => [
            'GET' => [
                'Wi:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title', ['title' => 'Ice - Полезные статьи (Cookbook)'], 'title'],
                        ['Wi:Cookbook', [], 'main']
                    ]
                ]
            ]
        ]
    ],
    'wi_faq' => [
        'route' => '/faq',
        'request' => [
            'GET' => [
                'Wi:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title', ['title' => 'F.A.Q'], 'title'],
                        ['Wi:Faq', [], 'main']
                    ]
                ]
            ]
        ]
    ],
    'wi_tour' => [
        'route' => '/tour',
        'request' => [
            'GET' => [
                'Wi:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title', ['title' => 'Ice Quick Tour'], 'title'],
                        ['Wi:Tour', [], 'main']
                    ]
                ]
            ]
        ]
    ]
];