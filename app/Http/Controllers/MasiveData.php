<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MasiveData extends Controller
{
    //

    public function formSubmit(Request $req)
    {
        var_dump("Si!");
        exit();
        print_r($req->input('exampleFormControlSelect2'));

    }

}
