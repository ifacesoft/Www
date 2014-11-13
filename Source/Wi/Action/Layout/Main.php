<?php
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
    /**  public static $config = [
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
    public static $config = [
        'afterActions' => [
            'Ice:Resources',
            'Ice:Menu' => [
                'scheme' => [
                    'Документация' => [
                        'Руководство (Handbook)' => '/handbook',
                        'Полезные статьи (Cookbook)' => '/cookbook',
                        'Исходный код (Api)' => '/resource/api/Ice/0.0',
                        'Часто задаваемые вопросы (Faq)' => '/faq'
                    ],
                    'Сообщество' => [
                        'Блог' => '/blog',
//                        'Форум' => '/forum'
                    ],
//                    'Приложения' => '/apps',
                ]
            ]
        ],
        'viewRenderClassName' => 'Ice:Smarty',
        'layout' => ''
    ];
}