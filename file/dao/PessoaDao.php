<?php
ini_set('display_errors' ,1);

class PessoaDAO {
    public function salvar(Pessoa $pessoa) {
        require_once 'conexao.php';
        try {
            $name = $pessoa->getNome();
            $sobrenome = $pessoa->getSobrenome();
            $email = $pessoa->getEmail();
            $pws = $pessoa->getPws();
            $color = $pessoa->getColor();

            $con = new Conecta();
            $sql = "INSERT INTO Pessoa (nome, sobrenome, email, pws, color) VALUES (:nome,:sobrenome,:email,:pws,:color)";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":nome",$name);
            $stmt->bindParam(":sobrenome",$sobrenome);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":pws", $pws);
            $stmt->bindParam(":color",$color);
            $stmt->execute();
            return true;
        } catch (PDOException $exc){
            echo "Erros de: ". $exc->getMessage();
        }

    }
    public function atualizar(Pessoa $pessoa){
        require_once "conexao.php";
        try{
            $name = $pessoa->getNome();
            $sobrenome = $pessoa->getSobrenome();
            $email = $pessoa->getEmail();
            $pws = $pessoa->getPws();
            $color = $pessoa->getColor();
            $idpessoa = $_COOKIE['id'];

            $con = new Conecta();
            $sql = "update pessoa set nome=:nome, sobrenome=:sobrenome, email=:email, pws=:pws, color=:color where idPessoa=:idpessoa";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":nome", $name);
            $stmt->bindParam(":sobrenome", $sobrenome);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":pws", $pws);
            $stmt->bindParam(":color", $color);
            $stmt->bindParam(":idpessoa", $idpessoa);
            $stmt->execute();
            return true;
        }catch(PDOException $exc){
            echo "Erro de: ". $exc->getMessage();
        }

    }

    public function listarTodos(){
        require_once 'conexao.php';
        try {
            $con = new Conecta();
            $sql = "SELECT * from Pessoa";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }
    }

    public function buscarLogin($email, $pws) {
        require_once 'conexao.php';
         try {
			 
            $con = new Conecta();
            $sql = "SELECT nome, sobrenome, idPessoa, color from Pessoa where email=:email and pws=:pws";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindValue(":email", $email);
            $stmt->bindValue(":pws", $pws);
            $stmt->execute();
            $dados = $stmt->fetch(PDO::FETCH_BOTH);
            return $dados;
        } catch (PDOException $exc){
            //echo "Erros de:". $exc->getMessage();
        }
    }

     public function buscarID($id){
        require_once 'conexao.php';
        try {
            $con = new Conecta();
            $sql = "SELECT * from Pessoa where idPessoa = :id";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }
    }

    public function findId($email){
        require_once "conexao.php";
        try{
            $con = new Conecta();
            $sql = "SELECT idPessoa FROM Pessoa where email=:email limit 1";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindValue(":email", $email);
            $stmt->execute();
            $dados = $stmt->fetch(PDO::FETCH_ASSOC);
            return $dados;
        }catch(PDOException $exc){
            echo "Erros de: ". $exc->getMessage();
        }
    }
}
