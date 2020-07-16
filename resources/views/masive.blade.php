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
            <input type="input" name="pepe"  >  

            <input type="file" name="excel">
            
                 <label for="">Select Group </label> 
                     
                      <select class="form-control" name="group_id" id="">
                      @foreach ($group as $item)
                      <option value="{{$item->id}}">{{$item->name}}</option>    
                      @endforeach  
                      </select>
                      <div>
                       <label for="">Send Email </label> 
                            
                    <input type="checkbox"  id="emailsen">
                </div>
                <div>

                    <label for="">Generate Coupon </label> 

                     <input type="checkbox"  id="generatecoupon">
                    </div>
                    <label for="">Select User </label> 

                    <div class="radio">
                        <label><input type="radio" name="optradio" checked>Dermatology</label>
                      </div>
                      <div class="radio">
                        <label><input type="radio" name="optradio">Informatori</label>
                      </div>
                         <input  type="submit" name = "submit" class="btn btn-primary" value ="Inserici DATA!!!!">  
                </div>

   
            </form>
   </div>
</div>  
</body>
</html>
@endsection