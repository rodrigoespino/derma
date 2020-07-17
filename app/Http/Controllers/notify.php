<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
 
 use Session;
use DB;
use CRUDBooster;

class notify extends Controller
{
    //



    public function formSubmit(Request $req)
    {
        $endpoint = "http://localhost:5000/send-notification/";
        $client = new \GuzzleHttp\Client();
 
   //     var_dump($client);
/*
        $response = $client->request('POST', $endpoint, ['query' => [
            'tokens:' => "[ASAsASAsAS]", 
            'title:' => $title,
            'content:' => $content
            
        ]]);
        */
 /*
        $response = $client->request('POST','http://localhost:5000/send-notification/', [
            'tokens:' => "['Steve']",
            'title:' => "Network Administrator",
            'content:' => "Network Administrator",
        ]);
  */
       
        
        // url will be: http://my.domain.com/test.php?key1=5&key2=ABC;
        
 

        $data = request()->all();
        $users = $req->framework;
        var_dump($data);
        var_dump($users);

        exit();
        foreach ($users as $selectedOption)
        {
            var_dump($selectedOption);    
               
        }
   
    }
 

}
