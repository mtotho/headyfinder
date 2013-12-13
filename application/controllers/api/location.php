<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Location extends CI_Controller {

	public function index()
	{
		
	}

	public function post(){
		error_log("Posting Location");
		error_log(print_r($_POST, true));

		$name=$this->input->post("name");
		$street=$this->input->post("street");
		$deliveryday=$this->input->post("deliveryday");
		$lat=$this->input->post("lat");
		$lng=$this->input->post("lng");

		if($lat=="") 
			$lat=0;

		if($lng=="")
			$lng=0;

		$location=$this->checkEntry($name, $street);

		//No existing, insert
		if(sizeof($location)==0){
			$query = "insert into locations set 
						name=?,
						deliveryday=?,
						street=?,
						lat=?,
						lng=?";
			$this->db->query($query, array($name, $deliveryday, $street, $lat, $lng));
			error_log($this->db->last_query());

		}else{
			//Update lat lng values
			if($location->lat=="" || $location->lat==0){
				$query = "update locations set lat=?, lng=? where id=?";
				$this->db->query($query, array($lat, $lng, $location->id));
			}
		}
	}

	public function get(){

		$day=$this->input->post("day");
		if($day==""){
			$query = "select * from locations";
		}else{
			$query = "select * from locations where deliveryday like '".$day."%'";
		}

		
		$results = $this->db->query($query);

		$results = $results->result_array();

		echo json_encode($results);
	}

	public function checkEntry($name, $street){
		$query = "select * from locations where name=? and street=?";
		$results = $this->db->query($query, array($name, $street));

		//if($results->num_rows()==0){
		//	return 0;
		//}else{
			return $results->row();
		//}
	}

}

/* End of file location.php */
/* Location: ./application/controllers/api/location.php */