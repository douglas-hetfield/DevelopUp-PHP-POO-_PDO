<?php
class Archive{
	private $about;
	private $description;
	private $name;
	private $type;
	private $dateTime;

	public function setAbout($about){
		$this->about = $about;
	}

	public function getAbout(){
		return $this->about;
	}

	public function setDescription($description){
		$this->description = $description;
	}

	public function getDescription(){
		return $this->description;
	}

	public function setName($name){
		$this->name = $name;
	}

	public function getName(){
		return $this->name;
	}

	public function setType ($type){
		$this->type = $type;
	}

	public function getType(){
		return $this->type;
	}

	public function setDateTime($dateTime){
		$this->dateTime = $dateTime;
	}

	public function getDateTime(){
		return $this->dateTime;
	}
		
}
?>