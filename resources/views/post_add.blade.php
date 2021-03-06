@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head>
<div class="pane panel-default">

    <div class="panel-heading">
        Add Dermatology
    </div>
    <div class="panel-body">
     
        <form method="post" action="{{CRUDBooster::mainpath('add-save')}}">
            <input type="hidden" name="_token" value="{{csrf_token()}}">  
            <div class="form-group">

                    <label for="">Name </label> 
                      <label for=""></label>
                    <input required type="text" name="name" id="id" class="form-control input-sm" required >
                  </div>

                         <label for="">Surname </label> 
                        <input required type="text" name="surname" id="surname" class="form-control input-sm" required>
                      </div>
                      
                        <div class="form-group">

                        <label required for="">Email </label> 
                            <input type="email" name="emilio" id="emilio" class="form-control input-sm" required  >
                          </div> 
  


     
                    <div class="form-group">
                      <input type="hidden" name="tipo" id="tipo" value="1" class="form-control input-sm"  >

                      <input type="hidden" name="user_meta_id" id="user_meta_id" value="1000" class="form-control input-sm"  >
                      <input type="hidden" name="email" id="email" value="" class="form-control input-sm"  >
                      <input type="hidden" name="category_id" id="category_id" value="1" class="form-control input-sm"  >
                           </div>
                           <div class="form-group">
 
                             
                                    <div class="form-group">
          
                              
                     <label for="">Coupon </label> 
                     <input required type="text" name="coupon" id="coupon" class="form-control input-sm"  required >
                   </div>
 
                   <button type="button" class="btn btn-danger" onclick='token();'>Generate Coupon</button>
                   <div class="form-group">

                   
     
    <div class="panel-footer">



        <input  type="submit" name = "submit" class="btn btn-primary" value ="Save Dermatology">  
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