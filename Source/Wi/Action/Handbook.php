<?php
namespace Wi\Action;

use Ice\Core\Action;
use Ice\Core\Action_Context;
use Ice\Core\Logger;
use Ice\Data\Provider\Router;
use Ice\View\Render\Smarty;

/**
 * Class Handbook
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Wi\Action;
 * @author dp
 * @version stable_0
 */
class Handbook extends Action
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
            'view' => ['viewRenderClass' => 'Ice:Smarty'],
            'actions' => 'Wi:Handbook_Menu',
            'input' => ['article' => 'router']
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
        $this->addAction(['Wi:Comment', ['article' => $input['article']]]);

        return [
            'article' => !empty($input['article'])
                ? Smarty::getInstance()->fetch('Wi\Action\Handbook_' . $input['article'])
                : Smarty::getInstance()->fetch('Wi\Action\Handbook_getting_started')
        ];
    }
}