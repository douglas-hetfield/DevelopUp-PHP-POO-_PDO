<?php
class Mensagem {
    private $id;
    private $nome;
    private $msg;
    private $ip;
    private $time;

    public function setNome ($nome){
        $this->nome = $nome;
    }

    public function getNome (){
        return $this->nome;
    }
    
    public function setId ($id){
        $this->id = $id;
    }
    
    public function getId (){
        return $this->id;
    }
    
    function setMsg($msg) {
        $this->msg = $msg;
    }

    function getMsg() {
        return $this->msg;
    }
    
    function setIp($ip) {
        $this->ip = $ip;
    }

    function getIp() {
        return $this->ip;
    }
    
    public function setTime($time){
        $this->time = $time;
    }
    
    public function getTime(){
        return $this->time;
    }
}
