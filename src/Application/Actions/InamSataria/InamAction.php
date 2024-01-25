<?php
declare(strict_types=1);
namespace App\Application\Actions\InamSataria;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

use App\Models\InamSataria\InamModel;

class InamAction extends Action {
    protected function action(): Response
    {
        $data = InamModel::all();

        return $this->view->render(
            $this->response,
            'inam/inam.twig',
            ['all'=>$data['result']]
        );
    }
}