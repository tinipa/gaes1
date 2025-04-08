@extends('layouts.app')
@section('content')
    <div class="container">
        <div class ="row">

            <div class="col-md-12">
                <h2 class="text-success">Crear Alumno</h2>
            </div>

            <div class="col-md-12">
                <a href="{{ route('alumno.index') }}" class="btn btn-secondary mb-2">Volver</a>
            </div>

    
            <div class="col-md-4">
                <form action="{{ route('alumno.store') }}" method="POST">
                    @csrf
                    <label for="id_persona" class="form-control-label">Numero de identificacion</label>
                    <input type="text" class="form-control" id="id_persona" name="id_persona" value="">
                    @error('id_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="tipo_id" class="form-control-label">Tipo de documento</label>
                    <input type="text" class="form-control" id="tipo_id" name="tipo_id" value="">
                    @error('tipo_id')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="nombres" class="form-control-label">Nombres</label>
                    <input type="text" class="form-control" id="nombres" name="nombres" value=""> 
                    @error('nombres')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="apellidos" class="form-control-label">Apellidos</label>
                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="">
                    @error('apellidos')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="edad_persona" class="form-control-label">Edad</label>
                    <input type="text" class="form-control" id="edad_persona" name="edad_persona" value="">
                    @error('edad_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="direccion_persona" class="form-control-label">Direccion</label>
                    <input type="text" class="form-control" id="direccion_persona" name="direccion_persona" value="">
                    @error('direccion_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="telefono_persona" class="form-control-label">Telefono</label>
                    <input type="text" class="form-control" id="telefono_persona" name="telefono_persona" value="">
                    @error('telefono_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror
                    
                    <label for="email_persona" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="email_persona" name="email_persona" value="">
                    @error('email_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="genero_id_genero" class="form-control-label">Genero</label>
                    <select id="genero_id_genero" name="genero_id_genero" class="form-control">
                        @foreach($generos as $genero)
                            <option value="{{ $genero->id }}">{{ $genero->descgenero }}</option>
                        @endforeach
                    </select>

                    <label for="eps_id_eps" class="form-control-label">Eps</label>
                    <select id="eps_id_eps" name="eps_id_eps" class="form-control">
                        @foreach($eps as $eps)
                            <option value="{{ $eps->id }}">{{ $eps->desceps }}</option>
                        @endforeach
                    </select>

                    <label for="rh_id_rh" class="form-control-label">Rh</label>
                    <select id="rh" name="rh_id_rh" class="form-control">
                        @foreach($rhs as $rh)
                            <option value="{{ $rh->id }}">{{ $rh->descrh }}</option>
                        @endforeach
                    </select>

                    <label for='pie_dominante' class='form-control-label'>Pie dominate</label>
                    <input type="text" class="form-control" id="pie_dominante" name="pie_dominante" value="">
                    @error('pie_dominante')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for='nombres_acudiente' class='form-control-label'>Nombres acudiente</label>
                    <input type="text" class="form-control" id="nombres_acudiente" name="nombres_acudiente" value="">
                    @error('nombres_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for='apellidos_acudiente' class='form-control-label'>Apellidos Acudiente</label>
                    <input type="text" class="form-control" id="apellidos_acudiente" name="apellidos_acudiente" value="">
                    @error('apellidos_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for='telefono_acudiente' class='form-control-label'>Telefono acudiente</label>
                    <input type="text" class="form-control" id="telefono_acudiente" name="telefono_acudiente" value="">
                    @error('telefono_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror
                    
                    <label for='parentesco_alumno' class='form-control-label'>Parentezco</label>
                    <input type="text" class="form-control" id="parentesco_alumno" name="parentesco_alumno" value="">
                    @error('')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for='posicion_id_posicion' class='form-control-label'>Posicion</label>
                    <select id="posicion_id_posicion" name="posicion_id_posicion" class="form-control">
                        @foreach($posiciones as $posicion)
                            <option value="{{ $posicion->id_posicion }}">{{ $posicion->descposicion }}</option>
                        @endforeach
                    </select>

                    <label for='categoria_id_categoria' class='form-control-label'>Categoria</label>
                    <select id="categoria_id_categoria" name="categoria_id_categoria" class="form-control">
                        @foreach($categorias as $categoria)
                            <option value="{{ $categoria->id }}">{{ $categoria->desccategoria }}</option>
                        @endforeach
                    </select>

                    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
@endsection           