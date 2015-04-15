<?php
return [
    'www_main' => [
        'route' => '/',
        'weight' => 10000,
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title' => 'title' , ['title' => 'Ice - Open Source PHP Framework ']],
                        'Www:Index' => 'main'
                    ]
                ]
            ]
        ]
    ],
    'www_handbook' => [
        'route' => '/handbook',
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title' => 'title' , ['title' => 'Ice - Руководство (Handbook)']],
                        'Www:Handbook' => 'main'
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
                        ['Ice:Title' => 'title', ['title' => 'Ice - Полезные статьи (Cookbook)']],
                        'Www:Cookbook' => 'main'
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
                        ['Ice:Title' => 'title', ['title' => 'F.A.Q']],
                        'Www:Faq' => 'main'
                    ]
                ]
            ]
        ]
    ]
];