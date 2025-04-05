<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tipo_personal extends Model
{
    protected $table = 'tipo_personal';
    protected $primaryKey = 'id_tipo_personal';
    protected $fillable = [
        'id_tipo_personal',
        'desc_tipo_personal',
    ];

    
}
/*Tipo_personal::insert([
    ['id_tipo_personal' => 1, 'desc_tipo_personal' => 'Administrador'],
    ['id_tipo_personal' => 2, 'desc_tipo_personal' => 'Entrenador'],
    
]);*/