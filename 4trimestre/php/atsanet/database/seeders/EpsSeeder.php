<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EpsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('eps')->insert([
            ['desceps' => 'Sura'],
            ['desceps' => 'Coomeva'],
            ['desceps' => 'Compensar'],
            ['desceps' => 'Sanitas'],
            ['desceps' => 'Famisanar'],
            ['desceps' => 'Cafesalud'],
            ['desceps' => 'Salud Total'],
            ['desceps' => 'Medimás'],
            ['desceps' => 'Nueva eps'],
            ['desceps' => 'Coosalud'],
        ]);

    }
}
