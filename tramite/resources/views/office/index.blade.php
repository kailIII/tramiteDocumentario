@extends('layouts.app')

@section('content')

<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
		<div class="panel-heading"><strong>Lista de Oficinas</strong></div>
				<div class="table-responsive">
				<div class="text-center">
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center">ID</th>
								<th class="text-center">Nombre</th>
								<th class="text-center">Accion</th>
							</tr>
						</thead>
						<tbody>
							@foreach($offices as $office)
								<tr>
									<td>{{ $office->id }}</td>
									<td>{{ $office->name }}</td>
									<td>
									<a href="{{ route('office.edit', $office->id) }}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span></a> 
									<a href="{{ route('office.destroy', $office->id) }}" onclick="return confirm('¿Seguro que deseas eliminarlo?')" class="btn btn-danger"><span class="glyphicon glyphicon-minus-sign"></span></a>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				{!! $offices->render() !!}
		</div>
	</div>
</div>
@endsection
