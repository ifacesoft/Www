<?php
/**
 * Created by PhpStorm.
 * User: dp
 * Date: 11/11/14
 * Time: 7:29 PM
 */

namespace Wi\Action;


use Ice\Core\Action;
use Ice\Core\Action_Context;

class Comment extends Action{

    /**
     *  public static $config = [
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
           'viewRenderClass' => 'Ice:Smarty'
      ];

    /** Run action
     *
     * @param array $input
     * @param Action_Context $actionContext
     * @return array
     */
    protected function run(array $input, Action_Context $actionContext)
    {
        // TODO: Implement run() method.
    }
}