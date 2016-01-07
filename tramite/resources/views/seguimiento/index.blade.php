@extends('layouts.app')

@section('content')

<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
		<div class="panel-heading"><strong>Seguimiento de un Documento</strong></div>
				<div class="table-responsive">
				<div class="text-center">
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center">Codigo</th>
								<th class="text-center">Estado</th>
								<th class="text-center">Asunto del Documento</th>
								<th class="text-center">Oficina</th>
								<th class="text-center">Usuario</th>
							</tr>
						</thead>
						<tbody>
							@foreach($seguimientos as $seguimiento)
								<tr>
									<td>{{ $seguimiento->id }}</td>
									@if($seguimiento->estado == 'RECIBIDO')
										<td><span class="label label-success">{{ $seguimiento->estado }}</span></td>
									@elseif($seguimiento->estado == 'ENVIADO')
										<td><span class="label label-primary">{{ $seguimiento->estado }}</span></td>
									@elseif($seguimiento->estado == 'ELIMINADO')
										<td><span class="label label-danger">{{ $seguimiento->estado }}</span></td>
									@endif
									<td>{{ $seguimiento->document->asunto }}</td>
									<td>{{ $seguimiento->office->name_office }}</td>
									<td>{{ $seguimiento->user->name }}</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				{!! $seguimientos->render() !!}
		</div>
	</div>
</div>
@endsection