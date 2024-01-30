<?php
declare(strict_types=1);
namespace App\Application\Actions\LameesAbuZahid;


use Slim\Psr7\Response;
use App\Application\Actions\Action;

class AddBookActionL extends Action {
    protected function action(): Response
    {

        return $this->view->render(
            $this->response,
            'LameesAbuZahid/add_book.twig'
        );
    }
}