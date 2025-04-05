<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $table = 'categoria';
    protected $primaryKey = 'id_categoria';
    protected $fillable = [
        'id_categoria',
        'nom_categoria',
    ];

    
}

/*Categoria::insert([
  ['id_categoria' => 1, 'nom_categoria' => '4-7 años'],
    ['id_categoria' => 2, 'nom_categoria' => '8-11 años'],
    ['id_categoria' => 3, 'nom_categoria' => '12-15 años'],
    ['id_categoria' => 4, 'nom_categoria' => '16-17 años'],
    ['id_categoria' => 5, 'nom_categoria' => '18 años'],
   
    
    ]
);*/
