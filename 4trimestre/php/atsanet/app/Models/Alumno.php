<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Alumno extends Model
{
    protected $table = 'alumno';
    protected $primaryKey = 'id';
    public $timestamps = false;
    
    protected $fillable = [
        'id',
        'pie_dominante',
        'nombres_acudiente',
        'apellidos_acudiente',
        'telefono_acudiente',
        'parentesco_alumno',
        'posicion_id_posicion',
        'categoria_id_categoria'
    ];

    public function persona(){
        return $this->belongsTo(Persona::class, 'id', 'id');
    }
    public function posicion(){
        return $this->belongsTo(Posicion::class, 'posicion_id_posicion', 'id_posicion');
    }
    public function categoria(){
        return $this->belongsTo(Categoria::class, 'categoria_id_categoria', 'id');
    }
}
