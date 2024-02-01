<?php
declare(strict_types=1);
namespace App\Application\Actions\amir\Users;


use Slim\Psr7\Response;
// use App\Models\amir\UserModel;
use App\Models\amir\UserModelAmir;
use App\Application\Actions\Action;

class ListUserActionAmir extends Action {
    protected function action(): Response
    {
        $data = UserModelAmir::all();
        return $this->view->render(
            $this->response,
            'amir/users/list_user.twig',
            ['users' =>$data['result']]
        );
    }
}