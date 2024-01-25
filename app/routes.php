<?php

declare(strict_types=1);
use App\Application\Actions\Majd\Majd;
use Slim\App;

use App\Application\Actions\Amir\AmirAction;
use App\Domain\BicBucStriim\AppConstants;
use App\Application\Actions\AsemYamak\TestAction;
use Psr\Http\Message\ResponseInterface as Response;



use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;



<<<<<<< HEAD
=======
use App\Application\Actions\AsemYamak\TestAction;
use App\Application\Actions\Majd\test;



>>>>>>> c4ab680f7e9e6043a1f9529a339167c3ed8d27bf
return function (App $app) {
    $app->options('/{routes:.*}', function (Request $request, Response $response) {
        // CORS Pre-Flight OPTIONS Request Handler
        return $response;
    });



    $app->get('/asemyamak/list', TestAction::class);
<<<<<<< HEAD
    $app->get('/amir/list', AmirAction::class);
=======
    $app->get('/Majd/list', Majd::class);
>>>>>>> c4ab680f7e9e6043a1f9529a339167c3ed8d27bf


    // $app->group('/asemyamak', function (Group $group) {
    // });

};


