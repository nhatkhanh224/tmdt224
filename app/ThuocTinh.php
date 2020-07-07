<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThuocTinh extends Model
{
    protected $table = "thuoctinh";
    protected $primaryKey='id';
    protected $fillable=['id_sanpham','ma_sanpham','size','giatien','cannang','soluong','anh'];
  	
}
