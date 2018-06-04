<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>SI - Sistema de Informação</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> <!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/estilo.css"> <!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Minha folha de estilo -->
	
	<script src="js/jquery.js"></script>
	<script src="js/myscript.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>			
    
    <div class="container-fluid">
    
        <?php
            include_once "file/header.php";

            echo "<div class='row'>";

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
</html>