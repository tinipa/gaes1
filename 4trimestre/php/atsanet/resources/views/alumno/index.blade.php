@extends('layouts.app')
@section('content')
    <div class="container">
        <div class ="row">
            <div class="col-md-12">
                <h2 class="text-success">CRUD Personas</h2>
                <a href="{{ route('alumno.create') }}" class="btn btn-primary mb-2">Añadir Persona</a> 
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
                        <th>Pie Dominante</td>
                        <th>Nombres acudiente</td>
                        <th>Apellidos acudiente</td>
                        <th>Telefono_acudiente</td>
                        <th>Parentesco</td>
                        <th>Posicion</td>
                        <th>Categoria</td>

                        <thstyle="width: 30%;">Opciones</th>
                    </tr>                     
   
                </thead>
                <tbody>
                    @foreach($alumnos as $alumno)
                        <tr>
                            <td>{{ $alumno->persona->id_persona }}</td>
                            <td>{{ $alumno->persona->tipo_id }}</td>
                            <td>{{ $alumno->persona->nombres }}</td>
                            <td>{{ $alumno->persona->apellidos }}</td>
                            <td>{{ $alumno->persona->edad_persona }}</td>
                            <td>{{ $alumno->persona->direccion_persona }}</td>
                            <td>{{ $alumno->persona->telefono_persona }}</td>
                            <td>{{ $alumno->persona->email_persona }}</td>
                            <td>{{ $alumno->persona->genero->descgenero }}</td>
                            <td>{{ $alumno->persona->eps->desceps }}</td>
                            <td>{{ $alumno->persona->rh->descrh }}</td>
                            <td>{{ $alumno->pie_dominante }}</td>
                            <td>{{ $alumno->nombres_acudiente }}</td>
                            <td>{{ $alumno->apellidos_acudiente }}</td>
                            <td>{{ $alumno->telefono_acudiente }}</td>
                            <td>{{ $alumno->parentesco_alumno }}</td>
                            <td>{{ $alumno->posicion->descposicion }}</td>
                            <td>{{ $alumno->categoria->desccategoria }}</td>

                            <td class="text-center">
                                <a href="{{ route('alumnos.edit', $alumno) }}" class="btn btn-success">Editar</a>
                                <form action="{{ route('alumnos.destroy', $alumno) }}" method="POST" class="d-inline-block">
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