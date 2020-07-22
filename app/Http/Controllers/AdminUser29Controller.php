<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use Illuminate\Contracts\Encryption\DecryptException;
	use Illuminate\Support\Facades\Crypt;
	class AdminUser29Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
  



			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "Lista Informatori";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = true;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon_text";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = false;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "users";

			# START COLUMNS DO NOT REMOVE THIS LINE
				# START COLUMNS DO NOT REMOVE THIS LINE

				$this->col = [];
 				$this->col[] = ["label"=>"Email","name"=>"email"];
		 		$this->col[] = ["label"=>"Categoria","name"=>"category_id","join"=>"category,name"];
  
				$this->col[] = ["label"=>"Nome - Cognome","name"=>"user_meta_id","callback_php"=>'App\Http\Controllers\AdminUser28Controller::convert_name_surname($row->user_meta_id)'];
				$this->col[] = ["label"=>"Coupon ","name"=>"coupon_id","join"=>"coupon,name"];
 				# END COLUMNS DO NOT REMOVE THIS LINE
	
				# START FORM DO NOT REMOVE THIS LINE
				$this->form = [];
				$this->form[] = ["label"=>"Email","name"=>"email"];
				$this->form[] = ["label"=>"Nome - Cognome","name"=>"user_meta_id","callback_php"=>'App\Http\Controllers\AdminUser28Controller::convert_name_surname($row->user_meta_id)'];
	
				$this->form[] = ['label'=>'Categoria','name'=>'category_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'category,name'];
	 			$this->form[] = ['label'=>'Coupon','name'=>'coupon_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'coupon,name'];
 		 
 			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Username','name'=>'username','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Category Id','name'=>'category_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'category,name','datatable_where'=>'id = 1'];
			//$this->form[] = ['label'=>'User Meta Id','name'=>'user_meta_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'user_meta,name'];
			//$this->form[] = ['label'=>'Coupon List Id','name'=>'coupon_list_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'coupon_list,name'];
			//$this->form[] = ['label'=>'Api Token','name'=>'api_token','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Remember Token','name'=>'remember_token','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Name','name'=>'user_meta.name','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			# OLD END FORM
      		/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font aw	public function getAdd()
		{
			//Your code here
			$data['page_title']=  ' Add New Dermatology';
			$this->cbView('post_add',$data); 



	    }

 	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
			$this->addaction = array();	       
			$this->addaction[] = ['label'=>'Aggiungi Dermatologi','url'=>CRUDBooster::mainpath('dermatologi_associati/[id]'),'icon'=>'fa fa-ban','color'=>'warning','showIf'=>"[category_id] == '3'", 'confirmation' => true];
			$this->addaction[] = ['label'=>'Vedi i Dermatologi','url'=>CRUDBooster::mainpath('view_data_informatore/[id]'),'icon'=>'fa fa-check','color'=>'success'];

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


		public function getEdit($id)
		{

		 
			$data['page_title']=  'Edit Informatori';
			/// Load Database USERS
			$data['row_users'] = Db::table('users')->where('id',$id)->first();
			$id_meta = 	$data['row_users']->user_meta_id; // EXTRACT USER_META _ID
			$id_cupon = $data['row_users']->coupon_id; // EXTRACT COUPON ID
			$data['row_cupon'] = Db::table('coupon')->where('id',$id_cupon)->first(); // SEARCH NAME COUPON
			// SEARCH DATA USER META AND DECRYPT
			$data['row_meta'] = Db::table('user_meta')->where('id',$id_meta)->first();
			$data['row_name'] = Crypt::decryptString($data['row_meta']->name);
			$data['row_surname'] = Crypt::decryptString($data['row_meta']->surname);
 
  			$this->cbView('edit_info',$data); 
	 
		}
		

		public function getAdd()
		{

 
			$data['page_title']=  ' Add New Informatori';
			// LOAD VIEW
			$this->cbView('add_info',$data); 
	 

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
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
			//Your code here
			//FILTER BY CATEGORY_ID //DERNATOLOGY
			DB::table('users')->where('email','=',"")->delete();

			$query->where('category_id',3);

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
			$id_tipo = 	 Request::get('tipo'); //ADD O EDIT.



			// add Data
			if($id_tipo =="1"){ //ADD FORM
			// insert coupon and extract id
	 
		  }
 
		  if($id_tipo =="2"){ // EDIT FORM
			var_dump($id_tipo);
			//exit();
			$data['row_users'] = Db::table('users')->where('id',$id)->first();
			$id_meta =  Request::get('user_meta_id');	  // EXTRACT USER_META _ID
			DB::table('user_meta')
			->where('id', $id_meta)
			->update(array('name' => Crypt::encryptString(Request::get('name'))));
			DB::table('user_meta')
			->where('id', $id_meta)
			->update(array('surname' => Crypt::encryptString(Request::get('surname'))));
			DB::table('users')->where('email','=',"")->delete();
			} 
 
 
	 
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
 		 
		var_dump($id);

		$id_tipo = 	 Request::get('tipo'); //ADD O EDIT.



			// add Data
			if($id_tipo =="1"){ //ADD FORM
			// insert coupon and extract id
	 
		$id_coupon = DB::table('coupon')->insertGetId(
			[ 'name' => Request::get('coupon') ]
		);
		// insert encrypt data in user_meta
		$id_user_meta = DB::table('user_meta')->insertGetId([
			'name'=> Crypt::encryptString(Request::get('name')),
		   'surname'=>  Crypt::encryptString(Request::get('surname'))
	 
	   ]);
					
		//extract id USERS	
	   $last_entry_user =$id;
 
		 
	   $emiliano =  Request::get('emilio');

	    DB::table('users')
	   ->where('id', $id)
	   ->update(array('user_meta_id' => $id_user_meta));
	   // Update Coupon_id		
	   DB::table('users')
	   ->where('id', $id)
	   ->update(array('coupon_id' => $id_coupon));


	   $result = (new test_email)->sendmail($emiliano,Request::get('name'),Request::get('surname'), Request::get('coupon'));




}
	  
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
 
			DB::table('users')->where('email','=',"")->delete();


	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
 
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



	    //By the way, you can still create your own method in here... :) 

	 
	}