<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('alumno', function (Blueprint $table) {
            //campo foreign de la tabla persona
            $table->integer('persona_id_persona')->unsigned();
            $table->string('pie_dominate', 10);
             //campo foreign de la tabla acudiente
            $table->integer('acudiente_id_alumno')->unsigned();
            $table->string('parentezco_alumno', 11);
             //campo foreign de la tabla posicion
            $table->string('posicion_id_posicion', 6);
            //campo foreign de la tabla categoria
            $table->tinyInteger('categoria_id_categoria')->unsigned();


            //RELACIONES FORANEAS
            $table->foreign('persona_id_persona')->references('id_persona')->on('persona');
            $table->foreign('acudiente_id_alumno')->references('id_acudiente')->on('acudiente');
            $table->foreign('posicion_id_posicion')->references('id_posicion')->on('posicion');
            $table->foreign('categoria_id_categoria')->references('id_categoria')->on('categoria');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alumno');
    }
};
