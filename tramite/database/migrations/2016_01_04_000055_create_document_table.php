<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document', function (Blueprint $table) {
            $table->increments('id');
            $table->string('asunto');
            $table->enum('estado', ['Recibido','Enviado','Solucionado']);
            $table->integer('folios');
            $table->string('name');
            $table->string('detalle');
            $table->integer('user_id')->unsigned();

            $table->foreign('user_id')->references('id')->on('office');
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
        Schema::drop('document');
    }
}
