@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head>
<div class="pane panel-default">

    <div class="panel-heading">
     </div>
     <div class="panel panel-primary">
 
        <div class="panel-heading"></div>
         <div class="panel-body">
             
        <form method="post" action="{{CRUDBooster::mainpath('add-save')}}">
            <input type="hidden" name="_token" value="{{csrf_token()}}">  
            <div class="form-group">

              <label for="">Nome</label> 
 
              <input required type="text" name="name" id="id" class="form-control input-sm"  required value="{{$row_name}}" >
                   <label for="">Cognome </label> 

                  <input required type="text" name="surname" id="surname" class="form-control input-sm" required value="{{$row_surname}}">
                

                 <label   for="">Email </label> 

                     <input type="email" name="emilio" id="emilio" class="form-control input-sm" required value="{{$row_users->email}}" disabled >


                   <label for="">Coupon </label> 
                   <input required type="text" name="coupon" id="coupon" class="form-control input-sm"  required value="{{$row_cupon->name}}" disabled >

     
                    <div class="form-group">
                      <input type="hidden" name="id" id="id" value="{{$row_users->id}}" class="form-control input-sm"  >
                      <input type="hidden" name="tipo" id="tipo" value="2" class="form-control input-sm"  >
                      <input type="hidden" name="category_id" id="category_id" value="1" class="form-control input-sm"  > 

                      <input type="hidden" name="user_meta_id" id="user_meta_id" value="{{$row_users->user_meta_id}}" class="form-control input-sm"  >
 
                      <input type="hidden" name="email" id="email" value="" class="form-control input-sm"  value="{{$row_users->email}}" >
                            </div>
                           <div class="form-group">
 
                             
               
                   
     
    <div class="panel-footer">



        <input  type="submit" name = "submit" class="btn btn-primary" value ="Modifica dermatologo">  
        <button type="button" onclick="history.back()" class="btn btn-danger">Annulla</button>

    </div>

</form>

   </div>
</div>   
<script>

    function token()
    {
     
 
  
document.getElementById("email").value  = document.getElementById("emilio").value  ;

document.getElementById("coupon").value  = returnHash() ;
       }
    

 
function returnHash(){
    abc = "abcdefghijklmnopqrstuvwxyz1234567890".split("");
    var token=""; 
    for(i=0;i<8;i++){
         token += abc[Math.floor(Math.random()*abc.length)];
    }
    return token; //Will return a 32 bit "hash"
}
    </script>
</body>
</html>
@endsection