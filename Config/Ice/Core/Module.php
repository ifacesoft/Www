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
        'configDir' => MODULE_DIR . 'Config/',
        'sourceDir' => MODULE_DIR . 'Source/',
        'resourceDir' => MODULE_DIR . 'Resource/',
        'logDir' => VENDOR_DIR . '_log/',
        'cacheDir' => VENDOR_DIR . '_cache/',
        'uploadDir' => VENDOR_DIR . '_upload/',
        'downloadDir' => VENDOR_DIR . '_download/',
        'compiledResourceDir' => VENDOR_DIR . '_resource/'
    ],
    'vendors' => [
//        'ifacesoft/blog' => '/blog',
        'ifacesoft/ice' => '/ice'
    ],
];