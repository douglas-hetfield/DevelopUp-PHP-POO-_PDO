<div class="col-md-9 col-sm-9">
	<?php
		$dado = htmlspecialchars($_POST['search']);
		echo "<h3>Buscar por: $dado</h3>";

		echo "<table name='tabelaDados' id='tabelaDados' class='table table-bordered table-responsive'>
				<thead>
					<tr>
	    				<th scope='col'>Nome do Arquivo</th>
	    				<th scope='col'>Categoria</th>
	    				<th scope='col'>Descrição</th>
	    				<th scope='col'>Formato</th>
	    				<th scope='col'>Enviado por</th>
	    				<th scope='col'>Data do Upload</th>
	  				</tr>
	  			</thead>
	  		<tbody>";

		require_once "dao/ArchiveDao.php";
		$archiveDao = new ArchiveDao();

		$dados = $archiveDao->search(htmlspecialchars($_POST['search']));

		foreach ($dados as $key) {
			$data = explode(" ", $key['data']);
			$data = explode("-", $data = $data[0]);
			$data = $data[2]."/".$data[1]."/".$data[0];

			$name = explode(".", $key['name']);
			$name = $name[0];
			$pessoa = $key['nome']. " ".$key['sobrenome'];


			echo "<tr class='linhaDaTabela' data-destino='".$key['name']."'>
					<td scope='row'>".$name."</td>
				    <td style='color:blue;'>".$key['about']."</td>
				    <td>".$key['description']."</td>
				    <td style='color:red;'>".$key['type']."</td>
				    <td>".$pessoa."</td>
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