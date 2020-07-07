<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableMagiamgia extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('magiamgia', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('magiamgia');
            $table->integer('sotien');
            $table->string('loai');
            $table->date('thoihan');
            $table->tinyInteger('trangthai');
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
        Schema::dropIfExists('magiamgia');
    }
}
