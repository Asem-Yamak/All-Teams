<?php
declare(strict_types=1);
namespace App\Application\Actions\HalaTaher;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddHUserAction extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'HalaTaher/HUsers/add_H_user.twig'
        );
    }
}