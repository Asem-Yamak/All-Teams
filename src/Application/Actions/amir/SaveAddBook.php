<?php
declare(strict_types=1);
namespace App\Application\Actions\Amir;


use Slim\Psr7\Response;
use App\Models\Amir\amirModel;
use App\Application\Actions\Action;
use App\Application\Actions\Amir\SaveAddBook;
use phpDocumentor\Reflection\DocBlock\Description;

class SaveAddBook extends Action {
    protected function action(): Response
    {
        // dd("save Action");

        $data= $this->request->getParsedBody();
        // dd($data); 
        amirModel::save($data['name'],$data['description']);
        return $this->view->render(
            $this->response,
            'amir/add_book.twig'
        );
    }
    
}