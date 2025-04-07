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
        Schema::create('persona', function (Blueprint $table) {
            $table->increments('id')->unsigned()->primary();
            $table->integer('id_persona');
            $table->string('tipo_id', 12);
            $table->string('nombres', 50);
            $table->string('apellidos', 50);
            $table->tinyInteger('edad_persona');
            $table->string('direccion_persona', 100);
            $table->bigInteger('telefono_persona');
            $table->string('email_persona', 50);

            $table->integer('genero_id_genero')->unsigned();
            $table->integer('eps_id_eps')->unsigned();
            $table->integer('rh_id_rh')->unsigned();

            //RELACIONES FORANEAS
            $table->foreign('genero_id_genero')->references('id')->on('genero');
            $table->foreign('eps_id_eps')->references('id')->on('eps');
            $table->foreign('rh_id_rh')->references('id')->on('rh');
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('persona');
    }
};
