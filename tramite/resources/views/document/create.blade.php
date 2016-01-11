@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Nuevo Documento</div>
				<div class="panel-body">
						{!! Form::open(['route' => 'document.store', 'method' => 'POST', 'class' => 'form-horizontal']) !!}
						<div class="form-group">
								{!! Form::label('asunto', 'Asunto del Documento', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								{!! Form::text('asunto', null, ['class' => 'form-control', 'required']) !!}
							</div>				
						</div>
						<div class="form-group">
								{!! Form::label('name_office', 'Oficina:', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								<select type="oficina" class="form-control" name="oficina">
                                		<option value="{{ Auth::user()->office->id }}">{{ Auth::user()->office->name_office }}</option>
                                </select>
							</div>
						</div>
						<div class="form-group">
								{!! Form::label('name_office', 'Usuario:', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								<select type="user_id" class="form-control" name="user_id">
                                		<option value="{{ Auth::user()->id }}">{{ Auth::user()->name }}</option>
                                </select>
							</div>
						</div>
						<div class="form-group">
								<label class="col-md-4 control-label" for="folios">Folios:</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="folios"></input>
							</div>				
						</div>
						<div class="form-group">
								<label class="col-md-4 control-label" for="name">Recibi de:</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="name"></input>
							</div>
						</div>
						<div class="form-group">
								<label class="col-md-4 control-label">Detalle: </label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="detalle"></input>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-btn fa-user"></i>Recibir 
								</button>
							</div>
						</div>
					{!! Form::close() !!}
				</div>
			</div>
		</div>
	</div>	
</div>
@endsection