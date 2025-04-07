<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Genero extends Model
{
    protected $table = 'genero';
    protected $primaryKey = 'id'; 
    public $timestamps = false;
    protected $fillable = [
        'descgenero'
    ];

    public function persona()
    {
        return $this->hasMany(Persona::class, 'genero_id_genero', 'id');
    }
}
/*Genero::insert([
    ['descgenero' => 'M'],
    ['descgenero' => 'F'],    
]);*/