<?php 

	include "anterior.php";
?>
	<h1>Escolha sua nova foto</h1>
	<form action="atualizafoto2.php" method="post" enctype="multipart/form-data">
		<input type="file" required name="arquivo" class="btn btn-primary" accept="image/jpg, image/jpeg, image/png" /><p>* Só será aceito, formato de fotografias</p>

		<button type="submit" class="btn btn-primary">Enviar</button>
		
	</form>