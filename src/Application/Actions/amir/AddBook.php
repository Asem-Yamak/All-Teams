<?php
declare(strict_types=1);
namespace App\Application\Actions\Amir;


use Slim\Psr7\Response;
use App\Application\Actions\Action;
use App\Application\Actions\Amir\AddBookAction;

class AddBook extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'amir/add_book.twig'
        );
    }
    
}