<?php
namespace App\Models\Amir;

use App\Models\Model;

class amirModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}