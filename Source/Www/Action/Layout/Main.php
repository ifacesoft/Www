<?php
namespace Www\Action;

use Ice;
use Ice\Action\Layout;
use Ice\Core\Action;
use Ice\Core\Environment;
use Ice\Core\Security;
use Ice\Widget\Menu\Navbar;

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
            'actions' => [
                'Ice:Header',
                'Ice:Resource_Css',
                'Ice:Resource_Js',
                'Ice:Resource_Dynamic',
                ['Ice:Seo_Google_Analytics', ['PropertyID' => 'UA-51954794-1' , 'env' => Environment::PRODUCTION]],
                ['Ice:Seo_Yandex_Metrika_Informer', ['counterNumber' => '25280492' , 'env' => Environment::PRODUCTION]],
                ['Ice:Seo_Yandex_Metrika_Counter', ['counterNumber' => '25280492' , 'env' => Environment::PRODUCTION]],
                ['Ice:Seo_LiveInternet_Counter', ['env' => Environment::PRODUCTION]],
            ],
            'input' => ['url' => ['providers' => 'router']],
            'output' => []
        ];
    }

    public function run(array $input)
    {
        return array_merge(
            parent::run($input),
            [
                'user' => Security::getUser(),
                'environment' => Environment::getInstance()
            ]
        );
    }
}