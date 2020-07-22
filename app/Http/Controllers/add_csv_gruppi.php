<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\tools;
use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;

use Session;
use DB;
use CRUDBooster;
class add_csv_gruppi extends Controller
{
    //

    public function formSubmit(Request $req)
    {
        $data = request()->all();
        $category = $req->category_id;
        $group_id = $req->group_id;
        $confirm_email = $req->mail;
        var_dump($group_id);

        var_dump($confirm_email);
    //    exit();
         $file = $req->excel;
          $name = $file->getClientOriginalName();
          $content = \File::get($file) ;
          $folder = \Storage::disk('local')->getDriver()->getAdapter()->getPathPrefix() ;
          $fullfile = $folder . $name ;
          $fullfile2 = substr($folder,0,-1) .$folder. $name ;

              $saved = \Storage::disk('local')->put($fullfile, $content);
        
             if ($saved) {
                 // Open CSV 
                $data=   (new tools)->readCSV($fullfile2 ,array('delimiter' => ','));
                          } else {
                           
                            return CRUDBooster::redirectBack("Error in Data!", "warning");

 
                      } 

        $result = (new tools)->readCSV($fullfile2 ,array('delimiter' => ','));

             /*


                Le casistiche poi sono:
                - se l'utente non esiste => insert
                - se l'utente esiste e non sono selezionati coupon e email => non fa nulla
                - se l'utente esiste ed è selezionato genera coupon => genera il nuovo coupon (correggimi @Sherkot se sbaglio)
                - se l'utente esiste ed è selezionato invia email => invia l'email (per la password a breve ti diciamo ma non dovrebbero esserci problemi)
            */

                      /// Read CSV 
        foreach($data as $index=>$value){
               $name=Crypt::encryptString($value["data1"]); // Name
               $surname=Crypt::encryptString($value["data2"]);  // Surname
               $email=$value["data3"]; // Email
               $token = Str::random(8); //GENERATE TOKEN
 
               /// Generate Cupon     $id_cupon                               
  
               $search_user=  DB::table('users')->where('email',$email)->first();
               var_dump($search_user); 
               if(is_null($search_user) == false ) { // IF USER EXIST!
      
                if ($req->cupon == 1) {
                    $id_coupon = DB::table('coupon')->insertGetId(
                    [ 'name' => $token ]);
                 }  
                  /// INSERT USER IN GROUP USER. 
                  $id_insert_group = DB::table('group_user')->insertGetId([
                    'user_id'=>$search_user->id,
                     'group_id'=>$group_id ]);     
                     if ($confirm_email == 1) {
                        CRUDBooster::sendEmail(['to'=>$email,'data'=>$data,'template'=>'coupon','attachments'=>[]]);
                     } 
                 } 
/// END ADD USER 


                //  USER NOT FOUND!
                if($search_user == Null ) {
                       
                       /// Insert COUPON  
                       $id_coupon = DB::table('coupon')->insertGetId([ 'name' => $token ]);
                      
                       /// Insert User_Meta
                       $id_user_meta = DB::table('user_meta')->insertGetId([
                        'name'=> $name,
                        'surname'=>  $surname ]); 
                    
                       /// Insert Users
                        $id_users = DB::table('users')->insertGetId([
                            'email'=> $email,
                            'category_id'=> $category,
                            'coupon_id'=> $id_coupon,
                            'user_meta_id'=>$id_user_meta ]);
                                 
                        // Add Group
                        
                        $id_insert_group = DB::table('group_user')->insertGetId([
                           'user_id'=> $id_users,
                           'group_id'=>$group_id ]);       
                           if ($confirm_email == 1) {
                                                   $data ['coupon'] = $id_coupon;					
                                                     if ($confirm_email == 1) {
                                                             CRUDBooster::sendEmail(['to'=>$email,'data'=>$data,'template'=>'coupon','attachments'=>[]]);
                                                     } 
                        /// END ADD USER
                       
                                        }
                                        
                                        
                                        
                                        
                                        
                                
                        
                       

                                        
                    }
            }
            return CRUDBooster::redirectBack("The data has been updated!", "success");


     //   exit();    
    }

}
