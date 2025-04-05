<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PersonaController;

Route::get('/', function () {
    return redirect('personas.index');
});

//Route::resource('personas', PersonaController::class);


