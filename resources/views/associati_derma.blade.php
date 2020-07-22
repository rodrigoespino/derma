@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head>
<link rel="stylesheet" type="text/css" href="style_admin.css">

<div class="pane panel-default">
     <div class="panel-body">
      <div class="panel panel-primary">
 
        <div class="panel-heading"></div>
         <div class="panel-body">
            <form method="post"  enctype='multipart/form-data' action="/admin/saveassocia">

             <input type="hidden" name="_token" value="{{csrf_token()}}">  
            <div class="form-group">
                <input type="hidden" name="informatore" id="informatore"  class="form-control input-sm" value="{{$informatore}}" >

                <label for=""> Seleziona dermatologo </label> 
                     
                <select class="form-control" name="dermatologi_id" id="dermatologi_id"  >
                    @foreach ($users as $item)
                    <option value="{{$item->id}}">{{$item->email}}</option>   
                    @endforeach  
           
 
 
                </select>

     
                    <div class="form-group">Informatore
 
 
                           </div>
                           <div class="form-group">
 
                      
                   <div class="margin">
                    
                 </div>
                 

                   <div class="form-group">

                   
     
    <div class="panel-footer">
      <input  type="submit" name = "submit" class="btn btn-primary" value ="Aggiungi Dermatologo">  
      <button type="button" onclick="history.back()" class="btn btn-danger">Annulla</button>
   </div>

</form>

   </div>
</div>   
 
 </body>
</html>
@endsection