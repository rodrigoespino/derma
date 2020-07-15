<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Illuminate\Support\Str;
	use Illuminate\Contracts\Encryption\DecryptException;
	use Illuminate\Support\Facades\Crypt;
 	class AdminPipeGrupoController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

 			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = true;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true; 
			$this->button_import = false;
			$this->button_export = true;
 		//	var_dump('Hola');
			$this->table = "group_user";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"User Id","name"=>"user_id","join"=>"users,email"];
			$this->col[] = ["label"=>"Group Id","name"=>"group_id","join"=>"group,name"];
			//$this->col[] =  array("label"=>"Nome Cognome","name"=>"user_id","join"=>"users,user_meta_id", "join"=>"user_meta,name as Dios","callback_php"=>'App\Http\Controllers\AdminPipeGrupoController::pepe($row->Dios)');
			$this->col[] = array("label"=>"Nome","name"=>"user_id","join"=>"user_id,id", "join"=>"users,user_meta_id","visible"=>false);

		//	$this->col[] = array("label"=>"Nome","name"=>"users.user_meta_id","join"=>"user_meta,name");

			$this->col[] = array("label"=>"Cupon","name"=>"user_id","join"=>"user_id,id", "join"=>"users,coupon_id","visible"=>false);
			//$this->col[] = ["label"=>"Name","name"=>"user_meta_id","join"=>"user_meta,name"];

			$this->col[] = array("label"=>"Cupon","name"=>"users.coupon_id","join"=>"coupon,name");
			 /*
			 You can try like this
				$this->col[] = array("label"=>"Jabatan","name"=>"profil_id","join"=>"profils,jabatan_id",
				"visible"=>false);
				$this->col[] = array("label"=>"Jabatan","name"=>"profils.jabatan_id",
				"join"=>"jabatan,nama_jabatan");
…

			 /*
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'User Id','name'=>'user_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'users,email'];
			$this->form[] = ['label'=>'Group Id','name'=>'group_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'group,name'];
			
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"User Id","name=>$this->hola()y,success,warning,danger)
	 
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();
			$this->button_selected[] = ['label'=>'Generate Cupon','icon'=>'fa fa-check','name'=>'generate_cupon'];


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            			//$button_name is a name that you have set at button_selected 
			
			if($button_name == 'generate_cupon') {
		 
					 
						foreach ($id_selected as $v) {

							$users_id = Db::table('group_user')->select('user_id')->where('id', $v)->first();
							$coupon = Db::table('users')->select('coupon_id')->where('id', $users_id->user_id)->first();
	 
							$token = Str::random(8); //GENERATE TOKEN
							print_r($token);

							if($coupon->coupon_id == 0) { //SI NON TROVA COUPON

												
										$id_coupon = DB::table('coupon')->insertGetId( //INSERICI COUPON
											[ 'name' => $token ]
										);
						 
							 // UPDATE TABLE USER ID CUPON
							 DB::table('users')
							 ->where('id', $users_id->user_id)
							 ->update(array('coupon_id' => $id_coupon));
								  
 
						}
					}

 				}
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
		*/    
		public function pepe($columna) {
			//Your code here
	 	 $datos= Crypt::decryptString($columna);
	//	   print_r($columna);
	        var_dump($columna);
			$dato = "HOLA";
		   return $dato;
	    }

	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }
	 
		public function generate_cupon()

		{
		var_dump("generate_cupon");
		exit();

			//Your code here

	    }
	    //By the way, you can still create your own method in here... :) 


	}