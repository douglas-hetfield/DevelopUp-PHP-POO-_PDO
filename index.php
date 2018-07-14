<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<title>SCI - Sistema de Compartilhamento de Informação</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> <!-- Bootstrap -->
    <link rel="shortcut icon" href="img/favicon.png" />
	<link rel="stylesheet" type="text/css" href="css/estilo.css"> <!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Minha folha de estilo -->
	
	<script src="js/jquery.js"></script>
	<script src="js/myscript.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body onload="piscar()">
<div class="aqui" id="esconder">
        <img src="img/jequiti.jpg" name="image" id="image" class="jequiti">
</div> 			
    
    <div class="container-fluid">
    
        <?php
            include_once "file/header.php";

            echo "<div class='row geral'>";

                include_once "file/menu.php";

                if(isset($_GET['url'])){
                    $url = htmlspecialchars($_GET['url']);
                    include_once "file/$url.php";
                
                }else{
                    include_once "file/begin.php";
                }
            
            echo "</div>";
            
            include_once "file/footer.php";
        ?>
	
    </div>
</body>

<!-- correção do tamanho da tela -->
<!-- <script type="text/javascript">
    setTimeout(function() {$(document).ready(function(){
        var alturaTela = $(window).height();
        var head = alturaTela * 0.20;
        var body = alturaTela * 0.60;
        var foot = alturaTela * 0.20;

        document.getElementById('header').style.height = head;
        document.getElementByClassName('geral').style.height = body;
        document.getElementById('footer').style.height = foot;
        alert(body);
    }); }, 2000);
</script> -->
</html>

