<?php
return [
    'Ice\\Core\\Model' => [
        'prefixes' => [
            'wi' => 'Wi',
        ],
    ],
    'Ice\\Core\\Data_Source' => [
        'test' => 'Ice:Mysqli/default',
    ],
    'Ice\\Core\\Request' => [
        'multilocale' => false,
        'locale' => 'ru',
    ],
    'Ice\\Core\\View' => [
        'layout' => null,
        'defaultViewRenderClassName' => 'Ice:Smarty',
    ],
    'Ice\\Core\\Action' => [
        'layoutActionName' => 'Ice:Layout_Main',
    ],
    'Ice\\Core\\Environment' => [
        'environments' => [
            '/wwwice.global$/' => 'production',
            '/wwwice.test$/' => 'test',
            '/wwwice.local$/' => 'development',
            '/iceframework.net$/' => 'development'
        ],
    ],
];