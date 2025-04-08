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
            $table->integer('id')->unsigned()->primary();
            $table->string('password', 20);
            $table->integer('tipo_personal_fk')->unsigned(); 
 
            //RELACIONES FORANEAS
            $table->foreign('id')->references('id')->on('persona');
            $table->foreign('tipo_personal_fk')->references('id')->on('tipo_personal');
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
