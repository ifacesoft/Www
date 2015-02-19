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
        'viewRenderClassName' => 'Ice:Smarty',
        'afterActions' => 'Wi:Handbook_Menu',
        'inputDataProviderKeys' => Router::DEFAULT_DATA_PROVIDER_KEY,
    ];

    /**
     * Run action
     *
     * @param array $input
     * @return array
     */
    protected function run(array $input)
    {
        $this->addAction('Wi:Comment', ['article' => $input['article']]);

        return [
            'article' => !empty($input['article'])
                ? Smarty::getInstance()->fetch('Wi\Action\Handbook_' . $input['article'])
                : Smarty::getInstance()->fetch('Wi\Action\Handbook_getting_started')
        ];
    }
}