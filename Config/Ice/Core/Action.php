<?php
return [
    'Ice\Action\Resource_Css' => [
        'input' => [
            'resources' => [
                'default' => [
                    'modules' => [
                        'Www' => [
                            'vendor_css' => [
                                'path' => 'css/vendor/',
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'vendor' => [
                                'path' => 'vendor/',
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'common' => [
                                'path' => '',
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'module' => [
                                'path' => 'Ice/',
                                'css' => [],
                                'isCopy' => false,
                            ],
                            'vendorHighlight' => [
                                'path' => 'vendor/highlight/',
                                'css' => ['styles/default.css'],
                                'isCopy' => false,
                            ],
                        ]
                    ],
                    'vendors' => [
                        'jquery/jquery-ui' => [
                            'jquery' => [
                                'path' => '/',
                                'css' => ['-jquery-ui.min.css', '-jquery-ui.structure.min.css', '-jquery-ui.theme.min.css'],
                                'isCopy' => true,
                            ],
                        ],
                        'twbs/bootstrap' => [
                            'bootstrap' => [
                                'path' => 'dist/',
                                'css' => ['-css/bootstrap.min.css', '-css/bootstrap-theme.min.css'],
                                'isCopy' => true,
                                'css_replace' => ['url(../', 'url('],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'Ice\Action\Resource_Js' => [
        'input' => [
            'resources' => [
                'default' => [
                    'modules' => [
                        'Www' => [
                            'vendor_js' => [
                                'path' => 'js/vendor/',
                                'js' => [],
                                'isCopy' => false,
                            ],
                            'vendor' => [
                                'path' => 'vendor/',
                                'js' => [],
                                'isCopy' => false,
                            ],
                            'common' => [
                                'path' => '',
                                'js' => [],
                                'isCopy' => false,
                            ],
                            'module' => [
                                'path' => 'Ice/',
                                'js' => [],
                                'isCopy' => false,
                            ],
                            'vendorHighlight' => [
                                'path' => 'vendor/highlight/',
                                'js' => ['-highlight.pack.js'],
                                'isCopy' => false,
                            ],
                        ]
                    ],
                    'vendors' => [
                        'jquery/jquery-ui' => [
                            'jquery' => [
                                'path' => '/',
                                'js' => ['external/jquery/jquery.js', '-jquery-ui.min.js'],
                                'isCopy' => true,
                            ],
                        ],
                        'twbs/bootstrap' => [
                            'bootstrap' => [
                                'path' => 'dist/',
                                'js' => ['-js/bootstrap.min.js'],
                                'isCopy' => true,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'Ice\Action\Cache_Hit' => [
        'input' => [
            'routeNames' => [
                'default' => ['www_main', 'www_guide']
            ]
        ]
    ],
];