<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PersonaController;

Route::get('/', function () {
    return redirect('personas');
});

Route::resource('personas', PersonaController::class);
