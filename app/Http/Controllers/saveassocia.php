<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Session;
use DB;
use CRUDBooster;
class saveassocia extends Controller
{
    //

    public function formSubmit(Request $req)
    {
            $data = request()->all();
            $informatore = $req->informatore;
            $dermatologo = $req->dermatologi_id;
            $id_user_meta = DB::table('pharmaceutical_representative_doctor')->insertGetId([
                'user_id'=> $informatore,
                'doctor_id'=>  $dermatologo ]);
            CRUDBooster::redirectBack("The data has been updated!", "success");

 
    }

}
