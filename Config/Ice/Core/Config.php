<?php
return [
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