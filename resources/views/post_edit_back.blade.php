@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head>
<div class="pane panel-default">

    <div class="panel-heading">
        Edit Dermatology
    </div>
    <div class="panel-body">
     
        <form method="post" action="{{CRUDBooster::mainpath('add-save')}}">
            <input type="hidden" name="_token" value="{{csrf_token()}}">  
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="name">Name</label>  
                            <div class="col-md-4">
                            <input id="name" name="name" type="text" placeholder="placeholder" class="form-control input-md">
                            <span class="help-block">help</span>  
                            </div>
                        </div>
                        
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="surname">Surnamessss</label>  
                            <div class="col-md-4">
                            <input id="surname" name="surname" type="text" placeholder="placeholder" class="form-control input-md" required="">
                            <span class="help-block"> </span>  
                            </div>
                        </div>
                        
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="emilio">Email</label>  
                            <div class="col-md-4">
                            <input id="emilio" name="emilio" type="text" placeholder="placeholder" class="form-control input-md">
                            
                            </div>
                        </div>
                        
                            
                    <div class="form-group">
                      <input type="hidden" name="id" id="id" value="{{$row_users->id}}" class="form-control input-sm"  >
                      <input type="hidden" name="tipo" id="tipo" value="2" class="form-control input-sm"  >
                      <input type="hidden" name="category_id" id="category_id" value="1" class="form-control input-sm"  > 

                      <input type="hidden" name="user_meta_id" id="user_meta_id" value="{{$row_users->user_meta_id}}" class="form-control input-sm"  >
 
                      <input type="hidden" name="email" id="email" value="" class="form-control input-sm"  value="{{$row_users->email}}" >
                            </div>
                           <div class="form-group">
 
                             
                                    <div class="form-group">
          
                              
                     <label for="">Coupon </label> 
                     <input required type="text" name="coupon" id="coupon" class="form-control input-sm"  required value="{{$row_cupon->name}}" disabled >
                   </div>
  
                   
     
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