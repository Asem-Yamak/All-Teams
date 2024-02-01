<?php
declare(strict_types=1);
namespace App\Application\Actions\AsemYamak\Users;


use Slim\Psr7\Response;
use App\Application\Actions\Action;
use App\Models\AsemYamak\UserModel;
use App\RequestValidators\AsemYamak\AddUserRequestValidator;

class SaveUserAction extends Action {
    protected function action(): Response
    {
        $data = $this->request->getParsedBody();
        $data = $this->requestValidatorFactory->make(AddUserRequestValidator::class)->validate($data);
        UserModel::save($data);
        return $this->view->render(
            $this->response,
            'amir/users/add_user.twig'
        );
    }
}