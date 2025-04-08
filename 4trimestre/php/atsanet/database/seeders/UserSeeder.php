<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name' => 'Diego Castillo',
            'tipo_personal_fk' => 1,
            'email' => 'diego.cas@gmail.com',
            'password' => Hash::make('maradona4321'),
        ]);
    }
}
