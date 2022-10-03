<?php

namespace Cafe\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\File;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\StringLength;


class BannersForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);


        $title = new Text('title', array(
            'class' => 'input-xlarge',
            'placeholder' => 'Banner title'
        ));
        $this->add($title);

        $this->add(new Select('isActive', array(
            '1' => 'Active',
            '0' => 'Inactive'
        )));

    }

}