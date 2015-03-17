<?php
return [
    'Ice\\Core\\Request' => [
        'multiLocale' => 1,
        'locale' => 'ru',
        'cors' => []
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