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
        'logDir' => '../_log/Www/',
        'cacheDir' => '../_cache/Www/',
        'uploadDir' => '../_upload/Www/',
        'downloadDir' => '../_download/Www/',
        'compiledResourceDir' => '../_resource/Www/resource'
    ],
    'vendors' => [
//        'dp-ifacesoft/blog' => '/blog',
        'ifacesoft/ice' => '/ice'
    ],
];