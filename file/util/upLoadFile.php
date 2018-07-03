<?php
ini_set('default_charset', 'UTF-8');
if(empty($_COOKIE['email']) or empty($_POST['about'])){
    header("Location:../../index.php?url=upload");
}

//Pega a data e a hora atual
date_default_timezone_set("America/Sao_Paulo");
$date = date("Y_m_d-H_i_s");
// Pasta onde o arquivo vai ser salvo
$_UP['pasta'] = '../../archives/';
// Tamanho máximo do arquivo (em Bytes)
$_UP['tamanho'] = 1024 * 1024 * 10; // 10Mb
// Array com as extensões Negadas
$_UP['extensoes'] = array('jpg', 'png', 'pdf');
// Renomeia o arquivo? (Se true, o arquivo será salvo como .png e um nome único)
$_UP['renomeia'] = false;
// Array com os tipos de erros de upload do PHP
$_UP['erros'][0] = 'Não houve erro';
$_UP['erros'][1] = 'O arquivo no upload é maior do que o limite de 10Mb';
$_UP['erros'][2] = 'O arquivo ultrapassa o limite de tamanho especifiado no HTML';
$_UP['erros'][3] = 'O upload do arquivo foi feito parcialmente';
$_UP['erros'][4] = 'Não foi feito o upload do arquivo';

// Verifica se houve algum erro com o upload. Se sim, exibe a mensagem do erro

if ($_FILES['archive']['error'] != 0) {
    die("Não foi possível fazer o upload, erro:" . $_UP['erros'][$_FILES['archive']['error']]);
    exit; // Para a execução do 
}
// Caso  chegue a esse ponto, não houve erro com o upload e o PHP pode continuar. leo.jog.jpg
// Faz a verificação da extensão do arquivo
$extensao = explode('.', $_FILES['archive']['name']);
$extensao = strtolower(end($extensao));

if (array_search($extensao, $_UP['extensoes']) === true) {
    echo "Por favor, envie arquivos com as seguintes extensões: jpg, png...";
    exit;
}
// Faz a verificação do tamanho do arquivo
if ($_UP['tamanho'] < $_FILES['archive']['size']) {
    echo "O arquivo enviado é muito grande, envie arquivos de até 10Mb.";
    exit;
}
// O arquivo passou em todas as verificações, hora de tentar movê-lo para a pasta
// Primeiro verifica se deve trocar o nome do arquivo
if ($_UP['renomeia'] == true) {
    require_once "../dao/conexao.php";
    $email = $_COOKIE['email'];
  
    require_once "../dao/PessoaDao.php"; 
    $pessoaDao = new PessoaDao();

    $result=$pessoaDao->findId($email);
    if(isset($result)){
      $id =$result['idPessoa'];
    }

    $nome_final = "$id.$date.$extensao";
} else {
    // Mantém o nome original do arquivo
    $nome_final = $_FILES['archive']['name']; 
}
  
// Depois verifica se é possível mover o arquivo para a pasta escolhida
if (move_uploaded_file($_FILES['archive']['tmp_name'], $_UP['pasta'] . $nome_final)) {
    require_once "../model/Archive.php";
    $archive = new Archive();

    $archive->setName(htmlspecialchars($nome_final));
    $archive->setType(htmlspecialchars($extensao));
    $archive->setDateTime($date);
    $archive->setAbout(htmlspecialchars($_POST['about']));
    $archive->setDescription(htmlspecialchars($_POST['description']));

    require_once "../dao/ArchiveDao.php";
    $archiveDao = new ArchiveDao();

    if($archiveDao->salvar($archive)){
      echo "Upload efetuado com sucesso!";
      header("Location:../../index.php?url=upload&e=success");
    }else{
      echo "Oops... Ocoreu um erro aqui! Tente novamente please!";
      header("Refresh:3, url=../../index.php?url=upload&e=erro");
    }
  
} else {
    // Não foi possível fazer o upload, provavelmente a pasta está incorreta
    echo "Não foi possível enviar o arquivo, tente novamente";
}
?>