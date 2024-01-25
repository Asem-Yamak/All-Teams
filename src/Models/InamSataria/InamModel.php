<?php
namespace App\Models\InamSataria;

use App\Models\Model;

class InamModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}