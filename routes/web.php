<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index');
Route::get('/noticia/{id}', 'HomeController@verNoticia');
Route::get('/seccion/{id}', 'HomeController@verSeccion');
Route::get('/contacto', 'HomeController@contacto');

	

Route::group(['middleware' => 'auth'], function () {

	Route::get('/backend/home', 'HomeController@backEndHome');

	// RUTAS GENERICAS
	Route::post('/crearlista', 'GenericController@crearLista');
	Route::post('/crearabm', 'GenericController@crearABM');
	Route::post('/enviarabm/{gen_modelo}', 'GenericController@crearABM');
	Route::post('/store', 'GenericController@store');
	Route::get('/list/{gen_modelo}/{gen_opcion}', 'GenericController@index');
	// FIN RUTAS GENERICAS


});

Route::get('/prueba', function () {
    return view('prueba');
});	


Auth::routes();

Route::get('/delcache', function () {
    $exitCode = Artisan::call('cache:clear');
    echo 'Cache Borrada';
});



//FORMS
