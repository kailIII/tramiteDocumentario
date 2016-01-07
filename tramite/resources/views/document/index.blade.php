@extends('layouts.app')

@section('content')
<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
		<div class="panel-heading"><strong>Lista de Documentos</strong></div>
				<div class="table-responsive">
				<div class="text-center">
					<table class="table table-hover">
						<thead>
							<tr>
								<th class="text-center">ID</th>
								<th class="text-center">Asunto</th>
								<th class="text-center">Oficina</th>
							</tr>
						</thead>
						<tbody>
							@foreach($documents as $document)
								<tr>
									<td>{{ $document->id }}</td>
									<td>{{ $document->asunto }}</td>
									<td>{{ $document->office->name_office }}</td>
									<td>
									<a href="{{ route('document.edit', $document->id) }}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span></a>
									<a href="{{ route('document.edit', $document->id) }}" class="btn btn-primary"><span class="glyphicon glyphicon-send"></span></a> 
									<a href="{{ route('document.destroy', $document->id) }}" onclick="return confirm('¿Seguro que deseas eliminarlo?')" class="btn btn-danger"><span class="glyphicon glyphicon-minus-sign"></span></a>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				{!! $documents->render() !!}
		</div>
	</div>
</div>
@endsection