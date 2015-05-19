<?php
namespace Www\Action;

use Ice\Core\Action;
use Ice\Core\Action_Context;
use Ice\Core\Debuger;
use Ice\Core\Logger;
use Ice\Core\Request;
use Ice\Helper\Api_Client_Yandex_Translate;
use Ice\Model\Account;
use Ice\Widget\Form\Simple;

/**
 * Class Index
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Www\Action;
 * @author dp
 * @version stable_0
 */
class Index extends Action
{
    /**
     * Action config
     *
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
            'view' => ['viewRenderClass' => 'Ice:Smarty'],
            'actions' => [
//                'Www:Feedback',
                ['Ice:SocialNetwork_Vkontakte_Widget_Group', ['groupId' => 73142573]],
//                ['Ice:SocialNetwork_Facebook_Widget_Group', ['groupId' => 1398920987078554]],
            ],
            'input' => [],
            'output' => ['resource' => 'Ice:Resource/Www\Action\Index'],
            'ttl' => -1,
            'roles' => []
        ];
    }

    /**
     * Run action
     *
     * @param array $input
     * @return array
     */
    public function run(array $input)
    {
    }
}