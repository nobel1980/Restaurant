<?php
namespace Cafe\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use \DataTables\DataTable;
use Phalcon\Mvc\Model\Resultset\Simple as Resultset;


class InformationsController extends ControllerBase
{

    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    public function indexAction()
    {
        if ($this->request->isAjax()) {
            $musers  = $this->modelsManager->createQuery("
            SELECT MOBILE_NO,DESIG_NAME, EMP_ID_NO, NAME, CEILING, SIM_STATUS, EMPLOYEE_STATUS
            FROM Cafe\Models\MobileUsers musers
            WHERE SALARY_STATUS = 1 OR SALARY_STATUS= 2
            ORDER BY SIM_STATUS ASC
            ")
                ->execute();
            //var_dump($musers);exit;
            $dataTables = new DataTable();
            $dataTables->fromResultSet($musers)->sendResponse();
        }
    }

    public function findAction(){
        if ($this->request->isAjax()) {
            $off  = $this->modelsManager->createQuery("
            SELECT off.id, off.name, CONCAT (off.address1,',',  off.address2) AS address,
            thana.name AS thana, dist.name AS district
            FROM Cafe\Models\offices off
            INNER JOIN  Cafe\Models\subdistricts thana
                              ON  off.sub_id = thana.id
            INNER JOIN  Cafe\Models\districts dist
                              ON  off.dis_id = dist.id
                            ORDER BY off.parent_id ASC
            ")
                ->execute();
            $dataTables = new DataTable();
            $dataTables->fromResultSet($off)->sendResponse();
        }
    }

    public function emailUsersAction()
    {
        if ($this->request->isAjax()) {
            $mailusers  = $this->modelsManager->createQuery("
            SELECT emp_id, emp_name, email_add, email_pass, status
            FROM Cafe\Models\EmailUsers emailusers
            ")
                ->execute();
            //var_dump($mailusers);exit;
            $dataTables = new DataTable();
            $dataTables->fromResultSet($mailusers)->sendResponse();
        }
    }
}