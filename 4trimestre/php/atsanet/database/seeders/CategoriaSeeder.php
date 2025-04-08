<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        DB::table('categoria')->insert([
            'desccategoria' => '4-7 años',
        ]);
        DB::table('categoria')->insert([
            'desccategoria' => '8-11 años',
        ]);
        DB::table('categoria')->insert([
            'desccategoria' => '12-15 años',
        ]);
        DB::table('categoria')->insert([
            'desccategoria' => '16-17 años',
        ]);
        DB::table('categoria')->insert([
            'desccategoria' => '18 años',
        ]);
    }
}
