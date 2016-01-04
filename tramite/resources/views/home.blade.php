@extends('layouts.app')

@section('content')
<div class="container spark-screen">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
                <?php $users = DB::select('select * from users');
                    foreach($users as $user){
                    echo $user->email;
                    } ?>
                <div class="panel-body">
                    Ha iniciado la sesión!
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
