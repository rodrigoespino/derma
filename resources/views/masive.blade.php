@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head>
<div class="pane panel-default">

    <div class="panel-heading">
        Add Masive data
    </div>
    <div class="panel-body">
        <form method="post"  enctype='multipart/form-data' action="/admin/data">

            <input type="hidden" name="_token" value="{{csrf_token()}}">  
            <input type="hidden"  name="cupon" id="cupon">
            <input type="hidden"  name="mail" id="mail">
            
            <input type="file" name="excel">
            
                 <label for="">Select Group </label> 
                     
                      <select class="form-control" name="group_id" id="">
                      @foreach ($group as $item)
                      <option value="{{$item->id}}">{{$item->name}}</option>    
                      @endforeach  
                      </select>
                 
                <div>
           
                    <label for="">Select Type User </label> 
                     
                    <select class="form-control" name="category_id" id="">
                    @foreach ($category as $item)
                    <option value="{{$item->id}}">{{$item->name}}</option>    
                    @endforeach  
                    </select>
                    <div>
                     <label for="">Send Email </label> 
                          
                  <input type="checkbox" onclick="myFunction()" id="emailsen"  >
              </div>
              <div>
                    <label for="">Generate Coupon </label> 

                     <input type="checkbox" onclick="myFunction() " name="generatecoupon"  id="generatecoupon"  >
                    </div>
               

                        <input  type="submit" name = "submit" class="btn btn-primary" value ="Inserici DATA!!!!">  
                </div>

   
            </form>
   </div>
</div>  
</body>
<script>
function myFunction() {
  // Get the checkbox
  var checkBox = document.getElementById("generatecoupon");
  var checkBox2 = document.getElementById("emailsen");

  // Get the output text
//  var text = document.getElementById("text");

  // If the checkbox is checked, display the output text
  if (checkBox.checked == true){
 document.getElementById("cupon").value = "1";

    //    text.style.display = "block";
  } else {
    document.getElementById("cupon").value = "0";

 
    //  text.style.display = "none";
  }

  if (checkBox2.checked == true){
 document.getElementById("mail").value = "1";

    //    text.style.display = "block";
  } else {
    document.getElementById("mail").value = "0";

 
    //  text.style.display = "none";
  }







}
</script>

</html>
@endsection