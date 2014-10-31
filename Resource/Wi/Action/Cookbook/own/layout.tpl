<h1>Переопределение основоного шаблона</h1>
<h2>1. Правка роута</h2>
<p>В конфигурационном файле роутов необходимо переопределить значение экшена для layout.<p>

<div class="alert alert-info" role="alert">Конфигурационный файл роутов находится по следующему пути
    WwwIce/Config/Ice/Core/Route.php
</div>

<p>
    Например, меняем это:
<div style="background-color: #2b2b2b; font-weight: bold;">
    {highlight_string("<?php
return [
    'wi_main' => [
        'route' => '',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Wi',
                    ],
                ],
                'main' => 'Wi:Index',
            ],
            'layout' => 'Ice:Layout_Main', // ВОТ ЭТА СТРОЧКА
        ],
        'weight' => 10000,
    ],
];
")}
</div>
на это:
<div style="background-color: #2b2b2b; font-weight: bold;">
    {highlight_string("<?php
return [
    'wi_main' => [
        'route' => '',
        'GET' => [
            'actions' => [
                'title' => [
                    'Ice:Title' => [
                        'title' => 'Wi',
                    ],
                ],
                'main' => 'Wi:Index',
            ],
            'layout' => 'Wi:Layout_Main', // ВОТ ЭТА СТРОЧКА
        ],
        'weight' => 10000,
    ],
];
")}
</div>
</p>

<h2>2. Автосоздание экшена Layout_Main</h2>
<p>
    После обновления страницы, сгенерируется класс Wi\Action\Layout_Main (путь: WwwIce/Action/Layout/Main.php)
</p>

<p>
    Во-первых это не обычный экшин, а Layout, поэтому изменяем его родителя на Layout.
</p>

<p>
    Метод родительского класса нас полностью устраивет, поэтому из нашей реализации убираем его вообще.
</p>

<p>
    Далее, если по умолчанию мы используем View_Render отличный от Php, нам нужно это указать в поле $config
</p>

<div class="alert alert-info" role="alert">
    Аналогично, если мы хотим переопределить или добавить новые настройки для нашего layout, например добавить вызовы
    дополнителных экшинов (параметры конфига beforeActions и afterActions) или другое, то нат тоже придется заполнять
    поле $config
</div>

<p>
    В итоге у нас должно получиться что-то типа этого:
<div style="background-color: #2b2b2b; font-weight: bold;">
    {highlight_string("<?php
namespace Wi\Action;

use Ice\Action\Layout;
use Ice\Core\Action;
use Ice\Core\Action_Context;

/**
 * Class Layout_Main
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Wi\Action;
 * @author dp
 * @version stable_0
 */
class Layout_Main extends Layout
{
    /**  public static \$config = [
     *      'afterActions' => [],          // actions
     *      'layout' => null,               // Emmet style layout
     *      'template' => null,             // Template of view
     *      'output' => null,               // Output type: standart|file
     *      'viewRenderClassName' => null,  // Render class for view (example: Ice:Php)
     *      'inputDefaults' => [],          // Default input data
     *      'inputValidators' => [],        // Input data validators
     *      'inputDataProviderKeys' => [],  // InputDataProviders keys
     *      'outputDataProviderKeys' => [], // OutputDataProviders keys
     *      'cacheDataProviderKey' => ''    // Cache data provider key
     *  ];
     */
    public static \$config = [
        'afterActions' => ['Ice:Resources'],
        'viewRenderClassName' => 'Ice:Smarty',
        'layout' => ''
    ];
}
")}
</div>
</p>

<h2>3. Шаблон нашего layout</h2>
<p>
    Зная, что из роута к нам придет 2 переменных ($title  и $main), плюс экшин, который мы объявили в afterActions, то мы правим сгенерированный шаблон по пути WwwIce/Resource/Wi/Action/Layout/Main.tpl таким образом:
</p>

<p>
    В итоге у нас должно получиться что-то типа этого:
    {highlight_string('<!DOCTYPE html>
<html>
<head>
    <meta charset=utf-8>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <title>{$title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {$Resources[0]}
</head>
<body>
<div id="Layout_Main" class="container">
    <div id="iceMessages" class="notifications top-right"></div>
    {$main}
</div>
', true)}
</p>


<div class="alert alert-success" role="alert">
    Вот вроде бы и все.
</div>
