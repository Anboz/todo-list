<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{	
			 if($this->input->post('send_info'))
			 $this->addToList();				 
             $this->getBody();
		
	}
	
	 public $pages = array();
	
	public function addToList(){
		$this->load->library("form_validation");
		$this->form_validation->set_rules("userName", "Имя ползователь", "required");
		$this->form_validation->set_rules("email", "Email", "required");
		$this->form_validation->set_rules("todotext", "Задания", "required");
		if($this->form_validation->run()){	
			$this->load->model("SaveData_model");
			$data = array(
			'user_name' =>trim($this->input->post('userName')),
			'user_email'=>trim($this->input->post('email')),
			'todo_text' =>trim($this->input->post('todotext')),
			'status'    =>   0
			);
		$this->SaveData_model->insert_data($data);
		echo "<h1 align='center'>Ваш задания сохранено</h1>";	
		}else{		    
			echo "<h1 align='center' class='text-danger'>Пожалуйса полоните всех полях!</h1>";
		}
		 
		 
	}
	
	function getBody(){
		  $_GET['page'] = (isset($_GET['page'])) ? $_GET['page'] : 1;
		    $this->load->model("Load_data_model");
		    $amount_pages = 1;
	         if($this->Load_data_model->count_data() > 10){
	         	$amount_pages = ($this->Load_data_model->count_data() % 10 > 0) ? (int)($this->Load_data_model->count_data() / 10) + 1 : $this->Load_data_model->count_data() / 10;
	         } 
		      	   
	          $order =(isset($_POST['user_email']))? "user_email" : (isset($_POST['todo_text']) ? "todo_text" : "user_name");         		     		     	 	   
	         $data['todo_list'] =  $this->Load_data_model->select_data($order,( isset($_GET['page']) && $_GET['page']  > 0) ? ($_GET['page'] - 1) * 10 : 1)->result();
	       $_GET['amount_pages'] = $amount_pages;
	       	            
		   $this->load->view('welcome', $data);
		
	}
	
	        
	
	
	
}
