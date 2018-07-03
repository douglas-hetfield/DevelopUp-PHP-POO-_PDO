<div class="col-md-9 col-sm-9">
	<!-- aqui entra um menu horizontal -->
	<nav class="navHort">
		<ul class="ulHort">
			<li class="liHort"><a class="linkMenuHort" href=""> Desenvolvimento</a></li>
			<li class="liHort"><a class="linkMenuHort" href="">Redes</a></li>
			<li class="liHort"><a class="linkMenuHort" href="">PDFs</a></li>
			<li class="liHortL"><a class="linkMenuHort" href="">Outros</a></li>
		</ul>
	</nav>

	<?php
		require_once "dao/ArchiveDao.php";
		$archiveDao = new ArchiveDao();

		$dados = $archiveDao->listarTodos();

		echo "<table class='table table-bordered table-responsive'>
				<thead>
					<tr>
	    				<th scope='col'>Nome do Arquivo</th>
	    				<th scope='col'>Categoria</th>
	    				<th scope='col'>Descrição</th>
	    				<th scope='col'>Formato</th>
	    				<th scope='col'>Data do Upload</th>
	  				</tr>
	  			</thead>
	  			<tbody>
  				";
				
		foreach ($dados as $buscar) {
			$data = explode(" ", $buscar['data']);
			$data = explode("-", $data = $data[0]);
			$data = $data[2]."/".$data[1]."/".$data[0];

			$name = explode(".", $buscar['name']);
			$name = $name[0];

			echo "<tr class='linhaDaTabela' data-destino='".$buscar['name']."'>
					<td scope='row'>".$name."</td>
				    <td style='color:blue;'>".$buscar['about']."</td>
				    <td>".$buscar['description']."</td>
				    <td style='color:red;'>".$buscar['type']."</td>
				    <td>".$data."</td>
				</tr>";
		}
		echo "	</tbody>
		</table>";
	?>
</div>
<script type="text/javascript">
	$(document).ready(function(){
	    $('tr').click(function(){
	        location.href = "file/util/downloadFile.php?name=" + $(this).attr("data-destino")
	    });
	});
</script>