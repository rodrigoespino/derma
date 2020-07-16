<?php

namespace App\Http\Controllers;


 
  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Collection;


use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Facades\Crypt;


use Session;
use DB;
use CRUDBooster;
class data   extends Controller
{
    //functu
 

    public function formSubmit(Request $req)
    {
        $data = request()->all();

          $archivo = $req->excel;
          $nombre = $archivo->getClientOriginalName();
          $contenido = \File::get($archivo) ;
          $directorio = \Storage::disk('local')->getDriver()->getAdapter()->getPathPrefix() ;
          $fullarchivo = $directorio . $nombre ;
          $fullarchivo2 = substr($directorio,0,-1) .$directorio. $nombre ;

            var_dump($fullarchivo2);
             $grabado = \Storage::disk('local')->put($fullarchivo, $contenido);
        
 
            if ($grabado) {
                      $datos=  $this->readCSV($fullarchivo2 ,array('delimiter' => ','));
             }


                            foreach($datos as $indice=>$value){
                                $codigo=$value["codigo"];
                                $campo2=Crypt::encryptString($value["campo2"]);
                                $campo3=$value["campo3"];
                             //   var_dump("Nome".$codigo); // Nome 
                               // var_dump("Cognome".$campo2); 

 
                               $id_coupon = DB::table('coupon')->insertGetId(
                                [ 'name' => Request::get('coupon') ]
                                 );
                               
                                 $id_user_meta = DB::table('user_meta')->insertGetId([
                                'name'=> Crypt::encryptString(Request::get('name')),
                               'surname'=>  Crypt::encryptString(Request::get('surname'))
                         
                           ]);
                                var_dump($campo2);
                                    

                                
                            }
                                exit();
                     
      

    }

    public function readCSV($csvFile, $array)
    {

        
        $info = fopen ($csvFile , "r" );
        while (($datos=fgetcsv($info,10000,",")) !== FALSE){
           $linea[]=array('codigo'=>$datos[0],'campo2'=>$datos[1],'campo3'=>$datos[2]);
        }
        fclose ($info);
 




    return $linea;
    }
  
}
 