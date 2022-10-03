<?php

namespace Cafe\Forms;

use Phalcon\Forms\Form,
	Phalcon\Forms\Element\Text,
    Phalcon\Forms\Element\TextArea,
	Phalcon\Forms\Element\Hidden,
	Phalcon\Forms\Element\Password,
	Phalcon\Forms\Element\Submit,
	Phalcon\Forms\Element\Select,
	Phalcon\Forms\Element\Check,
	Phalcon\Validation\Validator\PresenceOf,
	Phalcon\Validation\Validator\Email;

use Cafe\Models\Categories;

class ProductsForm extends Form
{
	public function initialize($entity=null, $options=null)
	{
		//In edition the id is hidden
		if (isset($options['edit']) && $options['edit']) {
			$id = new Hidden('id');
		} else {
			$id = new Text('id');
		}

		$this->add($id);

		$this->add(new Text('weight',array('class'=>'input')));

        $name = new Text('name', [
            // 'placeholder' => 'Name'
        ]);
        $name->setLabel('Name');
        $name->addValidators([
            new PresenceOf([
                'message' => 'The name is required'
            ])
        ]);
        $this->add($name);

        $price = new Text('price', [
        ]);
        $price->setLabel('Price');
        $price->addValidators([
            new PresenceOf([
                'message' => 'The price is required'
            ])
        ]);
        $this->add($price);

        $description = new TextArea('description',array('class'=>'input-xxlarge'));
        $description->setLabel('Description');
        $this->add($description);

        $category_id = new Select('category_id', Categories::find(), array(
            'using' => array('id', 'name'),
            'useEmpty' => true,
        ));
        $category_id->setLabel('Category');
        $this->add($category_id);

        $this->add(new Select('active', array(
            '1' => 'Yes',
            '0' => 'No'
        )));
    }

}