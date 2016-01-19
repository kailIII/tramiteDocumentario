@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Oficina</div>
				<div class="panel-body">
					{!! Form::open(['route' => 'office.store', 'method' => 'POST', 'class' => 'form-horizontal']) !!}
						<div class="form-group">
								{!! Form::label('namelabel', 'Nombre', array('class' => 'col-md-4 control-label')) !!}
							<div class="col-md-6">
								{!! Form::text('name', null, ['class' => 'form-control', 'required']) !!}
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