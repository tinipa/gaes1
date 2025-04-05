<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Persona;
use App\Models\Rh;
use App\Models\Genero;
use App\Models\Eps;


class PersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $personas = Persona::all();
        return view('personas.index',['personas' => $personas]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $generos = Genero::all();
        $epss = Eps::all();
        $rhs = Rh::all();
        return view('personas.create', [
            'generos' => $generos,
            'eps' => $epss,
            'rhs' => $rhs
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'tipoId' => 'required|integer |min:2|max:3',
            'nombres' => 'required'|'min:3|max:50',
            'apellidos' => 'required'|'min:3|max:50',
            'edad_persona' => 'required|integer |min:1|max:3',
            'direccion_persona' => 'required'|'min:10|max:20',
            'telefono_persona' => 'required|integer',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id_genero',
            'eps_id_eps' => 'required|exists:eps,id_eps',
            'rh_id_rh' => 'required|exists:rh,id_rh'
        ]);

        Persona::create($request->all());

        return redirect()->route('personas.index')->with('success', 'Persona created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Persona $persona)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Persona $persona)
    {
        $generos = Genero::all();
        $epss = Eps::all();
        $rhs = Rh::all();
        return view('personas.edit', [
            'persona' => $persona,
            'generos' => $generos,
            'eps' => $epss,
            'rhs' => $rhs
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Persona $persona)
    {
        $request->validate([
            'tipoId' => 'required|integer |min:2|max:3',
            'nombres' => 'required'|'min:3|max:50',
            'apellidos' => 'required'|'min:3|max:50',
            'edad_persona' => 'required|integer |min:1|max:3',
            'direccion_persona' => 'required'|'min:10|max:20',
            'telefono_persona' => 'required|integer',
            'email_persona' => 'required|email',
            'genero_id_genero' => 'required|exists:genero,id_genero',
            'eps_id_eps' => 'required|exists:eps,id_eps',
            'rh_id_rh' => 'required|exists:rh,id_rh'
        ]);

        $persona->update($request->all());

        return redirect()->route('personas.index')->with('success', 'Persona updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Persona $persona)
    {
        $persona->delete();
        return redirect()->route('personas.index')->with('success', 'Persona deleted successfully.');
    }
}
