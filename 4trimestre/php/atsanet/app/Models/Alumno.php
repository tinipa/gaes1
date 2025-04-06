<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Alumno extends Model
{
    protected $table = 'alumno';
    protected $primaryKey = 'persona_id_persona';
    public $timestamps = false;

    protected $fillable = [
        'pie_dominate',
        'nombres_acu',
        'apellidos_acu',
        'telefono_acudiente',
        'parentezco_alumno',
        'posicion_id_posicion',
        'categoria_id_categoria'
    ];

    public function persona()
    {
        return $this->belongsTo(Persona::class, 'persona_id_persona', 'id_persona');
    }

    public function posicion()
    {
        return $this->belongsTo(Posicion::class, 'posicion_id_posicion' , 'id_posicion');
    }

    public function categoria()
    {
        return $this->belongsTo(Categoria::class, 'categoria_id_categoria', 'id_categoria');
    }
        
        
}
