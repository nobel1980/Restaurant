<?php

namespace Cafe\Controllers;

use Cafe\Models\Robot;
use Cafe\Models\Categories;
use Cafe\Models\Products;

/**
 */
class ShopController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateBefore('public');
    }
    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {

    }

    public function menuAction()
    {
        foreach(Categories:: find(['active' => '1']) as $cat)
        {
            $category[$cat->id]['id'] = $cat->id;
            $category[$cat->id]['name'] = $cat->name;
            $category[$cat->id]['description'] = $cat->description;
        }

        foreach(Products:: find() as $pd)
        {
            $product[$pd->id]['id'] = $pd->id;
            $product[$pd->id]['name'] = $pd->name;
            $product[$pd->id]['description'] = $pd->description;
            $product[$pd->id]['price'] = $pd->price;
            $product[$pd->id]['cat_id'] = $pd->category_id;
            $product[$pd->id]['cat_name'] = $category[$pd->category_id]['name'];
            $product[$pd->id]['cat_des'] = $category[$pd->category_id]['description'];
        }
        //echo "<pre>"; print_r($product);exit;
        $this->view->products = $product;
        $this->view->groups = $category;
    }

    public function menu1Action()
    {
        $categories = Categories::find();
        $this->view->categories = $categories;

        $phql = "SELECT pro.id, pro.name, pro.description, pro.price, cat.id AS cat_id, cat.name AS cat_name, cat.description AS cat_des
                 FROM Cafe\Models\Products AS pro
                 INNER JOIN Cafe\Models\Categories AS cat
                 ON pro.category_id = cat.id
                 ORDER BY cat.id asc";

        $query = $this->modelsManager->createQuery($phql);
        $products = $query->execute();
        //var_dump($products);exit;
        $this->view->products = $products;
    }

    public function galleryAction()
    {}

    public function contactAction()
    {}
}
