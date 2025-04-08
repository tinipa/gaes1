@extends('layouts.app')
@section('content')
    <div class="container">
            <div class ="row">
            <div class="col-md-12">
                <h2 class="text-success">Añadir personal tecnico</h2>
            </div>

            <div class="col-md-12">
                <a href="{{ route('personal_t.index') }}" class="btn btn-secondary mb-2">Volver</a>
            </div>

            <div class="col-md-4">
                <form action="{{ route('personal_t.store') }}" method="POST">
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

                    <label for='password' class="form-control-label">Contraseña</label>
                    <input type="password" class="form-control" id="password" name="password" value="">
                    @error('password')
                        <small class="text-danger">{{ $message }}</small><br>
                    @enderror

                    <label for="tipo_personal_fk" class='form-control-label'>Tipo personal</label>
                    <select id='tipo_personal_fk' name='tipo_personal_fk' class='form-control'>
                        @foreach($tipo_personals as $tipo_personal)
                            <option value="{{ $tipo_personal->id }}">{{ $tipo_personal->desctipo_personal }}</option>
                        @endforeach
                    </select>

                    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
@endsection           