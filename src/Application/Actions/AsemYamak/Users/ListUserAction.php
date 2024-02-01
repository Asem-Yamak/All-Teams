<?php
declare(strict_types=1);
namespace App\Application\Actions\AsemYamak\Users;


use App\Models\AsemYamak\UserModel;
use Slim\Psr7\Response;
use App\Application\Actions\Action;

class ListUserAction extends Action {
    protected function action(): Response
    {
        $data = UserModel::all();
        return $this->view->render(
            $this->response,
            'asem/users/list_user.twig',
            ['users' =>$data['result']]
        );
    }
}