<?php

namespace Cafe\Models;

use Phalcon\Mvc\Model;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Uniqueness;

/**
 * @package Cafe\Models
 */
class EmailUsers extends Model
{
    /** @var integer */
    public $emp_id;

    /** @var string */
    public $emp_name;

    /** @var string */
    public $email_add;

    /** @var string */
    public $email_pass;

    /** @var string */
    public $status;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');
    }
}
