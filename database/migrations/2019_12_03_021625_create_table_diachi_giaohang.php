<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableDiachiGiaohang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diachi_giaohang', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_nguoidung');
            $table->string('email_nguoidung');
            $table->string('ten');
            $table->string('diachi');
            $table->string('sdt');
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
        Schema::dropIfExists('diachi_giaohang');
    }
}
