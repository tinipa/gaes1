@extends('layouts.app')
@section('content')
    <div class="container">
        <h1>Personas</h1>
        <a href="{{ route('personas.create') }}" class="btn btn-primary mb-3">Crear Persona</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($personas as $persona)
                    <tr>
                        <td>{{ $persona->id }}</td>
                        <td>{{ $persona->nombre }}</td>
                        <td>{{ $persona->apellido }}</td>
                        <td>{{ $persona->email }}</td>
                        <td>
                            <a href="{{ route('personas.edit', $persona->id) }}" class="btn btn-warning">Editar</a>
                            <form action="{{ route('personas.destroy', $persona->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        {{ $personas->links() }}
    </div>

@end