<?php
declare(strict_types=1);
namespace App\Application\Actions\Shorouq;


use Slim\Psr7\Response;
use App\Models\Shorouq\TestModel;

use App\Application\Actions\Action;

class TestActionShoq extends Action {
    protected function action(): Response
    {
        $data = TestModel::all();

        return $this->view->render(
            $this->response,
            'Shorouq/test.twig',
            ['all'=>$data['result']]
            
        );
    }
}