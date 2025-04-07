<?php

namespace App\Http\Controllers;

use App\Models\Personal_t;
use App\Models\Persona;
use App\Models\Tipo_personal;
use App\Models\Rh;
use App\Models\Genero;
use App\Models\Eps;
use Illuminate\Http\Request;

class Personal_tcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $personal_t = Personal_t::all();
        return view('personal_t.index', ['personal_t' => $personal_t]);
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
        $tipo_personals = Tipo_personal::all();
        return view('personal_t.create', [
            'personas' => $personas,
            'rhs' => $rhs,
            'generos' => $generos,
            'eps' => $eps,
            'tipo_personals' => $tipo_personals
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

            //validaciones de personal_t
            'password' => 'required|min:8|max:50',
            'tipo_personal_fk' => 'required|exists:tipo_personal,id'
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

        $personal_t=Personal_t::create([
            'id' => $persona->id, //hereda el id
            'password' => $request->password,
            'tipo_personal_fk' => $request->tipo_personal_fk
        ]);

        return redirect()->route('personal_t.index')->with('success', 'Personal tecnico created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Personal_t $personal_t)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Personal_t $personal_t)
    {
        $persona = $personal_t->persona;
        $rhs = Rh::all();
        $generos = Genero::all();
        $eps = Eps::all();
        $tipo_personals = Tipo_personal::all();
        return view('personal_t.edit', [
            'personal_t' => $personal_t,
            'persona' => $persona,
            'rhs' => $rhs,
            'generos' => $generos,
            'eps' => $eps,
            'tipo_personals' => $tipo_personals
        ]);

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Personal_t $personal_t)
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

            //validaciones de personal_t
            'password' => 'required|min:8|max:50',
            'tipo_personal_fk' => 'required|exists:tipo_personal,id'
        ]);

        $persona = $personal_t->persona;
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

        $personal_t->update([
            'id' => $persona->id, //hereda el id
            'password' => $request->password,
            'tipo_personal_fk' => $request->tipo_personal_fk
        ]);

        return redirect()->route('personal_t.index')->with('success', 'Persona updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Personal_t $personal_t)
    {
        $personal_t->delete();
        return redirect()->route('personal_t.index')->with('success', 'Personal tecnico deleted successfully.');
    }
}
