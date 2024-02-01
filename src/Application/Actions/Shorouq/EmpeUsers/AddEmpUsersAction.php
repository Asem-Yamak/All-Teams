<?php
declare(strict_types=1);
namespace App\Application\Actions\Shorouq\EmpeUsers;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddEmpUsersAction extends Action {
    protected function action(): Response
    {

        
        return $this->view->render(
            $this->response,
            'Shorouq/addempusers.twig'
        );
    }
}