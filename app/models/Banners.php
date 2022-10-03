<?php
namespace Cafe\Models;

use Phalcon\Mvc\Model;


class Banners extends Model
{
    public $id;

    public $title;

    public $isActive;

    public $level;

    public $original_name;

    public $file_name;

    public $extension;

    public $size;

    public $created_at;

    public $modified_at;

    public function beforeValidationOnCreate()
    {
        $this->created_at = date('Y-m-d');
    }

    public function beforeValidationOnUpdate()
    {
        if ($this->isActive == 0) {
            $this->level = 99;
        }
        $this->updated_at = date('Y-m-d');
    }

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

    }
}