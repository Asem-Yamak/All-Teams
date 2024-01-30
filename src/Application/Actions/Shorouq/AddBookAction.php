<?php
declare(strict_types=1);
namespace App\Application\Actions\Shorouq;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddBookAction extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'Shorouq/add_book.twig'
        );
    }
}