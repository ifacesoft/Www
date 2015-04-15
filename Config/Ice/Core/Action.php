<?php
return [
    'Ice\Action\Resources' => [
        'input' => [
            'resources' => [
                'default' => [
                    'modules' => [
                        'Www' => [
                            'vendor_js' => [
                                'path' => 'js/vendor/',
                                'js' => [],
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'vendor_css' => [
                                'path' => 'css/vendor/',
                                'js' => [],
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'vendor' => [
                                'path' => 'vendor/',
                                'js' => [],
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'common' => [
                                'path' => '',
                                'js' => [],
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'module' => [
                                'path' => 'Ice/',
                                'js' => [],
                                'css' => [],
                                'isCopy' => false,
                            ],
                        ]
                    ],
                    'vendors' => [
                        'jquery/jquery-ui' => [
                            'jquery' => [
                                'path' => '/',
                                'js' => ['external/jquery/jquery.js', '-jquery-ui.min.js'],
                                'css' => ['-jquery-ui.min.css', '-jquery-ui.structure.min.css', '-jquery-ui.theme.min.css'],
                                'isCopy' => true,
                            ],
                        ],
                        'twbs/bootstrap' => [
                            'bootstrap' => [
                                'path' => 'dist/',
                                'js' => ['-js/bootstrap.min.js'],
                                'css' => ['-css/bootstrap.min.css', '-css/bootstrap-theme.min.css'],
                                'isCopy' => true,
                                'css_replace' => ['url(../', 'url('],
                            ],
                        ],
                        'bryanbraun/anchorjs' => [
                            'anchorjs' => [
                                'path' => '',
                                'js' => ['-anchor.min.js'],
                                'css' => ['anchor.css'],
                                'isCopy' => false,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
];