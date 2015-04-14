<?php
namespace Www\Action;

use Ice;
use Ice\Action\Layout;
use Ice\Core\Action;
use Ice\Core\Security;
use Ice\Ui\Menu\Navbar;

/**
 * Class Layout_Main
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Www\Action;
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
            'output' => ['resource' => 'Ice:Resource/Www\Action\Layout_Main']
        ];
    }

    public function run(array $input)
    {
        $menu = Navbar::create()
            ->dropdown(
                'doc',
                'Документация',
                [
                    'Руководство (Handbook)' => '/handbook',
                    'Полезные статьи (Cookbook)' => '/cookbook',
                    'Исходный код (Api)' => '/resource/api/Ice/0.0',
                    'Часто задаваемые вопросы (Faq)' => '/faq'
                ])
            ->dropdown(
                'comm',
                'Сообщество',
                [
                    'Блог' => '/blog',
//                        'Форум' => '/forum'
                ])
            ->link('apps', 'Приложения', ['href' => '/apps'])
            ->button(
                'login',
                'Войти',
                [
                    'glyphicon' => 'qrcode',
                    'routeName' => 'ice_security_login',
                    'position' => 'right',
                    'show' => !Security::getUser(),
                ]
            )
            ->button(
                'login',
                'Войти',
                [
                    'glyphicon' => 'log-out',
                    'routeName' => 'ice_security_logout',
                    'position' => 'right',
                    'show' => Security::getUser(),
                ]
            );

        return array_merge(
            parent::run($input),
            [
                'user' => Security::getUser(),
                'menu' => $menu
            ]
        );
    }
}