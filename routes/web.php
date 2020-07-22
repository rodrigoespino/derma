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
//  use Cookie;


Route::get('/', function () {
    return view('welcome');
});
 
// Add CSV by Gruppi 
// Call Form Add CVS Gruppi
Route :: get ('/admin/group36/addcsv-gruppi/{id}', function ($id_gruppi)
{
 
    $data['group'] =  DB::table('group')->where('id',$id_gruppi)->first();
    $data['category'] =  DB::table('category')->where('id',$data['group']->category_id)->first();
    return view ('add_csv_gruppi',$data);
    
});

Route :: get ('/admin/group36/view_data_group/{id}', function ($id_gruppi)
{ 

     return redirect('admin/pipe_grupo')->withCookie(cookie('gruppi', $id_gruppi, 20));
});

// Dermatologi

Route :: get ('/admin/user29/view_data_informatore/{id}', function ($id_info)
{ 
 
   return redirect('admin/pharmaceutical_representative_doctor40')->withCookie(cookie('id_info', $id_info, 20));
});
/// Post Form Gruppi

Route::post('/admin/add_csv_gruppi','add_csv_gruppi@formSubmit');

// Dashboard
Route :: get ('/static', function ()
{
    //// Statisticas     
    $derma_count = DB::table('users')->where('category_id','=',1)->count();
    $info_count = DB::table('users')->where('category_id','=',3)->count();
    $gruppi_count = DB::table('group')->count();

    $data = [];
    $data["derma"] = $derma_count; 
    $data["gruppi"] =     $gruppi_count;

    $data["minuti"] = "1122";
    
    //(DB::table('video_call')->where('start_date_time', '=', Carbon::today())->sum('duration')/60);

    // Dashboard Superadmim
    $data["vistas"] = $info_count;
 
    return view ('stats', $data);
});
 
  
Route :: get ('/notify', function ()
 {
     $data['users'] =  DB::table('users')->get();
 
     $data['group'] =  DB::table('group')->get();
 
     return view ('notify',$data);
 });
  
Route::post('/admin/notify','notify@formSubmit');

Route :: get ('/admin/user29/dermatologi_associati/{id}', function ($id_informatore)
{ 
    $info = $id_informatore;
    $data['informatore'] =  $info;
    $data['users'] =  DB::table('users')->where('category_id','=',3)->get();
    return view ('associati_derma',$data);
 });

 Route::post('/admin/saveassocia','saveassocia@formSubmit');
 



 Route::get('/admin/sendemail','test_email@invia');
 