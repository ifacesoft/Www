<h2>Добавить дополнительный data source</h2>

<p>Все доступные дата сорсы прописаны в главном конфигурационном файле (/Config/Ice/Core/Config.php)</p>

За настройки отвечает секция <strong>Ice\Core\Data_Source</strong>:
<div style="background-color: #2b2b2b; font-weight: bold;">
    {highlight_string("<?php
return [
    'Ice\Core\Model' => [
        'prefixes' => [
            'ebs' => 'Ebs',
            'fos' => 'Ebs',
            'acl' => 'Ebs',
            'sb' => 'Ebs',
        ]
    ],
    'Ice\Core\Data_Source' => [ // Да-да, это она
        'lan' => 'Ice:Mysqli/default',
        'binardi' => 'Ice:Mysqli/default',
    ],
    'Ice\Core\Request' => [
        'locale' => 'ru',
    ],
    'Ice\Core\Environment' => [
        'environments' => [
            '/ebs.local\$/' => 'development'
        ]
    ]
];
")}
</div>

<p>
    В выше приведенном конфиге прописан доступ к двум схемам базы данных ('lan' и 'binardi'), настройки подключения для
    которых описаны в конфиге дата провайдера в конфиге окружений (/Config/Ice/Core/Environment.php)
</p>

Вот его листинг:
<div style="background-color: #2b2b2b; font-weight: bold;">
    {highlight_string("<?php
return [
    'production' => [
        'Ice/Core/Data_Provider' => [
            'Ice:Mysqli/default' => [
                'username' => 'lan',
                'password' => 'lan',
            ]
        ],
        'dataProviderKeys' => []
    ]
];
")}
</div>

<p>
    Таким образом вы всегда можете расширить возможность подключеня к различным источникам данных, конфигурирую
    доступные параметры: добавить новую схему или определить новые параметры для подключения
</p>
