
<?php
ini_set('display_errors' ,1);

class Conecta {
   public function getConection(){
    // Conectando PDO
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=devestacio", "root", "");
            $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
        } catch (PDOException $erro){
            echo "Erro ao conectar:". $erro->getMenssage();
        } catch (Exception $e){
            echo "Erro ao executar o programa: ". $e->getMessage();
        }
    }

    // Conexão de banco de dados sem Objetos e Classes
    public function conectaBD(){
        $db = mysql_connect("localhost", "root", "") or die (mysql_error());
        $conn = mysql_select_db ("phpLoja", $db) or die (mysql_error());
        if ($conn){
            return true;
        }else{
            return false;
        }
    }
    public function desconectaBD(){
        mysqli_close($conn);
    }
}
