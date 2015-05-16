<?php
return [
    'alias' => 'Www',
    'module' => [
        'name' => 'Www',
        'description' => 'Ice framework official site',
        'type' => 'web',
        'url' => 'http://iceframework.net/',
        'authors' => 'dp <denis.a.shestakov@gmail.com>',
        'vcs' => 'git',
        'source' => 'https://github.com/ifacesoft/Www.git',
        'Ice\Core\Data_Source' => [
//            'Ice\Data\Source\Mysqli/default.www' => ['www_']
        ],
        'configDir' => 'Config/',
        'sourceDir' => 'Source/',
        'resourceDir' => 'Resource/',
        'logDir' => 'Var/log/',
        'cacheDir' => 'Var/cache/',
        'uploadDir' => 'Var/upload/',
        'compiledResourceDir' => 'Web/resource/',
        'downloadDir' => 'Web/download/',
    ],
    'modules' => [
//        'ifacesoft/blog' => '/blog',
        'ifacesoft/ice' => '/ice'
    ],
];