@extends('crudbooster::admin_template')
@section('content')
<form class="form-horizontal" method="post"  enctype='multipart/form-data' action="/admin/notify">
 
  <fieldset>
 
 
      <input type="hidden" name="_token" value="{{csrf_token()}}">  
    <!-- Form Name -->
    <legend>Send Push Notify</legend>
    
    <!-- Multiple Radios -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="radios">Select Type Users</label>
      <div class="col-md-4">
      <div class="radio">
        <label for="radios-0">
          <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
          Dermatology
        </label>
        </div>
      <div class="radio">
        <label for="radios-1">
          <input type="radio" name="radios" id="radios-1" value="2">
          Informatory
        </label>
        </div>
      </div>
    </div>
    
    <!-- Select Multiple -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="users">Select User</label>
      <div class="col-md-4">
           <select name="framework" id="framework"  multiple>
            @foreach ($users as $item)
            <option value="{{'user_id:'.$item->id.',' . 'category:'.$item->category_id}}">{{$item->email}}</option>    
 
            @endforeach  
   
        </select>
      </div>
    </div>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="titolo">Titolo</label>  
      <div class="col-md-4">
      <input id="titolo" name="titolo" type="text" placeholder="placeholder" class="form-control input-md" required="">
      <span class="help-block">help</span>  
      </div>
    </div>
    
    <!-- Textarea -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="Contenido">Contenido</label>
      <div class="col-md-4">                     
        <textarea class="form-control" id="Contenido" name="Contenido">Your Message</textarea>
      </div>
    </div>
    
    <!-- Button (Double) -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="button1id"></label>
      <div class="col-md-8">
        <button type="submit" name = "submit" lass="btn btn-success">Sent</button>
        <button id="button2id" name="button2id" class="btn btn-danger">Cancell</button>
      </div>
    </div>
    
    </fieldset>
    </form>
    

@endsection