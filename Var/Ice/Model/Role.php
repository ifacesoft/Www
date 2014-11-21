<?php
return [
    'time' => '2014-11-21 13:54:36',
    'revision' => '11211354',
    'scheme' => 'www',
    'modelClass' => 'Ice\\Model\\Role',
    'prefix' => 'ice',
    'columns' => [
        'role_pk' => [
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
        'role_name' => [
            'extra' => '',
            'type' => 'varchar(255)',
            'dataType' => 'varchar',
            'length' => '255',
            'characterSet' => 'utf8',
            'nullable' => true,
            'default' => null,
            'comment' => '',
            'is_primary' => false,
            'is_foreign' => false,
        ],
    ],
    'indexes' => [
        'PRIMARY KEY' => [
            'PRIMARY' => [
                1 => 'role_pk',
            ],
        ],
        'FOREIGN KEY' => [],
        'UNIQUE' => [],
    ],
];