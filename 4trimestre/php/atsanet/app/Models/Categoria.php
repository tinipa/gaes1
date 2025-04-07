<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $table = 'categoria';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = [
        'desccategoria'
    ];

    public function alumno(){
        return $this->hasMany(Persona::class, 'categoria_id_categoria', 'id');
    }
}

/*Categoria::insert([
    ['desccategoria' => '4-7 años'],
    ['desccategoria' => '8-11 años'],
    ['desccategoria' => '12-15 años'],
    ['desccategoria' => '16-17 años'],
    ['desccategoria' => '18 años'],
    ]
);*/
