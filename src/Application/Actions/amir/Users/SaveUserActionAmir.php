<?php
declare(strict_types=1);
namespace App\Application\Actions\amir\Users;


use Slim\Psr7\Response;
// use App\Models\Amir\UserModelAmir;
use App\Application\Actions\Action;
use App\Models\amir\UserModelAmir;
// use App\RequestValidators\amir\AddUserRequestValidator;
use App\RequestValidators\amir\AddUserRequestValidatorAmir;

class SaveUserActionAmir extends Action {
    protected function action(): Response
    {
        $data = $this->request->getParsedBody();
        $data = $this->requestValidatorFactory->make(AddUserRequestValidatorAmir::class)->validate($data);
        UserModelAmir::save($data);
        return $this->view->render(
            $this->response,
            'amir/users/add_user.twig'
        );
    }
}