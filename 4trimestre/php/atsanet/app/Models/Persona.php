<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table = 'personas';
    protected $primaryKey = 'id_persona';   
    
    protected $fillable = [
        'id_persona',
        'tipoId',
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

    public function genero()
    {
        return $this->belongsTo(Genero::class, 'id_genero', 'genero_id_genero');
    }
    public function eps()
    {
        return $this->belongsTo(Eps::class, 'id_eps', 'eps_id_eps');
    }
    public function rh()
    {
        return $this->belongsTo(Rh::class, 'id_rh', 'rh_id_rh');
    }
}
