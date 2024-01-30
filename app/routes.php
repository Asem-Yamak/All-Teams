<?php

declare(strict_types=1);
use App\Application\Actions\Majd\Majd;
use Slim\App;

use App\Application\Actions\Amir\AmirAction;
use App\Domain\BicBucStriim\AppConstants;
use App\Application\Actions\AsemYamak\TestAction;
use App\Application\Actions\Shorouq\TestActionShoq;
use App\Application\Actions\LameesAbuZahid\TestActionL;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Interfaces\RouteCollectorProxyInterface as Group;

use App\Application\Actions\AsemYamak\HalaTaher;
use App\Application\Actions\HalaTaher\HalaAction;

use App\Application\Actions\InamSataria\InamAction;






use App\Application\Actions\Majd\test;

  

return function (App $app) {
    $app->options('/{routes:.*}', function (Request $request, Response $response) {
        // CORS Pre-Flight OPTIONS Request Handler
        return $response;
    });

/**
 * 
 */

    $app->get('/asemyamak/list', TestAction::class);
    $app->get('/LameesAbuZahid/list', TestActionL::class);
    $app->get('/inam/test', InamAction::class);

    $app->get('/amir/list', AmirAction::class);

    $app->get('/Majd/list', Majd::class);

    $app->get('/HalaTaher/list', HalaAction::class);

    $app->get('/shorouq/list', TestActionShoq::class);

    // $app->group('/asemyamak', function (Group $group) {
    // });
//
};





