<?php
namespace Cafe\Controllers;

use Cafe\Models\Banners;
use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Cafe\Forms\BannersForm;

class BannersController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    public function indexAction()
    {
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
        $banners= Banners::find(array(
            "order" => "id DESC"));

        $paginator = new Paginator(array(
            "data" => $banners,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }

    public function createAction()
    {
        $banners = Banners::find(
            [
                "conditions" => "isActive = 1"
            ]
        );
        $total= count($banners);
        $position = $total + 1;
        $this->view->form = new BannersForm(Null);

        if ($this->request->isPost()) {
            $banners = new Banners();
            $banners->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'isActive' => $this->request->getPost('isActive'),
                'level' => $position
            ));
            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/Banners/';

                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $banners->size = $file->getSize();
                    $banners->original_name = $file->getName();
                    $banners->file_name = $unique_filename;
                    $banners->extension = $file->getExtension();
                }

                if (!$banners->save()) {
                    $this->flash->error($banners->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Banner was created successfully");
                    return $this->response->redirect("banners");
                }
            }
        }
    }

    public function editAction($id)
    {
        $banners = Banners::findFirstById($id);

        if (!$banners) {
            $this->flash->error("Banner was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $banners->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'isActive' => $this->request->getPost('isActive')

            ));

            $tempfile =  $banners->file_name;
            $tempext =  $banners->extension;
            //add image
            if ($this->request->hasFiles(true)) {
                //var_dump($this->request->hasFiles());exit;
                $baseLocation = 'files/Banners/';
                $dumpLocation = 'files/Dump/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $banners->size = $file->getSize();
                    $banners->original_name = $file->getName();
                    $banners->file_name = $unique_filename;
                    $banners->extension = $file->getExtension();
                }

                if (!$banners->save()) {
                    $this->flash->error($banners->getMessages());
                } else {
                    rename("$baseLocation$tempfile.$tempext", "$dumpLocation$tempfile.$tempext");
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Banners  was update successfully");
                    return $this->response->redirect("banners");
                }
            }else{
                if (!$banners->save()) {
                    $this->flash->error($banners->getMessages());
                } else {
                    $this->flash->success("Banners  was update successfully");
                    return $this->response->redirect("banners");
                }
            }
        }

        $this->view->banners = $banners;

        $this->view->form = new BannersForm($banners, array(
            'edit' => true
        ));
    }

    public function deleteAction($id)
    {
        $banners = Banners::findFirstById($id);
        if (!$banners) {
            $this->flash->error("Banner was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$banners->delete()) {
            $this->flash->error($banners->getMessages());
        } else {
            $this->flash->success("Banner was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }

    public function get_random_filename()
    {
        $length = 20;
        $key = '';
        $keys = array_merge(range(0, 9), range('a', 'z'));

        for ($i = 0; $i < $length; $i++) {
            $key .= $keys[array_rand($keys)];
        }

        return $key;
    }

    public function sortAction()
    {
        $banners = Banners::find(array(
            "conditions" => "isActive = 1",
            "order" => "level ASC"
        ));
        $this->view->banners = $banners;
    }

    public function sortUpdateAction()
    {
        $i = 0;
        foreach ($this->request->getPost('level') as $key => $id) {
            $banners= Banners::findFirstById($id);
            $banners->level = $key;

            if (!$banners->save()) {
                $this->flash->error($banners->getMessages());
            } else {
                $this->flash->success("Banner was updated successfully");
            }
            $i++;
        }
    }
}
