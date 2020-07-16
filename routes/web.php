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

Route::get('/', function () {
    return view('welcome');
});
Route :: get ('/admin/pipe_grupo/print', function ()
{
    $data['group'] =  DB::table('group')->get();

    return view ('masive',$data);
});
 
Route :: get ('/static', function ()
{

    $derma_count = DB::table('users')->where('category_id','=',1)->count();
    $info_count = DB::table('users')->where('category_id','=',3)->count();
    $gruppi_count = DB::table('group')->count();

    $data = [];
    $data["derma"] = $derma_count; 
    $data["gruppi"] =     $gruppi_count;

    $data["minuti"] = "11.574,56";

    $data["vistas"] = $info_count;
 
    return view ('stats', $data);
});
 
 Route::post('/admin/data','data@formSubmit');
 