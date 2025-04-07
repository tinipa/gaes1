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
    ['descposicion' => 'Portero'],
    ['descposicion' => 'Delantero Extremo'],
    ['descposicion' => 'Delantero Central'],
    ['descposicion' => 'Defensor Lateral'],
    ['descposicion' => 'Defensor Central'],
    ['descposicion' => 'Centrocampista Ofensivo'],
    ['descposicion' => 'Centrocampista Defensivo'],
]);*/

