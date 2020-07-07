<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableGiohangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('giohang', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_sanpham');
            $table->string('ten_sanpham');
            $table->string('code_sanpham');
            $table->string('mau_sanpham');
            $table->string('size');
            $table->string('gia');
            $table->integer('soluong');
            $table->string('user_email');
            $table->string('session_id');




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
        Schema::dropIfExists('giohang');
    }
}
