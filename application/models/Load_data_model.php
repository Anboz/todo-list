<?php
defined('BASEPATH') OR exit('No direct script access allowed');

 class Load_data_model extends CI_Model{
 	 
 	public function select_data($start = 1)
 	{ 		
 		$this->db->select('*');
 		$this->db->from("tbl_todolist");
 		$this->db->order_by('user_name');
 		$this->db->limit(10, $start);
 		$query = $this->db->get();
 		return $query;
 	}
 	public function count_data()
 	{ 		
 		$this->db->select('*');
 		$this->db->from("tbl_todolist"); 		 
 		$query = $this->db->get();
 		return count($query->result());
 	}
 	
 	
 }



?>