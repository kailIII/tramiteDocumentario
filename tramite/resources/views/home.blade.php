
@extends('layouts.app')

@section('content')
<div class="container spark-screen">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Asginar Oficina</div>
                    
                <div class="panel-body">
                    Disculpe las molestias, tiene que asignar una oficina una ves iniciada la Sesión.
                    
                    <form class="form-horizontal">
                        <div class="form-group">
                                <label class="col-md-4 control-label">Oficina</label>    
                            <div class="col-md-6">
                                <div class="dropdown">
                                  <select class="form-control" name="list_offices">
                                  <?php 
                                  $offices = DB::select('select * from office');
                                  foreach ($offices as $office) {
                                      echo "<option>$office->name_office</option>";
                                  }
                                  ?>
                                  </select>
                                  <?php 
                                  $var = $_POST['list_offices'];
                                  echo $var; 
                                  ?>
                                </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
