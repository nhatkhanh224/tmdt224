<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $table = "order";
    protected $primaryKey='id';
    protected $fillable=['id_nguoidung','email_nguoidung','ten','diachi','sdt','tienship','magiamgia','sotien','trangthai','phuongthuc','tongtien'];
    public function order()
    {
    	return $this->hasMany('App\Order_SanPham','id_dathang');
    }
}
