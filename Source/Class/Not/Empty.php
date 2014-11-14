<?php


use Ice\Core\Validator;

/**
 * Class Not_Empty
 *
 * @see Ice\Core\Validator

 * @author dp <email>

 * @version 0
 * @since 0
 */
class Not_Empty extends Validator
{
    /**
     * Validate data by scheme
     *
     * @example:
     *  'user_name' => [
     *      [
     *          'validator' => 'Ice:Not_Empty',
     *          'message' => 'Введите имя пользователя.'
     *      ],
     *  ],
     *  'name' => 'Ice:Not_Null'
     *
     * @param $data
     * @param null $scheme
     * @return boolean
     */
    public function validate($data, $scheme = null)
    {
        throw new \Ice\Core\Exception(['Implement validator {$0}', 'Not_Empty']);
    }
}