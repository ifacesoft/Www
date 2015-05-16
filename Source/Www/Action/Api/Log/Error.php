<?php

namespace Www\Action;

use Ice\Core\Action;
use Ice\Model\Log_Error;

class Api_Log_Error extends Action{

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
               'view' => ['template' => ''],
               'actions' => [],
               'input' => [
                   'ip' => ['providers' => 'request'],
                   'agent' => ['providers' => 'request'],
                   'referer' => ['providers' => 'request'],
                   'host' => ['providers' => 'request'],
                   'uri' => ['providers' => 'request'],
                   'post__json' => ['providers' => 'request'],
                   'exception__json' => ['providers' => 'request']
               ],
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
        try {
            Log_Error::create($input)->save();
        } catch (\Exception $e) {}
    }
}