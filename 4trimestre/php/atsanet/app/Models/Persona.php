<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table = 'persona';
    protected $primaryKey = 'id_persona';   
    
    protected $fillable = [
        'id_persona',
        'tipo_id',
        'nombres',
        'apellidos',
        'edad_persona',
        'direccion_persona',
        'telefono_persona',
        'email_persona',
        'genero_id_genero',
        'eps_id_eps',
        'rh_id_rh',
    ];
    public $timestamps = false;

    public function genero()
    {
        return $this->belongsTo(Genero::class, 'genero_id_genero', 'id_genero');
    }
    public function eps()
    {
        return $this->belongsTo(Eps::class, 'eps_id_eps', 'id_eps');
    }
    public function rh()
    {
        return $this->belongsTo(Rh::class, 'rh_id_rh', 'id_rh');
    }
    public function alumno()
    {
        return $this->hasMany(Alumno::class, 'persona_id_persona', 'id_persona');
    }
}
