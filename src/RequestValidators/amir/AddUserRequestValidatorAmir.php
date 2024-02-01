<?php

declare(strict_types=1);

namespace App\RequestValidators\amir;

use PDO;
use Valitron\Validator;

use App\Contracts\LookupsInterface;
use App\Exception\ValidationException;
use App\Contracts\RequestValidatorInterface;
use App\Contracts\UserProviderServiceInterface;

class AddUserRequestValidatorAmir implements RequestValidatorInterface
{
    public function __construct(private readonly LookupsInterface $lookups, private readonly UserProviderServiceInterface $UserProviderService)
    {
    }

    public function validate(array $data): array
    {
        $v = new Validator($data);
        

        $v->rule('required', ['name', 'email', 'age']);
        $v->rule('email', 'email');

        $v->labels(array(
            'name' => 'اسم المستخدم',
            'age' => 'العمر',
        ));


        if (!$v->validate()) {

            throw new ValidationException($v->errors());
        }

        return $data;
    }
}
