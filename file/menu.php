<div class=" col-md-3 menu"> <!-- Menu Lateral -->
    <a class="AliMenu" href="index.php?url=begin"><li class="opc">Home</li></a>
    <?php if(isset($_COOKIE['nome'])){ ?>
    	<a class="AliMenu" href="index.php?url=chat"><li class="opc">Chat</li></a>
    	<a class="AliMenu" href="index.php?url=upload"><li class="opc">Uploads</li></a>
    <?php } ?>
    <a class="AliMenu" href="index.php?url=archives"><li class="opc">Downloads</li></a>
    <?php if(isset($_COOKIE['nome'])){ ?>
    <a class="AliMenu" href="index.php?url=cadastro"><li class="opc">Minhas Informações</li></a>
	<?php } ?>
    <a class="AliMenu" href="index.php?url=linkDisponivel"><li class="opc">Link Disponivel para idéias</li></a>
    <a class="AliMenu" href="index.php?url=linkDisponivel"><li class="opc">Link Disponivel para idéias</li></a>
    <a class="AliMenu" href="index.php?url=linkDisponivel"><li class="opc">Link Disponivel para idéias</li></a>
    <a class="AliMenu" href="index.php?url=linkDisponivel"><li class="opc">Link Disponivel para idéias</li></a>
</div>