<?php
return [
    'www_main' => [
        'route' => '/',
        'weight' => 10000,
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['title' => 'Ice:Title', ['title' => 'Ice - Open Source PHP Framework ']],
                        'main' => 'Www:Index'
                    ]
                ]
            ]
        ]
    ],
    'www_handbook' => [
        'route' => '/handbook{$article}',
        'params' => [
            'article' => ['/(.*)', true]
        ],
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['title' => 'Ice:Title', ['title' => 'Ice - Руководство (Handbook)']],
                        'main' => 'Www:Handbook'
                    ]
                ]
            ]
        ]
    ],
    'www_cookbook' => [
        'route' => '/cookbook{$article}',
        'params' => [
            'article' => ['/(.*)', true]
        ],
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['title' => 'Ice:Title', ['title' => 'Ice - Полезные статьи (Cookbook)']],
                        'main' => 'Www:Cookbook'
                    ]
                ]
            ]
        ]
    ],
    'www_faq' => [
        'route' => '/faq',
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['title' => 'Ice:Title', ['title' => 'F.A.Q']],
                        'main' => 'Www:Faq'
                    ]
                ]
            ]
        ]
    ]
];