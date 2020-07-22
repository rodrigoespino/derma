<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use App\Post;
class test_email extends Controller
{
    //
    public function invia()

    {
     $this->sendmail('espino.rodrigo@gmail.com','Rodrigo','Espino','asdasdasd');


    }
    public function sendmail($email,$name,$surname,$cupon)

    {
 

        $endpoint = "http://staging.whatsupdoc.it:5000/send-subscription-email";
        $client = new \GuzzleHttp\Client();
 
        $client->post(
            $endpoint,
            array(
                'form_params' => array(
                    'name' => $name,
                    'surname' => $surname,
                    'code' =>  $cupon,
                    'email' => $email
                  
                )
            )
        );
  
  
        /*
        
        $response = $client->request('POST', $endpoint, ['query' => [
            'name' => $name,
            'surname' => $surname,
            'code' => $cupon,
            'email' => $email, 

            
            

        ]]);
*/        
        // url will be: http://my.domain.com/test.php?key1=5&key2=ABC;
        
       // $statusCode = $response->getStatusCode();
     //   $content = $response->getBody();
return true;        
}

}
