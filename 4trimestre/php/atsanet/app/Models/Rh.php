<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rh extends Model
{
 protected $table = 'rh';
 protected $primaryKey = 'id';  
 public $timestamps = false;
 protected $fillable = [
     'descrh'
 ];

 public function persona()
    {
        return $this->hasMany(Persona::class, 'rh_id_rh', 'id');
    }
}
/*Rh::insert([
    ['descrh' => 'A+'],
    ['descrh' => 'A-'],
    ['descrh' => 'B+'],
    ['descrh' => 'B-'],
    ['descrh' => 'O+'],
    ['descrh' => 'O-'],
    ['descrh' => 'AB+'],
    ['descrh' => 'AB-'],
]);*/