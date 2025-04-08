<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Tipo_personalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('tipo_personal')->insert([
            'id' => 1,
            'desctipo_personal' => 'Administrador',
        ]);
        DB::table('tipo_personal')->insert([
            'id' => 2,
            'desctipo_personal' => 'Entrenador',
        ]);
    }
}
