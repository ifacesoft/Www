<?php
return [
    'alias' => 'Wi',
    'module' => [
        'name' => 'Www',
        'type' => 'web',
        'url' => 'http://iceframework.net/',
        'authors' => 'dp <denis.a.shestakov@gmail.com>',
        'vcs' => 'git',
        'source' => '',
        'Ice\Core\Data_Source' => [
            'Ice\Data\Source\Mysqli/default.www' => ['ice_']
        ]
    ],
    'modules' => [
        ROOT_DIR . 'Blog/' => '/blog',
    ],
];