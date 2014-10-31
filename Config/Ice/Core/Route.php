<?php
return [
    'wi_main' => [
        'route' => '/',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Ice PHP Framework ',
                    ],
                ],
                'main' => 'Wi:Index',
            ],
            'layout' => 'Wi:Layout_Main',
        ],
        'weight' => 10000,
    ],
    'wi_cookbook' => [
        'route' => '/cookbook{$article}',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Ice Cookbook',
                    ],
                ],
                'main' => 'Wi:Cookbook',
            ],
            'layout' => 'Wi:Layout_Main',
        ],
        'params' => [
            'article' => ['/(.*)', true]
        ],
    ],
    'wi_tour' => [
        'route' => '/tour',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Ice Quick Tour',
                    ],
                ],
                'main' => 'Wi:Tour',
            ],
            'layout' => 'Wi:Layout_Main',
        ]
    ],
];