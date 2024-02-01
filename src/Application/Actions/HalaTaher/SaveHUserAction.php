<?php
declare(strict_types=1);
namespace App\Application\Actions\HalaTaher;


use Slim\Psr7\Response;
use App\Application\Actions\Action;
use App\Models\HalaTaher\HalaModel;
use App\RequestValidators\Hala\AddUserRequestValidator;

class SaveUserAction extends Action {
    protected function action(): Response
    {
        $data = $this->request->getParsedBody();
        $data = $this->requestValidatorFactory->make(AddUserRequestValidator::class)->validate($data);
        HalaModel::save($data);
        return $this->view->render(
            $this->response,
            'HalaTaher/HUsers/add_H_user.twig'
        );
    }
}