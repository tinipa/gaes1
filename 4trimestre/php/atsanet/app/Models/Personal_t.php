<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Personal_t extends Model
{
    protected $table = 'personal_t';
    protected $primaryKey = 'id'; 
    public $timestamps = false;  
    
    protected $fillable = [
        'id',
        'password',
        'tipo_personal_fk'
    ];
    
    public function persona(){
        return $this->belongsTo(Persona::class, 'id', 'id');
    }
    public function tipo_personal(){
        return $this->belongsTo(Tipo_Personal::class, 'tipo_personal_fk', 'id');
    }
}
