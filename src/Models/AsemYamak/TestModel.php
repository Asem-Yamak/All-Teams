<?php
namespace App\Models\AsemYamak;

use App\Models\Model;

class TestModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}