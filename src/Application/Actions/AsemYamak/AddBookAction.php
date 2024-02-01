<?php
declare(strict_types=1);
namespace App\Application\Actions\AsemYamak;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddBookAction extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'asem/add_book.twig'
        );
    }
}