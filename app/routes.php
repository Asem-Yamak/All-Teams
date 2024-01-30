<?php

declare(strict_types=1);
use Slim\App;
use App\Application\Actions\Majd\Majd;

use App\Application\Actions\Majd\test;
use App\Application\Actions\Amir\AddBook;
use App\Domain\BicBucStriim\AppConstants;
use App\Application\Actions\amal\AddAction;
use App\Application\Actions\Amir\AmirAction;
<<<<<<< HEAD


use App\Application\Actions\Amir\SaveAddBook;
=======
//use App\Application\Actions\AsemYamak\addAction;

>>>>>>> 81ec16b1f4b014196949a2ffbbf11c67dc4d04d4
use App\Application\Actions\AsemYamak\HalaTaher;
use App\Application\Actions\AsemYamak\TestAction;
use App\Application\Actions\HalaTaher\HalaAction;

use App\Application\Actions\InamSataria\InamAction;
use App\Application\Actions\Shorouq\TestActionShoq;
<<<<<<< HEAD






=======
>>>>>>> 81ec16b1f4b014196949a2ffbbf11c67dc4d04d4
use Psr\Http\Message\ResponseInterface as Response;


use App\Application\Actions\AsemYamak\AddBookAction;
<<<<<<< HEAD
=======

use App\Application\Actions\AsemYamak\SaveBookAction;






>>>>>>> 81ec16b1f4b014196949a2ffbbf11c67dc4d04d4
use App\Application\Actions\LameesAbuZahid\TestActionL;
use Psr\Http\Message\ServerRequestInterface as Request;






use App\Application\Actions\LameesAbuZahid\AddBookActionL;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;
use App\Application\Actions\LameesAbuZahid\SaveBookActionL;

  

return function (App $app) {
    $app->options('/{routes:.*}', function (Request $request, Response $response) {
        // CORS Pre-Flight OPTIONS Request Handler
        return $response;
    });
    
/**
 * 
 */

    
    
    $app->get('/inam/test', InamAction::class);

    $app->group('/amir', function (Group $group) {
        $group->get('/list', TestAction::class);
        $group->get('/add', AddBook::class);
        $group->post('/add', SaveAddBook::class);
     });

    $app->get('/Majd/list', Majd::class);

    $app->get('/HalaTaher/list', HalaAction::class);

    $app->get('/shorouq/list', TestActionShoq::class);

     $app->group('/asemyamak', function (Group $group) {
        $group->get('/list', TestAction::class);
        $group->get('/add', AddBookAction::class);
        $group->post('/add', SaveBookAction::class);
     });

     $app->group('/amal', function (Group $group) {
//        $group->get('/list', TestAction::class);
        $group->get('/add', AddAction::class);
     });
     $app->group('/LameesAbuZahid', function (Group $group) {
        $group->get('/list', TestActionL::class);
        $group->get('/add', AddBookActionL::class);
        $group->post('/add', SaveBookActionL::class);
     });

};





