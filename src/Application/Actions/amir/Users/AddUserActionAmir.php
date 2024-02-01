<?php
declare(strict_types=1);
namespace App\Application\Actions\amir\Users;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddUserActionAmir extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'amir/users/add_user.twig'
        );
    }
}