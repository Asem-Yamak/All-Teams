<?php

declare(strict_types=1);
use Slim\App;


use App\Application\Actions\AsemYamak\HalaTaher;
use App\Application\Actions\AsemYamak\TestAction;
use App\Application\Actions\HalaTaher\HalaAction;



use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;



return function (App $app) {
    $app->options('/{routes:.*}', function (Request $request, Response $response) {
        // CORS Pre-Flight OPTIONS Request Handler
        return $response;
    });



    $app->get('/asemyamak/list', TestAction::class);

    $app->get('/HalaTaher/list', HalaAction::class);

    // $app->group('/asemyamak', function (Group $group) {
    // });

};


