<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table = 'personas';
    protected $primaryKey = 'id_persona';   
    
    protected $fillable = [
        'id',
        'tipoid',
        'nombres',
        'apellidos',
        'edad',
        'direccion',
        'telefono',
        'email',
    ];
}
