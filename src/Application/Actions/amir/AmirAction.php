<?php
declare(strict_types=1);
namespace App\Application\Actions\Amir;


use App\Models\Amir\amirModel;
use Slim\Psr7\Response;
use App\Models\Amir\Model;

use App\Application\Actions\Action;
use App\Models\AsemYamak\TestModel;

class AmirAction extends Action {
    protected function action(): Response
    {
        $data = amirModel::all();

        return $this->view->render(
            $this->response,
            'amir/amirtest.twig',
            ['all'=>$data['result']]
        );
    }
}