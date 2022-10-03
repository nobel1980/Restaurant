<?php
namespace Cafe\Models;

use Phalcon\Mvc\Model;

class Categories extends Model
{
    /**
     *
     * @var integer
     */
    public $id;
     
    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var string
     */
    public $description;

    /**
     *
     * @var string
     */
    public $created;
     
    /**
     *
     * @var string
     */
    public $modified;
    /**
     *
     * @var integer
     */
    public $level;

    public $active;


    /**
     * The model Domains is mapped to the "domains" table
     */
    public function getSource()
    {
        return 'categories';
    }

    public function beforeCreate(){
        $this->created = date('Y-m-d');
        $this->modified = date('Y-m-d');
    }

    public function beforeUpdate(){
        $this->modified = date('Y-m-d H:i:s');
    }

    /**
     * Independent Column Mapping.
     */
    public function columnMap() {
        return array(
            'id' => 'id', 
            'name' => 'name',
            'description' => 'description',
            'level' => 'level',
            'active' => 'active',
            'created' => 'created',
            'modified' => 'modified'
        );
    }



    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->hasMany('id', 'Cafe\Models\products', 'category_id');
    }

    public function getProducts($parameters=null)
    {
        return $this->getRelated('Cafe\Models\products', $parameters);
    }

}