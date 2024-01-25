<?php

declare(strict_types=1);

namespace App\Contracts;

use App\DataObjects\RegisterUserData;

interface AuthInterface
{
    public function user(): ?array;

    public function attemptLogin(array $credentials): bool;

    public function checkCredentials(array $user, array $credentials): bool;
    public function changeCredentials(string $credentials): string;

    public function loginOS(
        $employee_os_id,
        $role_id,
        $os_id,
        $permissions,
        $hasMultiOS,
        $job_id,
        $job_title,
        $is_sup,
        $parent_id,
        $node_level,
        $dept_type,
        $os_name
    ): array;

    public function logOut(): void;

    public function logIn(array $user): void;

    public function logOutOS(): void;
}
