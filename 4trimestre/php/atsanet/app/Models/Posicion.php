<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Posicion extends Model
{
    protected $table = 'posicion';
    protected $primaryKey = 'id_posicion';
    public $timestamps = false;
    protected $fillable = [
        'id_posicion',
        'descposicion'
    ];
    
}
/*Posicion::insert([
    ['id_posicion' => '1-POR', 'descposicion' => 'Portero'],
    ['id_posicion' => '2-DEL', 'descposicion' => 'Delantero Extremo'],
    ['id_posicion' => '1-DEL', 'descposicion' => 'Delantero Central'],
    ['id_posicion' => '2-DEF', 'descposicion' => 'Defensor Lateral'],
    ['id_posicion' => '1-DEF', 'descposicion' => 'Defensor Central'],
    ['id_posicion' => '2-CEN', 'descposicion' => 'Centrocampista Ofensivo'],
    ['id_posicion' => '1-CEN', 'descposicion' => 'Centrocampista Defensivo'],
]);*/

