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
            $table->integer('id_persona')->unsigned()->primary();
            $table->string('tipoId', 12);
            $table->string('nombres', 50);
            $table->string('apellidos', 50);
            $table->tinyInteger('edad_persona');
            $table->string('direccion_persona', 100);
            $table->bigInteger('telefono_persona');
            $table->string('email_persona', 50);
            //campo foreign de la tabla genero
            $table->tinyInteger('genero_id_genero');
            //campo foreign de la tabla eps
            $table->tinyInteger('eps_id_eps');
            //campo foreign de la tabla rh
            $table->tinyInteger('rh_id_rh');


            $table->foreign('genero_id_genero')->references('id_genero')->on('genero');
            $table->foreign('eps_id_eps')->references('id_eps')->on('eps');
            $table->foreign('rh_id_rh')->references('id_rh')->on('rh');
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
