@extends('layouts.app')
@section('content')
    <div class="container">
        <div class ="row">
            <div class="col-md-12">
                <h2 class="text-success">CRUD Personas</h2>
                <a href="{{ route('personal_t.create') }}" class="btn btn-primary mb-2">Añadir Persona</a> 
            </div>              
        </div>

        <div class="col-md-8">
            <table class="table table-bordered">
                <thead>
                    <tr class="text-center">
                        <th>Identificacion</th>
                        <th>Tipo de Documento</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Correo</th>
                        <th>Genero</th>
                        <th>Eps</th>
                        <th>Rh</th>
                        <th>Contraseña</th>
                        <th>Tipo de personal</th>
                        <thstyle="width: 30%;">Opciones</th>
                    </tr>                     
   
                </thead>
                <tbody>
                    @foreach($personal_t as $personal_t)
                        <tr>
                            <td>{{ $personal_t->persona->id_persona }}</td>
                            <td>{{ $personal_t->persona->tipo_id }}</td>
                            <td>{{ $personal_t->persona->nombres }}</td>
                            <td>{{ $personal_t->persona->apellidos }}</td>
                            <td>{{ $personal_t->persona->edad_persona }}</td>
                            <td>{{ $personal_t->persona->direccion_persona }}</td>
                            <td>{{ $personal_t->persona->telefono_persona }}</td>
                            <td>{{ $personal_t->persona->email_persona }}</td>
                            <td>{{ $personal_t->persona->genero->descgenero }}</td>
                            <td>{{ $personal_t->persona->eps->desceps }}</td>
                            <td>{{ $personal_t->persona->rh->descrh }}</td>
                            <td>{{ $personal_t->password }}</td>
                            <td>{{ $personal_t->tipo_personal->desctipo_personal }}</td>


                            <td class="text-center">
                                <a href="{{ route('personal_t.edit', $personal_t) }}" class="btn btn-success">Editar</a>
                                <form action="{{ route('personal_t.destroy', $personal_t) }}" method="POST" class="d-inline-block">
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