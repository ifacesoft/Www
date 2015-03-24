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
            'Ice\Data\Source\Mysqli/default.www' => ['www_', 'ice_']
        ],
        'configDir' => 'Config/',
        'sourceDir' => 'Source/',
        'resourceDir' => 'Resource/',
        'logDir' => '../_log/',
        'cacheDir' => '../_cache/',
        'uploadDir' => '../_upload/',
        'downloadDir' => '../_download/',
        'compiledResourceDir' => '../_resource/'
    ],
    'vendors' => [
//        'ifacesoft/blog' => '/blog',
        'ifacesoft/ice' => '/ice'
    ],
];