<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Personal_tcontroller;
use App\Http\Controllers\PersonaController;
use App\Http\Controllers\AlumnoController;


Route::get('/', function () {
    return redirect('personal_t');
});

Route::resource('personal_t', Personal_tcontroller::class);
Route::resource('personas', PersonaController::class);
Route::resource('alumno', AlumnoController::class);