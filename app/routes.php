<?php

declare(strict_types=1);
use Slim\App;
use App\Application\Actions\Majd\Majd;
use App\Application\Actions\Majd\test;

use App\Application\Actions\Amir\AddBook;

use App\Domain\BicBucStriim\AppConstants;

use App\Application\Actions\amal\AddAction;
use App\Application\Actions\Amir\AmirAction;
use App\Application\Actions\Amir\SaveAddBook;

use App\Application\Actions\AsemYamak\HalaTaher;
use App\Application\Actions\AsemYamak\TestAction;
use App\Application\Actions\HalaTaher\HalaAction;


use App\Application\Actions\InamSataria\InamAction;
use App\Application\Actions\Shorouq\TestActionShoq;
use Psr\Http\Message\ResponseInterface as Response;


use App\Application\Actions\AsemYamak\AddBookAction;


use App\Application\Actions\AsemYamak\SaveBookAction;
use App\Application\Actions\LameesAbuZahid\TestActionL;
use Psr\Http\Message\ServerRequestInterface as Request;


use App\Application\Actions\AsemYamak\Users\AddUserAction;
use App\Application\Actions\LameesAbuZahid\AddBookActionL;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;
use App\Application\Actions\AsemYamak\Users\ListUserAction;
use App\Application\Actions\AsemYamak\Users\SaveUserAction;
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



     $app->group('/LameesAbuZahid', function (Group $group) {
        $group->get('/list', TestActionL::class);
        $group->get('/add', AddBookActionL::class);
        $group->post('/add', SaveBookActionL::class);
     });

    $app->group('/shorouq', function (Group $group) {
        $group->get('/list', TestActionShoq::class);
        $group->get('/add', AddBookAction::class);
        $group->Post('/add', SaveBookAction::class);
       
     });


     $app->group('/amir', function (Group $group) {
         $group->get('/list', TestAction::class);
         $group->get('/add', AddBook::class);
         $group->post('/add', SaveAddBook::class);
      });
 
     $app->get('/Majd/list', Majd::class);
 
     $app->get('/HalaTaher/list', HalaAction::class);
 
 
      $app->group('/asemyamak', function (Group $group) {
         $group->get('/list', TestAction::class);
         $group->get('/add', AddBookAction::class);
         $group->post('/add', SaveBookAction::class);
         $group->get('/user/add', AddUserAction::class);
         $group->post('/user/add', SaveUserAction::class);
         $group->get('/user/list', ListUserAction::class);

      });
 
      $app->group('/amal', function (Group $group) {
 //        $group->get('/list', TestAction::class);
         $group->get('/add', AddAction::class);
      });
      
 


};

