<?php
return [
    'Ice\\Core\\Model' => [
        'prefixes' => [
            'wi' => 'Wi',
        ],
    ],
    'Ice\\Core\\Data_Source' => [
        'Ice:Mysqli/default' => 'test',
    ],
    'Ice\\Core\\Request' => [
        'multilocale' => 1,
        'locale' => 'ru',
    ],
    'Ice\\Core\\View' => [
        'layout' => null,
        'defaultViewRenderClassName' => 'Ice:Smarty',
    ],
    'Ice\\Core\\Environment' => [
        'environments' => [
            '/www.global$/' => 'production',
            '/www.test$/' => 'test',
            '/www.local$/' => 'development',
            '/iceframework.net$/' => 'production',
            '/iceframework.local$/' => 'development',

        ],
    ],
];