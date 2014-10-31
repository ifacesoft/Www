<?php
namespace Wi\Action;

use Ice\Core\Action;
use Ice\Core\Action_Context;
use Ice\Core\Logger;
use Ice\Data\Provider\Router;
use Ice\View\Render\Smarty;

/**
 * Class Cookbook
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Wi\Action;
 * @author dp
 * @version stable_0
 */
class Cookbook extends Action
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
        'viewRenderClassName' => 'Ice:Smarty',
        'afterActions' => 'Wi:Cookbook_Menu',
        'inputDataProviderKeys' => Router::DEFAULT_KEY,
    ];

    /**
     * Run action
     *
     * @param array $input
     * @param Action_Context $actionContext
     * @return array
     */
    protected function run(array $input, Action_Context $actionContext)
    {
        return [
            'article' => !empty($input['article'])
                ? Smarty::getInstance()->fetch('Wi\Action\Cookbook_' . $input['article'])
                : Smarty::getInstance()->fetch('Wi\Action\Cookbook_own_layout')
        ];
    }
}