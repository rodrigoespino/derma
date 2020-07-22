@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style_admin.css">
 
</head>
 <div class="pane panel-default">
 
  <div class="panel panel-primary">
 
    <div class="panel-heading">Select File</div>
     <div class="panel-body">
      <div class="alert alert-danger" role="alert">
        Atenzione: Tipo di file *.csv
        <p> </p>
        Colonne:
        NOME| COGNOME | EMAIL
        <p> </p>

        Questo è un file  <a href="test_final2.csv" class="alert-link">di esempio</a>.
      </div>
        <form method="post"  enctype='multipart/form-data' action="/admin/add_csv_gruppi">

            <input type="hidden" name="_token" value="{{csrf_token()}}">  
            <input type="hidden"  name="cupon" id="cupon">
            <input type="hidden"  name="mail" id="mail">
            <input type="hidden"  name="group_id" id="group_id" value="{{$group->id}}">
            <input type="hidden"  name="category_id" id="category_id" value="{{$category->id}}"}>

      
            
            
            <input type="file" name="excel" id="excel"  required>
            
                 <label for=""> Group </label> 
                     
                      <select class="form-control" name="group_id" id="group_id" disabled >
                      <option value="{{$group->id}}">{{$group->name}}</option>    
                     </select>
                 
                <div>

  
           
                    <label for=""> Type User </label> 
                     
                    <select class="form-control" name="category_id" id="category_id" disabled>
                          <option value="{{$category->id}}">{{$category->name}}</option>    
                    </select>
                    <div>
                     <label for="">Send Email </label> 
                          
                  <input type="checkbox" onclick="myFunction()" id="emailsen"  >
              </div>
              <div>
                    <label for="">Generate Coupon </label> 

                     <input type="checkbox" onclick="myFunction() " name="generatecoupon"  id="generatecoupon"  >
                    </div>
                  </div>


                        <input  type="submit" name = "submit" class="btn btn-primary" value ="Carica il file csv">  
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