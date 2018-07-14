<?php 
	include_once "include/menssage.php";
?>

<div class="col-md-9  div-Principal"> <!-- Principal -->
    <h3>Olá<?php if(isset($_COOKIE['nome'])){ echo " ".$_COOKIE['nome'];} ?>, Bem-vindo!</h3>
    <p>Este site foi criado no intuido de compartilhar arquivos e informações entre alunos.</p>
    <p>No menu ao lado você irá encontrar links para diversas páginas: </p>
    <p><strong>Downloads</strong>: é uma página de arquivos disponibilizados pelas próprias pessoas que ultilizam este site!</p>
    <p><strong>Links disponiveis</strong>: deixe sua ídeia para implementarmos neste site.</p>
    <hr>
    <p><strong>Crie seu login para ter acesso a outras páginas como:</strong></p>
    <p><strong>Uploads</strong>: Você também poderá compartilhar diversos arquivos para outras pessoas baixarem.</p>
    <p><strong>Chat</strong>: todos que estiverem online poderá conversar entre si e compartilhar informações!</p>
      
</div>