<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Posicion extends Model
{
    protected $table = 'posicion';
    protected $primaryKey = 'id_posicion';
    protected $fillable = [
        'id_posicion',
        'desc_posicion',
        
    ];
    
}
/*Posicion::insert([
    ['id_posicion' => '1-POR', 'desc_posicion' => 'Portero'],
    ['id_posicion' => '2-DEL', 'desc_posicion' => 'Delantero Extremo'],
    ['id_posicion' => '1-DEL', 'desc_posicion' => 'Delantero Central'],
    ['id_posicion' => '2-DEF', 'desc_posicion' => 'Defensor Lateral'],
    ['id_posicion' => '1-DEF', 'desc_posicion' => 'Defensor Central'],
    ['id_posicion' => '2-CEN', 'desc_posicion' => 'Centrocampista Ofensivo'],
    ['id_posicion' => '1-CEN', 'desc_posicion' => 'Centrocampista Defensivo'],
]);*/

