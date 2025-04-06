<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rh extends Model
{
 protected $table = 'rh';
 protected $primaryKey = 'id_rh';  
 protected $fillable = [
     'id_rh',
     'rh',
 ];

 public function persona()
    {
        return $this->hasMany(Persona::class, 'rh_id_rh', 'id_rh');
    }
}
/*Rh::insert([
    ['id_rh' => 1, 'rh' => 'A+'],
    ['id_rh' => 2, 'rh' => 'A-'],
    ['id_rh' => 3, 'rh' => 'B+'],
    ['id_rh' => 4, 'rh' => 'B-'],
    ['id_rh' => 5, 'rh' => 'O+'],
    ['id_rh' => 6, 'rh' => 'O-'],
    ['id_rh' => 7, 'rh' => 'AB+'],
    ['id_rh' => 8, 'rh' => 'AB-'],
    
]);*/