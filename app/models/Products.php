<?php
namespace Cafe\Models;

use Phalcon\Mvc\Model;

class Products extends Model
{

    public $id;

    public $category_id;

    public $name;

    public $description;

    public $price;

    public $level;

    public $active;

    public $createdby;

    public $modifiedby;

    public $created;

    public $modified;

    public function getSource()
    {
        return 'products';
    }

    public function beforeCreate(){
        $this->created = date('Y-m-d');
        $this->modified = date('Y-m-d');
    }
    public function beforeUpdate(){
        $this->modified = date('Y-m-d');
    }
    /**
     * Independent Column Mapping.
     */
    public function columnMap() {
        return array(
            'id' => 'id',
            'name' => 'name',
            'description' => 'description',
            'price' => 'price',
            'level' => 'level',
            'category_id' => 'category_id',
            'active' => 'active',

            'created' => 'created',
            'modified' => 'modified',
            'createdby' => 'createdby',
            'modifiedby' => 'modifiedby',
        );
    }

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->belongsTo('category_id', 'Cafe\Models\Categories', 'id', array(
            'alias' => 'categories',
            'reusable' => true
        ));
    }
}