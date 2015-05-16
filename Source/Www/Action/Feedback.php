<?php
/**
 * Created by PhpStorm.
 * User: dp
 * Date: 28.04.15
 * Time: 16:23
 */

namespace Www\Action;


use Ice\Core\Action;

class Feedback extends Action
{

    /**
     * Action config
     *
     * @return array
     *
     * @author anonymous <email>
     *
     * @version 0
     * @since   0
     */
    protected static function config()
    {
        return [
            'view' => ['viewRenderClass' => 'Ice:Smarty'],
            'actions' => [],
            'input' => [],
            'output' => [],
            'ttl' => -1,
            'roles' => []
        ];
    }

    /** Run action
     *
     * @param  array $input
     * @return array
     *
     * @author anonymous <email>
     *
     * @version 0
     * @since   0
     */
    public function run(array $input)
    {
        // TODO: Implement run() method.
    }
}