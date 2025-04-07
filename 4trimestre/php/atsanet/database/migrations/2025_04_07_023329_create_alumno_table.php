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
            $table->integer('id')->unsigned()->primary();
            $table->string('pie_dominante', 10);

            $table->string('nombres_acudiente', 20);
            $table->string('apellidos_acudiente', 20);
            $table->bigInteger('telefono_acudiente');
            $table->string('parentesco_alumno', 11);

            $table->integer('posicion_id_posicion')->unsigned();
            $table->integer('categoria_id_categoria')->unsigned();

            //RELACIONES FORANEAS
            $table->foreign('id')->references('id')->on('persona');
            $table->foreign('posicion_id_posicion')->references('id_posicion')->on('posicion');
            $table->foreign('categoria_id_categoria')->references('id')->on('categoria');
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
