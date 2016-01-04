<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSeguimientoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('seguimiento', function (Blueprint $table) {
            $table->increments('id');
            $table->enum('estado', ['ENVIADO','RECIBIDO','ELIMINADO'])->default('RECIBIDO');
            $table->integer('document_id')->unsigned();
            $table->integer('office_id')->unsigned();
            $table->integer('user_id')->unsigned();

            $table->foreign('document_id')->references('id')->on('document');
            $table->foreign('office_id')->references('id')->on('office');
            $table->foreign('user_id')->references('id')->on('users');

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
        Schema::drop('seguimiento');
    }
}
