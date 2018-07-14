<?php
	if(empty(($_POST['EnviarIdeia']))){
		header("Location: ../../index.php?url=linkDisponivel");
	}
	
	$ideia = htmlspecialchars($_POST['textIdeia']);
	$email = htmlspecialchars($_POST['email']);

	require_once "../dao/IdeiaDao.php";
	$ideiaDao = new IdeiaDao();
	if($ideiaDao->salvar($email, $ideia)){
		header("Location: ../../index.php?url=linkDisponivel&mens=sucess");
	}

	
?>