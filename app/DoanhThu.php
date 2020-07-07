<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DoanhThu extends Model
{
    public $table = "thongke";
    protected $primaryKey='id';
    protected $fillable=['tháng','doanh thu'];
}
