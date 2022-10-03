<?php

namespace Cafe\Controllers;

use Phalcon\Tag,
    Phalcon\Mvc\Model\Criteria,
    Phalcon\Http\Response,
    Phalcon\Paginator\Adapter\Model as Paginator;

use Cafe\Forms\ProductsForm;
use Cafe\Models\Categories;
use Cafe\Models\Products;

class ProductsController extends ControllerBase
{

    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    public function indexAction()
    {
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
        $products = Products::find();

        $paginator = new Paginator(array(
            "data" => $products,
            "limit" => 10,
            "page" => $numberPage
        ));
        $this->view->page = $paginator->getPaginate();
    }

    public function searchAction()
    {

    }

    /**
     * Creates a Content Type
     *
     */

    public function createAction()
    {
        if ($this->request->isPost()) {

        $products = new Products();

            $products->assign([
            'name' => $this->request->getPost('name', 'striptags'),
            'description' => $this->request->getPost('description', 'striptags'),
            'category_id' => $this->request->getPost('category_id'),
            'price' => $this->request->getPost('price'),
            'active' => $this->request->getPost('active'),
            ]);

        if (!$products->save()) {
            $this->flash->error($products->getMessages());
        } else {

            $this->flash->success("Product was created successfully");

            /*Tag::resetInput();*/
        }
    }

        $this->view->form = new ProductsForm(null);
    }

    public function editAction($id)
    {
        $products = Products::findFirst('id='.$id);
        if (!$products) {
            $this->flash->error("Product was not found");
            return $this->dispatcher->forward(['action' => 'index']);
        }

        if ($this->request->isPost()) {
            $products->assign([
                'name' => $this->request->getPost('name', 'striptags'),
                'description' => $this->request->getPost('description', 'striptags'),
                'category_id' => $this->request->getPost('category_id'),
                'price' => $this->request->getPost('price'),
                'active' => $this->request->getPost('active'),
            ]);

            if (!$products->save()) {
                $this->flash->error($products->getMessages());
            } else {

                $this->flash->success("Product was updated successfully");
                return $this->response->redirect("products");
               // Tag::resetInput();
            }

        }
        $this->view->form = new ProductsForm($products, array('edit' => true));
    }

    /**
     * Deletes a
     *
     * @param int $id
     */

    public function deleteAction($id)
    {
        return $this->dispatcher->forward(array('action' => 'index'));
    }

    public function domain_name_by_id($id)
    {
       $domains = Categories::findFirst("id = '$id' and active='1'");

       return $domains->title;
    }

}