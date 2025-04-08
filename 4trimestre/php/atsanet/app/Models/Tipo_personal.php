<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tipo_personal extends Model
{
    protected $table = 'tipo_personal';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = [
        'desctipo_personal',
    ];

    
}
/*Tipo_personal::insert([
    ['desctipo_personal' => 'Administrador'],
    ['desctipo_personal' => 'Entrenador'],
]);*/