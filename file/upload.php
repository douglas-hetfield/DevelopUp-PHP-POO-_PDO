<div class="col-md-9 col-sm-9">
	<?php
		if(isset($_GET['e'])){
			$e = htmlspecialchars($_GET['e']);
			if($e == 'erro'){
				echo "<div class='alert alert-danger'><strong>Oops... tivemos problemas com Upload do arquivo, tente novamente!</strong></div>";
			}else if($e == 'success'){
				echo "<div class='alert alert-success'><strong>Arquivo enviado com succeso!</strong></div>";
			}
		}
	?>
	<h3>Compartilhamento de Arquivo</h3>
	<div class="form-group ">
		<form action="file/util/upLoadFile.php" method="post" enctype="multipart/form-data">
			
			<div class="form-group col-md-12">
				<label for="archive">Upload do arquivo</label>
				<input type="file" class="btn btn-success" name="archive" id="archive"  required>
				<p>*Envie qualquer tipo de arquivo para compartilhar com outras pessoas!</p>
			</div>

			<div class="form-group col-md-6">
				<label for="about">Categoria do Arquivo:</label>
				<select name="about" id="about" class="form-control" required>
					<option value="">Selecione</option>
					<option value="desenvolvimento">Desenvolvimento (Functions, Classes, Scripts..)</option>
					<option value="UML">UML (StarUML, BrModelo...)</option>
					<option value="algoritmo">Algoritmos (VisualG)</option>
					<option value="Banco de Dados">Banco de Dados</option>
					<option value="redes">Redes (IOS, Packet Tracer, GNS3..)</option>
					<option value="Linux">Linux</option>
					<option value="Windows">Windows</option>
					<option value="pdf">PDFs de Conhecimento</option>
					<option value="outros">Outros</option>
				</select>
			</div>

			<div class="form-group col-md-6">
				<label for="description">Descrição:</label>
				<input class="form-control" type="text" autocomplete="off" name="description" placeholder="Descreva o arquivo que você está enviando para ser compartilhado!" maxlength="120" required>	
			</div>
			<button class="btn btn-primary justRight" type="submit" id="go" name="go">Enviar</button>
			
		</form>
	</div>
</div>