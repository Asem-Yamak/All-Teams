<?php
declare(strict_types=1);
namespace App\Application\Actions\Majd;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

use App\Models\Majd\test;

class Majd extends Action {
    protected function action(): Response
    {
        $data = test::all();

        return $this->view->render(
            $this->response,
            'Majd/test.twig',
            ['all'=>$data['result']]
        );
    }
}