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
								{!! Form::label('name_office', 'Oficinas', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								<select type="oficina" class="form-control" name="oficina">
                                	{!! $offices = App\Office::all() !!}
                                	@foreach($offices as $office)
                                		<option value="{!! $office->id !!}">{{ $office->name_office }}</option>
                                	@endforeach
                                </select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-btn fa-user"></i>Crear
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