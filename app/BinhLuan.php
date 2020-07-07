<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BinhLuan extends Model
{
    public $table = "binhluan";
    protected $primaryKey='id';
    protected $fillable=['id_nguoidung','id_sanpham','noidung'];
}
