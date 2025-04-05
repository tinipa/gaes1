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
        Schema::create('personal_t', function (Blueprint $table) {
             //campo foreign de la tabla persona
             $table->integer('persona_id_persona')->unsigned();
             $table->string('password_personal_t', 20);
             //campo foreign de la tabla tipo persona
             $table->integer('tipo_personal_fk')->unsigned(); 
 
 
             $table->foreign('persona_id_persona')->references('id_persona')->on('persona');
             $table->foreign('tipo_personal_fk')->references('id_tipo_personal')->on('tipo_personal');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('personal_t');
    }
};
