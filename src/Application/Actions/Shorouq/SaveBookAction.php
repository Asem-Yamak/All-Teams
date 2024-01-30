<?php
declare(strict_types=1);
namespace App\Application\Actions\Shorouq;


use Slim\Psr7\Response;
use App\Application\Actions\Action;
use App\Models\Shorouq\TestModel;

class SaveBookAction extends Action {
    protected function action(): Response
    {
        $data = $this->request->getParsedBody();
        TestModel::save($data['name'], $data['description']);
        //dd("insert");
        return $this->view->render(
            $this->response,
            'shorouq/add_book.twig'
        );
    }
}