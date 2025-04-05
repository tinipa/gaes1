<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Eps extends Model
{
    protected $table = 'eps';
    protected $primaryKey = 'id_eps';
    protected $fillable = [
        'id_eps',
        'eps',
    ];

    public function persona()
    {
        return $this->hasMany(Persona::class, 'eps_id_eps', 'id_eps');
        
    
}
/*Eps:: insert ([
    ['id_eps' => 1, 'eps' => 'Sura'],
    ['id_eps' => 2, 'eps' => 'Coomeva'],
    ['id_eps' => 3, 'eps' => 'Compensar'],
    ['id_eps' => 4, 'eps' => 'Sanitas'],
    ['id_eps' => 5, 'eps' => 'Famisanar'],
    ['id_eps' => 6, 'eps' => 'Cafesalud'],
    ['id_eps' => 7, 'eps' => 'Salud Total'],
    ['id_eps' => 8, 'eps' => 'Medimás'],
    ['id_eps' => 9, 'eps' => 'Nueva EPS'],
    ['id_eps' => 10, 'eps' => 'Coosalud'],

]);	*/
    
