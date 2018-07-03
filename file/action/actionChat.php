<?php 
  if((isset($_GET['action']) == 'atualizar') and isset($_COOKIE['nome'])){
    
      $id = $_COOKIE['id'];

      //Pega a data atual e coloca no padrão Brasileiro
      $hojeEx = date("d:m:Y");
      $hojeEx = explode(":", $hojeEx);
      $dia = $hojeEx[0];
      $hoje = "$hojeEx[0]/$hojeEx[1]/$hojeEx[2]";
                
      require_once "../dao/MensagemDao.php";
      $msgDao = new MensagemDao();

      $dados = $msgDao->listAll();
      // if($dados->rowCount() == 0){
      //     echo "<div class='balaoChat'><p>Ainda não há mensagens para ser visualizadas!</p></div><br>";
      // }

      foreach ($dados as $d) {
        $msger = $d['mensagem'];
        $timer = $d['timer'];
        $name = $d['nome'];
                    
        //Pega a data da mensagem e coloca no padrão Brasileiro
        $timer = explode(" ",$timer);

        //data: dia/mes/ano
        $dataFormulada = explode("-", $timer[0]);
        $day = $dataFormulada[2];
        $dataMens = "$dataFormulada[2]/$dataFormulada[1]/$dataFormulada[0]";

        //data: hora/minuto
        $datChat = explode(":", $timer[1]);

        if ($id == $d['idPessoa']) {
          $position= "right";
        }else{
          $position= "left";
        }                    
         
        echo "<li class='listMens' onclick='autoScroll()'><div class='balaoChat ".$position."' id='retorno'><strong>".$name."</strong>:".$msger." <a id='right'>".$datChat[0].":".$datChat[1]."</a></div></li>";

      }                    
  }

  if(isset($_POST['action']) and isset($_COOKIE['nome'])){
    if($_POST['action'] == 'enviar'){
      date_default_timezone_set("America/Sao_Paulo");

      require_once "../model/Mensagem.php";
      $mensagem = new Mensagem();

      $mensagem->setMsg(htmlspecialchars($_POST['mensagem']));
      $mensagem->setNome(strip_tags($_COOKIE['nome']));
      $mensagem->setId(strip_tags($_COOKIE['id']));
      $mensagem->setTime(date("Y:m:d:H:i:s"));
      $mensagem->setIp($_SERVER['REMOTE_ADDR']);

      require_once "../dao/MensagemDao.php";
      $msgDao = new MensagemDao();

      if($msgDao->enviar($mensagem) == true){
        header("Location:../../index.php?url=chat");
      }else{
        echo "não foi possivel salvar";
      } 
    }
  } 
?>