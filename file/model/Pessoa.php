<?php

class Pessoa {
    private $idPessoa;
    private $nome;
    private $sobrenome;
    private $email;
    private $pws;
    private $color;

    public function setNome ($nome){
        $this->nome = $nome;
    }

    public function getNome (){
        return $this->nome;
    }
    
    public function setSobrenome ($sobrenome){
        $this->sobrenome = $sobrenome;
    }
    
    public function getSobrenome (){
        return $this->sobrenome;
    }
    
    function setEmail($email) {
        $this->email = $email;
    }

    function getEmail() {
        return $this->email;
    }
    
    function setPws($pws) {
        $this->pws = $pws;
    }

    function getPws() {
        return $this->pws;
    }
    
    public function setColor($color){
        $this->color = $color;
    }
    
    public function getColor(){
        return $this->color;
    }

    public function setIDPessoa($id){
        $this->idPessoa = $id;
    }

    public function getIDPessoa(){
        return $this->idPessoa;
    }
}
