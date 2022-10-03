<?php

namespace Cafe\Controllers;

use Phalcon\Tag,
    Phalcon\Mvc\Model\Criteria,
    Phalcon\Http\Response,
    Phalcon\Paginator\Adapter\Model as Paginator;

use Cafe\Forms\CategoriesForm;
use Cafe\Models\Categories;


class CategoriesController extends ControllerBase
{

    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    public function indexAction()
    {
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
        $categories = Categories::find();

        $paginator = new Paginator(array(
            "data" => $categories,
            "limit" => 10,
            "page" => $numberPage
        ));
        $this->view->page = $paginator->getPaginate();
    }

    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Cafe\Models\Categories', $this->request->getPost());
            $this->persistent->searchParams = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = array();
        if ($this->persistent->searchParams) {
            $parameters = $this->persistent->searchParams;
        }

        $categories = Categories::find($parameters);
        if (count($categories) == 0) {
            $this->flash->notice("The search did not find any Category");
            return $this->dispatcher->forward(array(
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $categories,
            "limit" => 10,
            "page" => $numberPage
        ));
        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Creates a Content Type
     *
     */
    public function createAction()
    {
        if ($this->request->isPost()) {

            $categories = new Categories();

            $categories->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'description' => $this->request->getPost('description', 'striptags'),
                'active' => $this->request->getPost('active'),
            ));

            if (!$categories->save()) {
                $this->flash->error($categories->getMessages());
            } else {

                $this->flash->success("Category was created successfully");

                /*Tag::resetInput();*/
            }
        }

        $this->view->form = new CategoriesForm(null);
    }

    /**
     * Saves the user from the 'edit' action
     *
     */
    public function editAction($id)
    {

        $categories = Categories::findFirstById($id);
        if (!$categories) {
            $this->flash->error("Category was not found");
            return $this->dispatcher->forward(array('action' => 'index'));
        }

        if ($this->request->isPost()) {
            //$id = $this->request->getPost('id', 'int');

            $categories->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'description' => $this->request->getPost('description', 'striptags'),
                'active' => $this->request->getPost('active'),
            ));

            if (!$categories->save()) {
                $this->flash->error($categories->getMessages());
            } else {

                $this->flash->success("Categroy was updated successfully");

               /* Tag::resetInput();*/
            }

        }

        $this->view->form = new CategoriesForm($categories, array('edit' => true));
    }

    /**
     * Deletes a User
     *
     * @param int $id
     */
    public function deleteAction($id)
    {

//        $user = Domains::findFirstById($id);
//        if (!$user) {
//            $this->flash->error("Lookup Types was not found");
//            return $this->dispatcher->forward(array('action' => 'index'));
//        }
//
//        if (!$user->delete()) {
//            $this->flash->error($user->getMessages());
//        } else {
//            $this->flash->success("Lookup Types was deleted");
//        }

        return $this->dispatcher->forward(array('action' => 'index'));
    }
}

