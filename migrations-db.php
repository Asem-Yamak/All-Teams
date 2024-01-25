<?php

use Doctrine\DBAL\DriverManager;

return DriverManager::getConnection([
    'dbname' => 'hr',
    'user' => 'root',
    'password' => 'root',
    'host' => 'postgresql',
    'port' => 5432,
    'charset'  => 'utf8mb4',
    'driver' => 'pgsql',
    'schema'   => 'public',
]);