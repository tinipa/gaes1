@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
            @if(Auth::user()->tipo_personal_fk == 1)
                <div class="card-header">{{ __('Binevenido Administrador') }}</div>
            @else
                <div class="card-header">{{ __('Binevenido Entreandor') }}</div>
            @endif

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif



                    @if(Auth::user()->tipo_personal_fk == 1)
                        {{ __('Opciones de administrador') }}
                    @else
                        {{ __('Opciones de entrenador') }}
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
