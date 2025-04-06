@extends('layouts.app')
@section('content')
    <div class="container">
        <div class ="row">
            <div class="col-md-12">
                <h2 class="text-success">CRUD Personas</h2>
                <a href="{{ route('personas.create') }}" class="btn btn-primary mb-2">Añadir Persona</a>
                               
        </div>

        <div class="col-md-8">
            <table class="table table-bordered">
                <thead>
                    <tr class="text-center">
                        <th>Numero de identificacion </th>
                        <th>Tipo de documento</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Edad </th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Correo</th>
                        <th>Genero</th>
                        <th>Eps</th>
                        <th>Rh</th>
                        <th style="width: 30%;">Opciones</th>
                    </tr>                     

                        
                </thead>
                <tbody>
                    @foreach($personas as $persona)
                        <tr>
                            <td>{{ $persona->id_persona }}</td>
                            <td>{{ $persona->tipo_id }}</td>
                            <td>{{ $persona->nombres }}</td>
                            <td>{{ $persona->apellidos }}</td>
                            <td>{{ $persona->edad_persona }}</td>
                            <td>{{ $persona->direccion_persona }}</td>
                            <td>{{ $persona->telefono_persona }}</td>
                            <td>{{ $persona->email_persona }}</td>
                            <td>{{ $persona->genero->genero }}</td>
                            <td>{{ $persona->eps->eps }}</td>
                            <td>{{ $persona->rh->rh }}</td>
                            <td class="text-center">
                                <a href="{{ route('personas.edit', $persona) }}" class="btn btn-success">Editar</a>
                                <form action="{{ route('personas.destroy', $persona) }}" method="POST" class="d-inline-block">
                                    @csrf
                                    @method('DELETE')
                                    <button class ="btn btn-danger"
                                    onclick="return confirm('¿Estás seguro de que deseas eliminar esta persona?');">Eliminar</button>
                                </form> 
                            </td>
                        </tr>
                    @endforeach
                </tbody>    
            </table>
        </div>
        
    </div>

@endsection