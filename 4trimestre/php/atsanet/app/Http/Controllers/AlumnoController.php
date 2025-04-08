<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Persona;
use App\Models\Rh;
use App\Models\Genero;
use App\Models\Eps;
use App\Models\Posicion;
use App\Models\Categoria;
use Illuminate\Http\Request;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumnos = Alumno::all();
        return view('alumno.index', ['alumnos' => $alumnos]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $personas = Persona::all();
        $rhs = Rh::all();
        $generos = Genero::all();
        $eps = Eps::all();
        $posiciones = Posicion::all();
        $categorias = Categoria::all();
        return view('alumno.create', [
            'persona' => $personas,
            'rhs' => $rhs,
            'generos' => $generos,
            'eps' => $eps,
            'posiciones' => $posiciones,
            'categorias' => $categorias
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            //validaciones de persona
            'id_persona' => 'required|digits_between:6,10',
            'tipo_id' => 'required|min:2|max:3',
            'nombres' => 'required|min:3|max:50',
            'apellidos' => 'required|min:3|max:50',
            'edad_persona' => 'required|integer|digits_between:1,3',
            'direccion_persona' => 'required|min:10|max:255',
            'telefono_persona' => 'required|Integer|digits:10',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id',
            'eps_id_eps' => 'required|exists:eps,id',
            'rh_id_rh' => 'required|exists:rh,id',

            //validaciones de alumno
            'pie_dominante' => 'required|min:5|max:10',
            'nombres_acudiente' => 'required|min:3|max:50',
            'apellidos_acudiente' => 'required|min:3|max:50',
            'telefono_acudiente' => 'required|integer|digits:10',
            'parentesco_alumno' => 'required|min:3|max:11',
            'posicion_id_posicion' => 'required|exists:posicion,id_posicion',
            'categoria_id_categoria' => 'required|exists:categoria,id'
        ]);
       

        $persona = Persona::create([
            'id_persona' => $request->id_persona,
            'tipo_id' => $request->tipo_id,
            'nombres' => $request->nombres,
            'apellidos' => $request->apellidos,
            'edad_persona' => $request->edad_persona,
            'direccion_persona' => $request->direccion_persona,
            'telefono_persona' => $request->telefono_persona,
            'email_persona' => $request->email_persona,
            'genero_id_genero' => $request->genero_id_genero,
            'eps_id_eps' => $request->eps_id_eps,
            'rh_id_rh' => $request->rh_id_rh
        ]);

        $alumno = Alumno::create([
            'id' => $persona->id, //hereda el id
            'pie_dominante' => $request->pie_dominante,
            'nombres_acudiente' => $request->nombres_acudiente,
            'apellidos_acudiente' => $request->apellidos_acudiente,
            'telefono_acudiente' => $request->telefono_acudiente,
            'parentesco_alumno' => $request->parentesco_alumno,
            'posicion_id_posicion' => $request->posicion_id_posicion,
            'categoria_id_categoria' => $request->categoria_id_categoria
        ]);
        
        return redirect()->route('alumno.index')->with('success', 'Alumno created successfully.');
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
        $persona = $alumno->persona;
        $rhs = Rh::all();
        $generos = Genero::all();
        $eps = Eps::all();
        $posiciones = Posicion::all();
        $categorias = Categoria::all();
        return view('alumno.edit', [
            'alumno' => $alumno,
            'persona' => $persona,
            'rhs' => $rhs,
            'generos' => $generos,
            'eps' => $eps,
            'posiciones' => $posiciones,
            'categorias' => $categorias
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Alumno $alumno)
    {
        $request->validate([
            //validaciones de persona
            'id_persona' => 'required|digits_between:6,10',
            'tipo_id' => 'required|min:2|max:3',
            'nombres' => 'required|min:3|max:50',
            'apellidos' => 'required|min:3|max:50',
            'edad_persona' => 'required|integer|digits_between:1,3',
            'direccion_persona' => 'required|min:10|max:255',
            'telefono_persona' => 'required|Integer|digits:10',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id',
            'eps_id_eps' => 'required|exists:eps,id',
            'rh_id_rh' => 'required|exists:rh,id',

            //validaciones de alumno
            'pie_dominante' => 'required|min:5|max:10',
            'nombres_acudiente' => 'required|min:3|max:50',
            'apellidos_acudiente' => 'required|min:3|max:50',
            'telefono_acudiente' => 'required|integer|digits:10',
            'parentesco_alumno' => 'required|min:3|max:11',
            'posicion_id_posicion' => 'required|exists:posicion,id_posicion',
            'categoria_id_categoria' => 'required|exists:categoria,id'
        ]);


        $persona = $alumno->persona;
        $persona->update([
            'id_persona' => $request->id_persona,
            'tipo_id' => $request->tipo_id,
            'nombres' => $request->nombres,
            'apellidos' => $request->apellidos,
            'edad_persona' => $request->edad_persona,
            'direccion_persona' => $request->direccion_persona,
            'telefono_persona' => $request->telefono_persona,
            'email_persona' => $request->email_persona,
            'genero_id_genero' => $request->genero_id_genero,
            'eps_id_eps' => $request->eps_id_eps,
            'rh_id_rh' => $request->rh_id_rh
        ]);

        $alumno->update([
            'id' => $persona->id, //hereda el id
            'pie_dominante' => $request->pie_dominante,
            'nombres_acudiente' => $request->nombres_acudiente,
            'apellidos_acudiente' => $request->apellidos_acudiente,
            'telefono_acudiente' => $request->telefono_acudiente,
            'parentesco_alumno' => $request->parentesco_alumno,
            'posicion_id_posicion' => $request->posicion_id_posicion,
            'categoria_id_categoria' => $request->categoria_id_categoria
        ]);

        return redirect()->route('alumno.index')->with('success', 'Persona updated successfully.');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Alumno $alumno)
    {
        $alumno->delete();
        return redirect()->route('alumno.index')->with('success', 'Alumno deleted successfully.');
    }
}
