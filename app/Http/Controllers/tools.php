<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class tools extends Controller
{
    //

    public function readCSV($csvFile, $array)
    {

        
        $info = fopen ($csvFile , "r" );
        while (($data=fgetcsv($info,10000,",")) !== FALSE){
           $line[]=array('data1'=>$data[0],'data2'=>$data[1],'data3'=>$data[2]);
        }
        fclose ($info);
 
    return $line;
    }
  
}
 