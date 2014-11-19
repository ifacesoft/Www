<?php
return [
    'time' => '2014-11-19 12:35:55',
    'revision' => '11191235',
    'scheme' => 'www',
    'modelClass' => 'Bi\\Model\\Blog',
    'prefix' => 'bi',
    'columns' => [
        'blog_id' => [
            'extra' => 'auto_increment',
            'type' => 'bigint(20)',
            'dataType' => 'bigint',
            'length' => '19,0',
            'characterSet' => null,
            'nullable' => false,
            'default' => null,
            'comment' => '',
            'is_primary' => true,
            'is_foreign' => false,
        ],
        'blog_name' => [
            'extra' => '',
            'type' => 'varchar(255)',
            'dataType' => 'varchar',
            'length' => '255',
            'characterSet' => 'utf8',
            'nullable' => false,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => false,
        ],
        'blog_translit' => [
            'extra' => '',
            'type' => 'varchar(255)',
            'dataType' => 'varchar',
            'length' => '255',
            'characterSet' => 'utf8',
            'nullable' => false,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => false,
        ],
        'user__fk' => [
            'extra' => '',
            'type' => 'bigint(20)',
            'dataType' => 'bigint',
            'length' => '19,0',
            'characterSet' => null,
            'nullable' => true,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => true,
        ],
        'blog_active' => [
            'extra' => '',
            'type' => 'tinyint(1)',
            'dataType' => 'tinyint',
            'length' => '3,0',
            'characterSet' => null,
            'nullable' => true,
            'default' => '1',
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => false,
        ],
        'blog_created' => [
            'extra' => '',
            'type' => 'timestamp',
            'dataType' => 'timestamp',
            'length' => '0',
            'characterSet' => null,
            'nullable' => false,
            'default' => 'CURRENT_TIMESTAMP',
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => false,
        ],
    ],
    'indexes' => [
        'PRIMARY KEY' => [
            'PRIMARY' => [
                1 => 'blog_id',
            ],
        ],
        'FOREIGN KEY' => [
            'fk_bi_blog_ice_user' => [
                'fk_bi_blog_ice_user' => 'user__fk',
            ],
        ],
        'UNIQUE' => [],
    ],
];