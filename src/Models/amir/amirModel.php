<?php
namespace App\Models\Amir;

use App\Models\Model;

class amirModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
    public static function  save(string $name,string $des ) : array {
        $sql = "INSERT INTO public.books(
            name, description)
            VALUES (?, ?)";
        return Model::query_set($sql, [$name, $des]);
    }
}