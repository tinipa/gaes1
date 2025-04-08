<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RhSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('rh')->insert([
            ['descrh' => 'A+'],
            ['descrh' => 'A-'],
            ['descrh' => 'B+'],
            ['descrh' => 'B-'],
            ['descrh' => 'O+'],
            ['descrh' => 'O-'],
            ['descrh' => 'AB+'],
            ['descrh' => 'AB-'],
        ]);
    }
}
