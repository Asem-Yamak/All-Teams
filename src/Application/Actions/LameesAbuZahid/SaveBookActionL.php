<?php
declare(strict_types=1);
namespace App\Application\Actions\LameesAbuZahid;


use Slim\Psr7\Response;
use App\Application\Actions\Action;
use App\Models\LameesAbuZahid\TestModel;
use App\RequestValidators\LameesAbuZahid\AddBookRequestValidator;

class SaveBookActionL extends Action {
    protected function action(): Response
    {
        //dd('saveBookAction');
        //$data=$this->request->getParsedBody();
        //dd($data);
        $data = $this->request->getParsedBody();
        $data = $this->requestValidatorFactory->make(AddBookRequestValidator::class)->validate($data);

        TestModel::save($data['name'], $data['description']);
        return $this->view->render(
            $this->response,
            'LameesAbuZahid/add_book.twig'
        );
    }
}