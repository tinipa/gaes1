<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Genero extends Model
{
    protected $table = 'genero';
    protected $primaryKey = 'id_genero';  
    protected $fillable = [
        'id_genero',
        'genero',
    ];

    public function persona()
    {
        return $this->hasMany(Persona::class, 'genero_id_genero', 'id_genero');
    }
}
/*Genero::insert([
    ['id_genero' => 1, 'genero' => 'M'],
    ['id_genero' => 2, 'genero' => 'F'],    
]);*/