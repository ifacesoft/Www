<?php
return [
    'www_main' => [
        'route' => '/',
        'weight' => 10000,
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title' => 'title', ['title' => 'Ice - Open Source PHP Framework ']],
                        'Www:Index' => 'main'
                    ]
                ]
            ]
        ]
    ],
    'www_guide' => [
        'route' => '/guide',
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title' => 'title', ['title' => 'Ice - Guide']],
                        'Www:Guide' => 'main'
                    ]
                ]
            ]
        ]
    ],
//    'www_cookbook' => [
//        'route' => '/cookbook{$article}',
//        'params' => [
//            'article' => ['/(.*)', true]
//        ],
//        'request' => [
//            'GET' => [
//                'Www:Layout_Main' => [
//                    'actions' => [
//                        ['Ice:Title' => 'title', ['title' => 'Ice - Полезные статьи (Cookbook)']],
//                        'Www:Cookbook' => 'main'
//                    ]
//                ]
//            ]
//        ]
//    ],
//    'www_faq' => [
//        'route' => '/faq',
//        'request' => [
//            'GET' => [
//                'Www:Layout_Main' => [
//                    'actions' => [
//                        ['Ice:Title' => 'title', ['title' => 'F.A.Q']],
//                        'Www:Faq' => 'main'
//                    ]
//                ]
//            ]
//        ]
//    ],
    'www_api_log_error' => [
        'route' => '/api/log/error',
        'request' => [
            'POST' => 'Www:Api_Log_Error'
        ]
    ]
];