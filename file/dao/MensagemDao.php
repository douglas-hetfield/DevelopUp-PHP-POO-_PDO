<?php
ini_set('display_errors' ,1);

class MensagemDAO {
    public function enviar($mensagens) {
        require_once 'conexao.php';
        try {
            $id = $mensagens->getId();
            $ip = $mensagens->getIp();
            $timer = $mensagens->getTime();
            $msg = $mensagens->getMsg();

            $con = new Conecta();
            $sql = "INSERT INTO mensagens (idPessoa, ip, timer, mensagem) VALUES (:idPessoa,:ip,:timer,:msg)";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->bindParam(":idPessoa", $id);
            $stmt->bindParam(":ip",$ip);
            $stmt->bindParam(":timer", $timer);
            $stmt->bindParam(":msg", $msg);
            $stmt->execute();
            return true;
        } catch (PDOException $exc){
            echo "Erros de: ". $exc->getMessage();
        }

    }

    public function ListAll() {
        require_once 'conexao.php';
         try {
            $con = new Conecta();
            $sql = "SELECT m.mensagem, m.timer, p.nome, p.idPessoa from mensagens as m, pessoa as p where m.idPessoa = p.idPessoa limit 70";
            $stmt = $con->getConection()->prepare($sql);
            $stmt->execute();
            $dados = $stmt->fetchAll(PDO::FETCH_ASSOC); 
            return $dados;
        } catch (PDOException $exc){
            echo "Erros de:". $exc->getMessage();
        }
    }
}
