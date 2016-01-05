
@extends('layouts.app')

@section('content')
<div class="container spark-screen">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Asginar Oficina</div>
                    
                <div class="panel-body">
                    Disculpe las molestias, tiene que asignar una oficina una ves iniciada la Sesión.
                    
                    <form class="form-horizontal" action="HomeController.php" method="POST">
                        <div class="form-group">
                                <label class="col-md-4 control-label">Oficina</label>    
                            <div class="col-md-6">
                                <div class="dropdown">
                                    
                                      <select name="list_offices" class="form-control">
                                      <?php
                                      $offices = DB::select('select * from office');
                                      foreach ($offices as $office) {
                                      ?> <option value=<?php $office->id ?>><?php echo $office->name_office ?></option> <?php
                                      }
                                      ?>
                                      </select>
                                    
                                </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
