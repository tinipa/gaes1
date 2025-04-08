<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Eps extends Model
{
    protected $table = 'eps';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = [
        'desceps'
    ];

    public function persona(){
        return $this->hasMany(Persona::class, 'eps_id_eps', 'id');
    }    
        
}
/*Eps:: insert ([
    ['desceps' => 'Sura'],
    ['desceps' => 'Coomeva'],
    ['desceps' => 'Compensar'],
    ['desceps' => 'Sanitas'],
    ['desceps' => 'Famisanar'],
    ['desceps' => 'Cafesalud'],
    ['desceps' => 'Salud Total'],
    ['desceps' => 'Medimás'],
    ['desceps' => 'Nueva eps'],
    ['desceps' => 'Coosalud'],
]);	*/
    
