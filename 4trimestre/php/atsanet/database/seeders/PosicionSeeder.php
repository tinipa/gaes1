<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PosicionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('posicion')->insert([
            ['descposicion' => 'Portero'],
            ['descposicion' => 'Delantero Extremo'],
            ['descposicion' => 'Delantero Central'],
            ['descposicion' => 'Defensor Lateral'],
            ['descposicion' => 'Defensor Central'],
            ['descposicion' => 'Centrocampista Ofensivo'],
            ['descposicion' => 'Centrocampista Defensivo'],
        ]);
    }
}
