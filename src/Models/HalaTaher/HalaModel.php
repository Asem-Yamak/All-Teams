<?php
namespace App\Models\HalaTaher;

use App\Models\Model;

class HalaModel {
    public static function  all() : array {
        $sql = "SELECT *  FROM public.user";
        return Model::query_get($sql);
    }

    public static function save(array $data) : array {
        $sql = "INSERT INTO public.users(
                    name, age)
                    VALUES ( ?, ?)";
        return Model::query_set($sql,[$data['name'], $data['age']]);
    }
}