<?php
ini_set('display_errors' ,1);

class ArchiveDAO {
    public function salvar(Archive $archive) {
        require_once 'conexao.php';
        try {
            $id = $archive->getId();
            $name = $archive->getName();
            $about = $archive->getAbout();
            $description = $archive->getDescription();
            $type = $archive->getType();
            $date = $archive->getDateTime();

            $con = new Conecta();
            $sql = "INSERT INTO archive (idEnviado, name, description, about, type, data) VALUES (:id,:name,:description,:about,:type,:data)";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->bindParam(":name",$name);
            $stmt->bindParam(":description",$description);
            $stmt->bindParam(":about", $about);
            $stmt->bindParam(":type", $type);
            $stmt->bindParam(":data",$date);
            $stmt->execute();
            return true;
        } catch (PDOException $exc){
            echo "Erros de: ". $exc->getMessage();
        }

    }

    public function listaComFiltro($link){
        require_once "conexao.php";
        try{
            $con = new Conecta();
            $sql = "select p.nome, p.sobrenome, a.about, a.description, a.name, a.type, a.data from archive as a, pessoa as p where a.idEnviado = p.idPessoa and about = :about";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":about", $link);
            $stmt->execute();
            $dados = $stmt->fetchAll(PDO::FETCH_ASSOC); 
            return $dados;

        }catch(PDOException $exc){
            echo "Erros de ". $exc->getMessage();
        }
    }

    public function listarTodos(){
        require_once 'conexao.php';
        try {
            $con = new Conecta();
            $sql = "SELECT p.nome, p.sobrenome, a.about, a.description, a.name, a.type, a.data from archive as a, pessoa as p where a.idEnviado = p.idPessoa";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->execute();
            $dados = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $dados;

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

    public function search($link){
        require_once "conexao.php";
        try{
            $con = new Conecta();
            $sql = "select p.nome, p.sobrenome, a.about, a.description, a.name, a.type, a.data from archive as a, pessoa as p where a.idEnviado = p.idPessoa and about like :about or a.idEnviado = p.idPessoa and description like :about";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindValue(":about", "%". $link ."%");
            $stmt->execute();
            $dados = $stmt->fetchAll(PDO::FETCH_ASSOC); 
            return $dados;

        }catch(PDOException $exc){
            echo "Erros de ". $exc->getMessage();
        }
    }

}
?>