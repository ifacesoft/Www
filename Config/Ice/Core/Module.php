<?php
return [
    'alias' => 'Www',
    'module' => [
        'name' => 'Www',
        'description' => 'Ice framework official site',
        'type' => 'module',
        'authors' => 'dp <denis.a.shestakov@gmail.com>',
        'vcs' => 'git',
        'source' => 'https://github.com/ifacesoft/Www.git',
        'Ice\Core\Data_Source' => [
            'Ice\Data\Source\Mysqli/default.test' => 'www_',
        ],
        'configDir' => 'Config/',
        'sourceDir' => 'Source/',
        'resourceDir' => 'Resource/',
        'logDir' => '../_log/Ice/',
        'cacheDir' => '../_cache/Ice/',
        'uploadDir' => '../_upload/Ice/',
        'downloadDir' => '../_download/Ice/',
        'compiledResourceDir' => '../_resource/Ice/resource'
    ],
    'vendors' => [
//        'dp-ifacesoft/blog' => '/blog',
            'ifacesoft/ice' => '/ice'
    ],
];