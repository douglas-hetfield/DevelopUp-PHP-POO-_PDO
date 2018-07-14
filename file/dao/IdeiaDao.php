<?php
ini_set('display_errors' ,1);

class IdeiaDAO {
	public function salvar($email, $ideia){
		require_once "conexao.php";
		try{
			$con = new Conecta();
			$sql = "insert into ideia (email, ideia) values(:email, :ideia)";
			$stmt = $con->getConection()->prepare($sql);
			$stmt->bindParam(":email", $email);
			$stmt->bindParam(":ideia", $ideia);
			$stmt->execute();
			return true;
		}catch(PDOException $e){
			echo "ERRO: " . $e->getMessage();
		}
	}
}

?>