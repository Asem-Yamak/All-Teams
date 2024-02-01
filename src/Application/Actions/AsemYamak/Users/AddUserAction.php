<?php
declare(strict_types=1);
namespace App\Application\Actions\AsemYamak\Users;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddUserAction extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'asem/users/add_user.twig'
        );
    }
}