<?php
declare(strict_types=1);
namespace App\Application\Actions\amal;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddAction extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'amal/add.twig'
        );
    }
}