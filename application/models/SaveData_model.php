<?php
defined('BASEPATH') OR exit('No direct script access allowed');

 class SaveData_model extends CI_Model{
 	public function insert_data($data)
 	{
 		$this->db->insert('tbl_todolist', $data); 	
 	}
 	
 	public function select_data($sart)
 	{
 		
 		$this->db->select('*');
 		$this->db->from("tbl_todolist");
 		$this->db->order_by('user_name');
 		$this->db->limit(10, $start);
 		$query = $this->db->get();
 		return $query;
 	}
 	
 	
 	
 }



?>