<?php
namespace App\Models\amir;

use App\Models\Model;

class UserModelAmir {
    public static function  all() : array {
        $sql = "SELECT id, name, email, age
                    FROM public.usersamir";
        return Model::query_get($sql);
    }
    public static function save(array $data) : array {
        $sql = "INSERT INTO public.usersamir(
                    name, email, age)
                    VALUES ( ?, ?, ?)";
        return Model::query_set($sql,[$data['name'], $data['email'], $data['age']]);
    }
}