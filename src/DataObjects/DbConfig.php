<?php

declare(strict_types=1);

namespace App\DataObjects;

use App\Enum\SameSite;

/**
 * Summary of SessionConfig
 */
class DbConfig
{
    public function __construct(
        public readonly string $driver      = 'pgsql',
        public readonly string $host        = 'postgresql',
        public readonly int    $port        = 5432,
        public readonly string $database    = 'hr',
        public readonly string $username    = 'root',
        public readonly string $password    = 'root',
        public readonly string $prefix      = '',
        public readonly string $charset     = 'utf8mb4',
        public readonly string $schema      = 'public',
    ) {

    }
}
