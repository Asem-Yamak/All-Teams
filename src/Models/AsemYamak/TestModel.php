<?php
namespace App\Models\AsemYamak;

use App\Models\Model;

class TestModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
    public static function  save(string $name,string $des) : array {
        $sql = "INSERT INTO public.books(name, description)
                    VALUES (?, ?)";
        return Model::query_set($sql,[$name, $des]);
    }
}