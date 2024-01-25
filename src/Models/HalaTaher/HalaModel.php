<?php
namespace App\Models\HalaTaher;

use App\Models\Model;

class HalaModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}