<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableThuoctinh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thuoctinh', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_sanpham');
            $table->string('ma_sanpham');
            $table->string('size');
            $table->float('giatien');
            $table->integer('soluong');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('thuoctinh');
    }
}
