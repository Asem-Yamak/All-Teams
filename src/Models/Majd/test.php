<?php
namespace App\Models\Majd;

use App\Models\Model;

class test {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}