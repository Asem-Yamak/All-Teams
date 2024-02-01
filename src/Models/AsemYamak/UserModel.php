<?php
namespace App\Models\HalaTaher;

use App\Models\Model;

class UserModel {
    public static function  all() : array {
        $sql = "SELECT id, name, age
                    FROM public.users";
        return Model::query_get($sql);
    }
    public static function save(array $data) : array {
        $sql = "INSERT INTO public.users(
                    name, age)
                    VALUES ( ?, ?)";
        return Model::query_set($sql,[$data['name'], $data['age']]);
    }
}