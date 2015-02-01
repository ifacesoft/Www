<?php
return [
    'Ice\\Action\\Resources' => [
        'inputDefaults' => [
            'resources' => [
                'modules' => [
                    'Ice' => [
                        'vendor_js' => [
                            'path' => 'js/vendor/',
                            'js' => [
                                0 => '-modernizr-2.8.3.min.js',
                            ],
                            'css' => [],
                            'isCopy' => false,
                        ],
                        'vendor_css' => [
                            'path' => 'css/vendor/',
                            'js' => [],
                            'css' => [
                                0 => 'empty.css',
                            ],
                            'isCopy' => false,
                        ],
                        'module' => [
                            'path' => 'Ice/',
                            'js' => [
                                1 => 'Helper/String.js'
                            ],
                            'css' => [],
                            'isCopy' => false,
                        ],
                    ],
                    'Wi' => [
                        'module' => [
                            'path' => '',
                            'js' => [
//                                0 => 'js/javascript.js',
                            ],
                            'css' => [
                                0 => 'css/style.css',
                            ],
                            'isCopy' => false,
                        ],
                    ],
                ],
                'vendors' => [
                    'jquery/jquery-ui' => [
                        'jquery' => [
                            'path' => '/',
                            'js' => [
                                0 => 'external/jquery/jquery.js',
                                1 => '-jquery-ui.min.js',
                            ],
                            'css' => [
                                0 => '-jquery-ui.min.css',
                                1 => '-jquery-ui.structure.min.css',
                                2 => '-jquery-ui.theme.min.css',
                            ],
                            'isCopy' => true,
                        ],
                    ],
                    'twbs/bootstrap' => [
                        'bootstrap' => [
                            'path' => 'dist/',
                            'js' => [
                                0 => '-js/bootstrap.min.js',
                            ],
                            'css' => [
                                0 => '-css/bootstrap.min.css',
                                1 => '-css/bootstrap-theme.min.css',
                            ],
                            'isCopy' => true,
                            'css_replace' => [
                                0 => 'url(../',
                                1 => 'url(',
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
];