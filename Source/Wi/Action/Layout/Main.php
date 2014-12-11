<?php
namespace Wi\Action;

use Ice;
use Ice\Action\Layout;
use Ice\Core\Action;
use Ice\Core\Action_Context;
use Ice\Core\Security;
use Ice\Menu\Navbar;

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
     *      'output' => null,               // Output type: standard|file
     *      'viewRenderClassName' => null,  // Render class for view (example: Ice:Php)
     *      'inputDefaults' => [],          // Default input data
     *      'inputValidators' => [],        // Input data validators
     *      'inputDataProviderKeys' => [],  // InputDataProviders keys
     *      'outputDataProviderKeys' => [], // OutputDataProviders keys
     *      'cacheDataProviderKey' => ''    // Cache data provider key
     *  ];
     */
    public static $config = [
        'afterActions' => 'Ice:Resources',
        'viewRenderClassName' => 'Ice:Smarty',
        'layout' => ''
    ];

    protected function run(array $input, Action_Context $actionContext)
    {
        $menu = Navbar::getInstance('Topmenu')
            ->dropdown(
                'Документация',
                [
                    'Руководство (Handbook)' => '/handbook',
                    'Полезные статьи (Cookbook)' => '/cookbook',
                    'Исходный код (Api)' => '/resource/api/Ice/0.0',
                    'Часто задаваемые вопросы (Faq)' => '/faq'
                ])
            ->dropdown(
                'Сообщество',
                [
                    'Блог' => '/blog',
//                        'Форум' => '/forum'
                ])
            ->link('Приложения', '/apps')
            ->button('<span class="glyphicon glyphicon-qrcode"></span> Войти', 'location.href="' . Ice::get('Ice\Core\Route')->getUrl('ice_security_login') . '";', 'right', !Security::getUser())
            ->button('<span class="glyphicon glyphicon-log-out"></span> Выйти', 'location.href="' . Ice::get('Ice\Core\Route')->getUrl('ice_security_logout') . '";', 'right', Security::getUser());

        $actionContext->addAction('Ice:Menu_Navbar', ['menu' => $menu]);

        return parent::run($input, $actionContext);
    }
}