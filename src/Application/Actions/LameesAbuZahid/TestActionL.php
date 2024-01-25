<?php
declare(strict_types=1);
namespace App\Application\Actions\LameesAbuZahid;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

use App\Models\LameesAbuZahid\TestModel;


class TestActionL extends Action {
    protected function action(): Response
    {
        $data = TestModel::all();

        return $this->view->render(
            $this->response,
            'LameesAbuZahid/test.twig',
            ['all'=>$data['result']]
        );
    }
}