<?php
ini_set('display_errors' ,1);

class ArchiveDAO {
    public function salvar(Archive $archive) {
        require_once 'conexao.php';
        try {
            $name = $archive->getNome();
            $sobrenome = $archive->getSobrenome();
            $email = $archive->getEmail();
            $pws = crypt($archive->getEmail(),$archive->getPws());
            $color = $archive->getColor();

            $con = new Conecta();
            $sql = "INSERT INTO Archive (nome, sobrenome, email, pws, color) VALUES (:nome,:sobrenome,:email,:pws,:color)";
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

    public function listarTodos(){
        require_once 'conexao.php';
        try {
            $con = new Conecta();
            $sql = "SELECT * from Archive";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }
    }

    public function lastId(){
    	require_once "conexao";
    	try{
    		$con= new Conecta();
    		$sql = "SELECT id from Archive order by id DESC limit 1";
    		$stmt = $con->getConection()->prepare($sql);
    		$stmt->execute();
    		return $stmt->fetchAll(PDO::FETCH_ASSOC);
    	}catch(PDOException $exc){
    		echo "Erros de: ". $exc->getMessage();
    	}
    }

    public function buscarLogin($email, $pw1) {
        require_once 'Conexao.php';
         try {
            $con = new Conecta();
            $sql = "SELECT nome from Archive where email=:email and pw1=:pw1";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":email", $email);
            $stmt->bindParam(":pw1", crypt($email,$pw1));
            $stmt->execute();
            $dados = $stmt->fetch(PDO::FETCH_BOTH);
            return $dados["nome"];
        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }

    }

     public function buscarID($id){
        require_once 'Conexao.php';
        try {
            $con = new Conecta();
            $sql = "SELECT * from Archive where idArchive = :id";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }
    }
}
?>