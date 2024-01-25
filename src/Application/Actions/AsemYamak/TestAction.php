<?php
declare(strict_types=1);
namespace App\Application\Actions\AsemYamak;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

use App\Models\AsemYamak\TestModel;

class TestAction extends Action {
    protected function action(): Response
    {
        $data = TestModel::all();

        return $this->view->render(
            $this->response,
            'asem/test.twig',
            ['all'=>$data['result']]
        );
    }
}