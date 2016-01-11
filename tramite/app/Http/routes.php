<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    //Route::resource('office','OfficesController');
});

Route::group(['middleware' => 'web'], function () {
    Route::auth();
    
    Route::get('/', function () {
    	return view('welcome');
	});


    Route::get('/documents', function () {
        return view('document.create');
    });

    Route::resource('office','OfficesController');
    Route::get('office/{id}/destroy', [
            'uses'  => 'OfficesController@destroy',
            'as'    => 'office.destroy',
        ]);

    Route::resource('seguimiento', 'SeguimientoController');

    Route::resource('document', 'DocumentsController');
    Route::get('document/{id}/destroy', [
            'uses'  => 'DocumentsController@destroy',
            'as'    => 'document.destroy',
        ]);
    
});



//Route::group(['middleware' => 'web'], function(){
//	Route::resource('office','OfficesController');
//});