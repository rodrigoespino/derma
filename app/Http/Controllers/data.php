<?php

namespace App\Http\Controllers;


 
  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Collection;


use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;


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

           // var_dump($fullarchivo2);
             $grabado = \Storage::disk('local')->put($fullarchivo, $contenido);
        
               // var_dump($data);
               // var_dump($req->mail);
               // var_dump($req->category_id);
                $category = $req->category_id;
                $grupo_id = $req->group_id;
                $confirm_email = $req->mail;
             //   var_dump($grupo_id);
         //  exit();
                
                if ($grabado) {
                      $datos=  $this->readCSV($fullarchivo2 ,array('delimiter' => ','));
                                } else {
                                    CRUDBooster::redirectBack("The data has been updated!", "success");
                                    exit();
                            } 

                            foreach($datos as $indice=>$value){
                             //   $ver = Crypt::encryptString($value["codigo"]);
                                $name=Crypt::encryptString($value["codigo"]); // Name
                                $surname=Crypt::encryptString($value["campo2"]);  // Surname
                                $email=$value["campo3"]; // Email
  
                                //// Usar la funcion para generar el token
                               $token = Str::random(8); //GENERATE TOKEN
                               /// Generate Cupon     $id_cupon                               
                               if ($req->cupon == 1) {
                                            $id_coupon = DB::table('coupon')->insertGetId(
                                            [ 'name' => $token ]);
                                         } else { 
                                                $id_coupon = 0 ;
                                            }
                                 /// Carica Encrypt User Meta.
                                 $id_user_meta = DB::table('user_meta')->insertGetId([
                                'name'=> $name,
                                'surname'=>  $surname ]);
                                // Add Users !
                               // exit();
                                $id_users = DB::table('users')->insertGetId([
                                    'email'=> $email,
                                    'category_id'=> $category,
                                    'coupon_id'=> $id_coupon,

                                    'user_meta_id'=>$id_user_meta ]);
                                         
                                // Add Grupo
                                
                                $id_grupo = DB::table('group_user')->insertGetId([
                                    'user_id'=> $id_users,
                                   
                                     
                                    'group_id'=>$grupo_id ]);

                                // Final
                             if ($confirm_email == 1) {
                                    $dato ['coupon'] = $id_coupon;					

                                    CRUDBooster::sendEmail(['to'=>$email,'data'=>$dato,'template'=>'coupon','attachments'=>[]]);

                               } 
                        


                            }
                              //  exit();
                            //
                          //  CRUDBooster::redirectBack();
                          return CRUDBooster::redirectBack("The data has been updated!", "success");
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
 