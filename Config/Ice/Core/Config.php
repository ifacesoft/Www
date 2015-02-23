<?php
return [
    'Ice\\Core\\Model' => [
        'prefixes' => [
            'wi' => 'Wi',
        ],
    ],
    'Ice\Core\Data_Source' => [
        'Ice\Data\Source\Mysqli' => [
            'default' => 'www',
        ],
    ],
    'Ice\\Core\\Request' => [
        'multiLocale' => 1,
        'locale' => 'ru',
    ],
    'Ice\\Core\\Environment' => [
        'environments' => [
            '/www.global$/' => 'production',
            '/www.test$/' => 'test',
            '/www.local$/' => 'development',
            '/iceframework.net$/' => 'development',
            '/iceframework.local$/' => 'development',

        ],
    ],
];