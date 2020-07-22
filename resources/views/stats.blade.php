@extends('crudbooster::admin_template')
@section('content')
<!DOCTYPE html>
<html>
<head>
 
</head> 

<div class="pane panel-default">
    <input type="hidden" name="_token" value="{{csrf_token()}}">  

    <div class="panel-heading">
     </div>
    <div class="panel-body">
         <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>{{$derma}}</h3>
    
                  <p>Dermatologi</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
               </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>{{$gruppi}}<sup style="font-size: 20px"></sup></h3>
    
                  <p>Gruppi</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
               </div>
            </div>
 
   <!-- ./col -->
   <div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-yellow">
      <div class="inner">
        <h3>{{$minuti}}</h3>

    <p>Minuti Usati Oggi</p>
</div>
<div class="icon">
  <i class="ion ion-person-add"></i>
</div>
 </div>
</div>
<!-- ./col -->
<div class="col-lg-3 col-xs-6">
<!-- small box -->
<div class="small-box bg-red">
<div class="inner">
   <h3>{{$vistas}}</h3>

  <p>Informatori</p>
</div>
<div class="icon">
  <i class="ion ion-pie-graph"></i>
</div>
 </div>
</div>
<!-- ./col -->
</div>
</div>
</div>

        </body>
        </html>
        @endsection