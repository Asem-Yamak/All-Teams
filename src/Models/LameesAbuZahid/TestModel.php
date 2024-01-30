<?php
namespace App\Models\LameesAbuZahid;

use App\Models\Model;

class TestModel {
    public static function  all() : array {
        $sql = "SELECT * FROM public.books";
        return Model::query_get($sql);
    }
}