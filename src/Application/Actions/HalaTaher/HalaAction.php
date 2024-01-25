<?php
declare(strict_types=1);
namespace App\Application\Actions\HalaTaher;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

use App\Models\HalaTaher\HalaModel;

class HalaAction extends Action {
    protected function action(): Response
    {
      
        $data = HalaModel::all();

        return $this->view->render(
            $this->response,
            'HalaTaher/HalaView.twig',
            ['all'=>$data['result']]
        );
    }
}