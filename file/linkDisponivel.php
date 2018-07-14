<div class="col-md-9">
	<?php
	//pega o email do usuario se ele estiver logado para preencher a lacuna do email
	if(isset($_COOKIE['email']) and empty($_POST['log'])){
		$email = $_COOKIE['email'];
	}

	//pega o resultado via GET se o formulario foi enviado com sucesso
		if (isset($_GET['mens'])){
           echo "<div class='alert alert-success'> <strong>Obrigado por enviar sua ideia!</strong></div>";
        }
    ?>
	<h3>Deixe aqui sua ideia!</h3>
	<form action="file/action/actionMensagem.php" method="post">
		<input type="hidden" name="EnviarIdeia" id="EnviarIdeia" value="ok">
		<div class="form-group">
			<label for="email">Email:</label>
			<input class="form-control" type="email" name="email" value="<?php if(isset($email)){ echo $email;} ?>" <?php if(isset($email)){ echo "readonly";}?> required>
		</div>

		<div class="form-group">
			<label for="textIdeia">Descreva sua Ideia:</label>
			<textarea class="form-control textAreaLD" cols="30" rows="4" name="textIdeia" id="textIdeia" required></textarea>
		</div>

		<div class="floatRight">
			<button class="btn btn-warning" value="enviar">Enviar</button>
		</div>
	</form>
</div>