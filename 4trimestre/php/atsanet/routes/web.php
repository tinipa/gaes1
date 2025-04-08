<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Personal_tcontroller;
use App\Http\Controllers\PersonaController;
use App\Http\Controllers\AlumnoController;


Route::get('/', function () {
    return view('welcome');
});



Route::resource('personal_t', Personal_tcontroller::class);
Route::resource('personas', PersonaController::class);
Route::resource('alumno', AlumnoController::class);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
