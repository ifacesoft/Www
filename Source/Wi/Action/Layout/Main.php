<?php
namespace Wi\Action;

use Ice;
use Ice\Action\Layout;
use Ice\Core\Action;
use Ice\Core\Action_Context;
use Ice\Core\Request;
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
    /**
     * Action config
     *
     * example:
     * ```php
     *  $config = [
     *      'actions' => [
     *          ['Ice:Title', ['title' => 'page title'], 'title'],
     *          ['Ice:Another_Action, ['param' => 'value']
     *      ],
     *      'view' => [
     *          'layout' => Emmet::PANEL_BODY,
     *          'template' => _Custom,
     *          'viewRenderClass' => Ice:Twig,
     *      ],
     *      'input' => [
     *          Request::DEFAULT_DATA_PROVIDER_KEY => [
     *              'paramFromGETorPOST => [
     *                  'default' => 'defaultValue',
     *                  'validators' => ['Ice:PATTERN => PATTERN::LETTERS_ONLY]
     *                  'type' => 'string'
     *              ]
     *          ]
     *      ],
     *      'output' => ['Ice:Resource/Ice\Action\Index'],
     *      'ttl' => 3600,
     *      'roles' => []
     *  ];
     * ```
     * @return array
     *
     * @author anonymous <email>
     *
     * @version 0
     * @since 0
     */
    protected static function config()
    {
        return [
            'view' => ['viewRenderClass' => 'Ice:Smarty', 'layout' => ''],
            'actions' => 'Ice:Resources',
            'output' => ['resource' => 'Ice:Resource/Wi\Action\Layout_Main']
        ];
    }

    public function run(array $input)
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

        $this->addAction(['Ice:Menu_Navbar', ['menu' => $menu]]);

        return array_merge(
            parent::run($input),
            [
                'user' => Security::getUser()
            ]
        );
    }
}