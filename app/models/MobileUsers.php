<?php

namespace Cafe\Models;

use Phalcon\Mvc\Model;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Uniqueness;

/**
 * @package Cafe\Models
 */
class MobileUsers extends Model
{
    /** @var integer */
    public $MOBILE_NO;

    /** @var string */
    public $DESIG_NAME;

    /** @var string */
    public $NAME;

    public $EMP_ID_NO;

    /** @var string */
    public $CEILING;

    public $SIM_STATUS;

    public $EMPLOYEE_STATUS;

    public function initialize()
    {
        $this->setConnectionService('dbOracle');
        $this->setSchema('MOBILE');
        $this->setSource("mobile1");
    }
}
