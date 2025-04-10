@extends('layouts.app')
@section('content')
    <div class="container">
        <div class ="row">
            <div class="col-md-12">
                <h2 class="text-success">Actualizar Alumno</h2>
            </div>
            
            <div class="col-md-12">
                <a href="{{ route('alumno.index') }}" class="btn btn-secondary mb-2">Volver</a>
            </div>
            <div class="col-md-4">
                <form action="{{ route('alumno.update', $alumno) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <label for="id_persona" class="form-control-label">Numero de identificacion</label>
                    <input type="text" class="form-control" id="id_persona" name="id_persona" value="{{$persona->id_persona}}">
                    @error('id_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="tipo_id" class="form-control-label">Tipo de documento</label>
                    <input type="text" class="form-control" id="tipo_id" name="tipo_id" value="{{$persona->tipo_id}}">
                    @error('tipo_id')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="nombres" class="form-control-label">Nombres</label>
                    <input type="text" class="form-control" id="nombres" name="nombres" value="{{$persona->nombres}}"> 
                    @error('nombres')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="apellidos" class="form-control-label">Apellidos</label>
                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="{{$persona->apellidos}}">
                    @error('apellidos')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="edad_persona" class="form-control-label">Edad</label>
                    <input type="text" class="form-control" id="edad_persona" name="edad_persona" value="{{$persona->edad_persona}}">
                    @error('edad_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="direccion_persona" class="form-control-label">Direccion</label>
                    <input type="text" class="form-control" id="direccion_persona" name="direccion_persona" value="{{$persona->direccion_persona}}">
                    @error('direccion_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="telefono_persona" class="form-control-label">Telefono</label>
                    <input type="text" class="form-control" id="telefono_persona" name="telefono_persona" value="{{$persona->telefono_persona}}">
                    @error('telefono_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="email_persona" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="email_persona" name="email_persona" value="{{$persona->email_persona}}">
                    @error('email_persona')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="genero_id_genero" class="form-control-label">Genero</label>
                    <select id="genero_id_genero" name="genero_id_genero" class="form-control">
                        @foreach($generos as $genero)
                            <option value="{{ $genero->id }}" {{$persona->genero_id_genero == $genero->id ? 'selected' : ''}}>{{ $genero->descgenero }}</option>
                        @endforeach
                    </select>

                    <label for="eps_id_eps" class="form-control-label">Eps</label>
                    <select id="eps_id_eps" name="eps_id_eps" class="form-control">
                        @foreach($eps as $eps)
                            <option value="{{ $eps->id }}"{{$persona->eps_id_eps == $eps->id ? 'selected' : ''}}>{{ $eps->desceps }}</option>
                        @endforeach
                    </select>

                    <label for="rh_id_rh" class="form-control-label">Rh</label>
                    <select id="rh" name="rh_id_rh" class="form-control">
                        @foreach($rhs as $rh)
                            <option value="{{ $rh->id }}"{{$persona->rh_id_rh == $rh->id ? 'selected' : ''}}>{{ $rh->descrh }}</option>
                        @endforeach
                    </select>

                    <label for="pie_dominante" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="pie_dominante" name="pie_dominante" value="{{$alumno->pie_dominante}}">
                    @error('pie_dominante')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="nombres_acudiente" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="nombres_acudiente" name="nombres_acudiente" value="{{$alumno->nombres_acudiente}}">
                    @error('nombres_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="apellidos_acudiente" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="apellidos_acudiente" name="apellidos_acudiente" value="{{$alumno->apellidos_acudiente}}">
                    @error('apellidos_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="telefono_acudiente" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="telefono_acudiente" name="telefono_acudiente" value="{{$alumno->telefono_acudiente}}">
                    @error('telefono_acudiente')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="parentesco_alumno" class="form-control-label">Correo</label>
                    <input type="text" class="form-control" id="parentesco_alumno" name="parentesco_alumno" value="{{$alumno->parentesco_alumno}}">
                    @error('parentesco_alumno')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="posicion_id_posicion" class="form-control-label">Rh</label>
                    <select id="rh" name="posicion_id_posicion" class="form-control">
                        @foreach($posiciones as $posicione)
                            <option value="{{ $posicione->id_posicion }}" {{ $alumno->posicion_id_posicion == $posicione->id_posicion ? 'selected' : '' }}>{{ $posicione->descposicion }}</option>
                        @endforeach
                    </select>

                    <label for="categoria_id_categoria" class="form-control-label">Categoria</label>
                    <select id="categoria_id_categoria" name="categoria_id_categoria" class="form-control">
                        @foreach($categorias as $categoria)
                            <option value="{{ $categoria->id }}" {{ $alumno->categoria_id_categoria == $categoria->id ? 'selected' : '' }}>{{ $categoria->desccategoria }}</option>
                        @endforeach
                    </select>


                    <button type="submit" class="btn btn-primary mt-2">Actualizar</button>
                </form>
            </div>
        </div>
    </div>
@endsection           