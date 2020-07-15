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
  <input type="text" name="name" id="id" class="form-control input-sm"  >
 </div>
    </form>

 <div class="form-group">
    <label for="">Surname </label> 
     <input type="text" name="surname" id="surname" class="form-control input-sm" >
  </div>
      </form>
      <div class="form-group">
        <label for="">Email </label> 
         <input type="email" name="email" id="email" class="form-control sm"  >
       </div> 
           </form>

          <div class="form-group">
            <label for="">username </label> 
             <input type="text" name="username" id="username" class="form-control sm"  >
           </div>
            

          <div class="form-group">
            <label for="">Password </label> 
             <input type="password" name="passwd" id="passwd" class="form-control sm"  >
           </div>
              </form>
              <div class="form-group">


                <label for="">File Path </label> 

                  <input type="file" name="image" class="form-control">
  
              </div>
  
          </form>
              <div class="form-group">
                <label for="">Telefono </label> 
                 <input type="text" name="tel" id="tell" class="form-control sm"  >
               </div>
                  </form>
              <div class="form-group">
                <label for="">Cellolare </label> 
                 <input type="text" name="cell" id="cell" class="form-control sm" >
               </div>
                  </form>
  
                  <div class="form-group">

                  <div class="form-group">
                    <label for="">Address </label> 
                     <input type="text" name="address" id="address" class="form-control sm"  >
                   </div>
                      </form>
                  
                  
              <div class="form-group">
                <label for="">Date of birth </label> 
 

<div class="input-group date" data-provide="datepicker">
    <input type="text" name="date_birth" class="form-control">
    <div class="input-group-addon">
        <span class="glyphicon glyphicon-th"></span>
    </div>
</div>
</form>
                  

            </div>
               </div>




               <div class="form-group">
                <label for="">City </label> 
                     
                      <select class="form-control" name="city_id" id="">
                      @foreach ($city as $item)
                      <option value="{{$item->id}}">{{$item->city}}</option>    
                      @endforeach  
                      </select>
                    </div>
  
                    </form>
              
              
         
                      
                          <div class="form-group">
                              <input type="hidden" name="category_id" id="category_id" value="1" class="form-control sm"  >
                           </div>
                              </form>
                              <div class="form-group">
                                <label for="">Coupon </label> 
                                     
                                      <select class="form-control" name="coupon_id" id="">
                                      @foreach ($coupon as $item)
                                      <option value="{{$item->id}}">{{$item->name}}</option>    
                                      @endforeach  
                                      </select>
                                    </div>
                  
                                    </form>
                              
                              
                  <div class="form-group">
                    <label for="">Api Token </label> 
                     <input type="text" name="api_token" id="api_token" class="form-control sm"  >
                   </div>
 
                   <button type="button" class="btn btn-danger" onclick='token();'>Generate Token</button>

                       </form>
                  
                       <div class="form-group">
                        <label for="">Remember Token </label> 
                         <input type="text" name="remember_token" id="remember_token" class="form-control sm"  >
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
     
 
  

document.getElementById("api_token").value  = returnHash() ;
       }
    

 
function returnHash(){
    abc = "abcdefghijklmnopqrstuvwxyz1234567890".split("");
    var token=""; 
    for(i=0;i<12;i++){
         token += abc[Math.floor(Math.random()*abc.length)];
    }
    return token; //Will return a 32 bit "hash"
}
    </script>
</body>
</html>
@endsection