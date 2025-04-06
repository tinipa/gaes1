<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use Illuminate\Http\Request;
use App\Models\Posicion;
use App\Models\Categoria;
use App\Models\Persona;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumnos = Alumno::all();
        return view('alumnos.index', ['alumnos' => $alumnos]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $posiciones = Posicion::all();
        $categorias = Categoria::all();
        $personas = Persona::all();

        return view('alumnos.create', [
            'posiciones' => $posiciones,
            'categorias' => $categorias,
            'personas' => $personas
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_persona' => 'required|digits_between:6,10',
            'tipo_id' => 'required|min:2|max:3',
            'nombres' => 'required|min:3|max:50',
            'apellidos' => 'required|min:3|max:50',
            'edad_persona' => 'required|integer|digits_between:1,3',
            'direccion_persona' => 'required|min:10|max:255',
            'telefono_persona' => 'required|integer|digits:10',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id_genero',
            'eps_id_eps' => 'required|exists:eps,id_eps',
            'rh_id_rh' => 'required|exists:rh,id_rh',

            'pie_dominate' => 'required|min :5|max:10',
            'nombres_acu' => 'required|min:3|max:50',
            'apellidos_acu' => 'required|min:3|max:50',
            'telefono_acudiente' => 'required|integer|digits:10',
            'parentezco_alumno' => 'required|min:3|max:11',
            'posicion_id_posicion' => 'required|exists:posicion,id_posicion',
            'categoria_id_categoria' => 'required|exists:categoria,id_categoria'
        ]);
        

        Alumno::create($request->all());

        return redirect()->route('alumnos.index')->with('success', 'Alumno created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Alumno $alumno)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Alumno $alumno)
    {
        $posiciones = Posicion::all();
        $categorias = Categoria::all();
        $personas = Persona::all();

        return view('alumnos.edit', [
            'alumno' => $alumno,
            'posiciones' => $posiciones,
            'categorias' => $categorias,
            'personas' => $personas
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Alumno $alumno)
    {
        $request->validate([
            'id_persona' => 'required|digits_between:6,10',
            'tipo_id' => 'required|min:2|max:3',
            'nombres' => 'required|min:3|max:50',
            'apellidos' => 'required|min:3|max:50',
            'edad_persona' => 'required|integer|digits_between:1,3',
            'direccion_persona' => 'required|min:10|max:255',
            'telefono_persona' => 'required|integer|digits:10',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id_genero',
            'eps_id_eps' => 'required|exists:eps,id_eps',
            'rh_id_rh' => 'required|exists:rh,id_rh',

            'pie_dominate' => 'required|min :5|max:10',
            'nombres_acu' => 'required|min:3|max:50',
            'apellidos_acu' => 'required|min:3|max:50',
            'telefono_acudiente' => 'required|integer|digits:10',
            'parentezco_alumno' => 'required|min:3|max:11',
            'posicion_id_posicion' => 'required|exists:posicion,id_posicion',
            'categoria_id_categoria' => 'required|exists:categoria,id_categoria'
        ]);

        $alumno->update($request->all());

        return redirect()->route('alumnos.index')->with('success', 'Alumno updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Alumno $alumno)
    {
        $alumno->delete();
        return redirect()->route('alumnos.index')->with('success', 'Alumno deleted successfully.');
    }
}
