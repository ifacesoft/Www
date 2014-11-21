<?php
return [
    'time' => '2014-11-21 13:54:36',
    'revision' => '11211354',
    'scheme' => 'www',
    'modelClass' => 'Ice\\Model\\User_Role_Link',
    'prefix' => 'ice',
    'columns' => [
        'user__fk' => [
            'extra' => '',
            'type' => 'bigint(20)',
            'dataType' => 'bigint',
            'length' => '19,0',
            'characterSet' => null,
            'nullable' => false,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => true,
        ],
        'role__fk' => [
            'extra' => '',
            'type' => 'bigint(20)',
            'dataType' => 'bigint',
            'length' => '19,0',
            'characterSet' => null,
            'nullable' => false,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => true,
        ],
    ],
    'indexes' => [
        'PRIMARY KEY' => [
            'PRIMARY' => [
                1 => 'user__fk',
                2 => 'role__fk',
            ],
        ],
        'FOREIGN KEY' => [
            'fk_ice_user_role_link_ice_role' => [
                'fk_ice_user_role_link_ice_role' => 'role__fk',
            ],
            'PRIMARY' => [
                'fk_ice_user_role_link_ice_user' => 'user__fk',
            ],
        ],
        'UNIQUE' => [],
    ],
];