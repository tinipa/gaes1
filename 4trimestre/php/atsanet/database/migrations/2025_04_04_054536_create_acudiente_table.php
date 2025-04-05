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
        Schema::create('acudiente', function (Blueprint $table) {
            $table->integer('id_acudiente')->unsigned()->primary();
            $table->string('nombres_acu', 20);
            $table->string('apellidos_acu', 20);
            $table->bigInteger('telefono_acudiente');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('acudiente');
    }
};
