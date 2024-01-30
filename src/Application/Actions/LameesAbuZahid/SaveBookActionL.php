<?php
declare(strict_types=1);
namespace App\Application\Actions\LameesAbuZahid;


use App\Models\LameesAbuZahid\TestModel;
use Slim\Psr7\Response;
use App\Application\Actions\Action;

class SaveBookActionL extends Action {
    protected function action(): Response
    {
        //dd('saveBookAction');
        $data=$this->request->getParsedBody();
        dd($data);
        TestModel::save($data['name'],$data['description']);
        return $this->view->render(
            $this->response,
            'LameesAbuZahid/add_book.twig'
        );
    }
}