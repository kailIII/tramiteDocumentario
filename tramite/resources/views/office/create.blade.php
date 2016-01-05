@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Oficina</div>
				<div class="panel-body">
					{!! Form::open(['route' => 'office.store', 'method' => 'POST']) !!}
						<div class="form-group">
								{!! Form::label('name', 'Nombre', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								{!! Form::text('name_office', null, ['class' => 'form-control', 'required']) !!}
							</div>
						</div>
						<br>
						<div class="form-group">
							<div>
								{!! Form::submit('Registrar', ['class' => 'btn btn-primary']) !!}
							</div>
						</div>
					{!! Form::close() !!}
				</div>
			</div>
		</div>
	</div>
</div>
@endsection