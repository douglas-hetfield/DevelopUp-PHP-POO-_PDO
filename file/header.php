<?php 
    //Faz o login do usuario
    if(isset($_POST['email'])){
        $email = htmlspecialchars($_POST['email']);
        $pws = crypt($email, md5(htmlspecialchars($_POST['pws'])));
		
        require_once "dao/PessoaDao.php";
        $pessoaDao = new PessoaDao();
        
		$dados = $pessoaDao->BuscarLogin($email, $pws);
        if($dados['nome'] != ""){
            setcookie("nome", $dados['nome'], time()+ (3600 * 24) * 365);
            setcookie("color", $dados['color'], time()+ (3600 * 24) * 365);
            setcookie("email", $email, time()+ (3600 * 24) * 365);
            setcookie("id", $dados['idPessoa'], time()+ (3600 * 24) * 365);
            header("location:index.php");
        }else{
            $e = null;
            $e = "Email e/ou senha Invalido!";
            echo "<script>alert('Email e/ou senha Invalido!')</script>";
        }
	}

    if(isset($_GET['off'])){
        setcookie("nome", $dados['nome'], time() - 1);
        setcookie("color", $dados['color'], time() - 1);
        setcookie("email", $email, time() - 1);
        header("location:index.php");
    }

    //Muda a cor dos objetos
    if(isset($_COOKIE['color'])){
        $color = $_COOKIE['color'];
    }else{
        $color = "";
    }

?>

<header class="row">
    <div class="col-xs-3 col-md-3">
        <h2><a class="logoA" href="index.php?url=begin">DevelopUs</a></h2>
    </div>
    
    <div class="col-xs-6 col-md-6">
        <form action="index.php?url=search" method="post">
            <div class="form-group GroupFormH">
                <div class="col-md-11">
                    <input class="form-control " type="text" name="search" id="search" placeholder="Pesquisar" required>
                </div>
                <div class="col-md-1">
                    <button class="btn btn-primary ">Buscar</button>
                </div>
            </div>
        </form>
    </div>

    
   
    <div class="col-xs-3 col-md-3">

        <?php 
            if(isset($_COOKIE['nome'])){
        ?>
                <a href="index.php?off=1" class="btn btn-danger DropBtn">Logoff</a>
        <?php
            }else{
        ?>
    
        <button class="btn btn-success DropBtn" type="button" onclick="dropDiv()" name="btnDropdown" id="btnDropdown">Login<span class="caret"></span></button>
        
        <div class="DivDrop" id="dropDivItem" name="dropDivItem">
            <form class="form" method="post" action="">
                
                <div class="form-group login-div">
                    <li>
                        <label for="email">Email:</label>
                        <input class="form-control" type="email" name="email" placeholder="Digite seu Email" autocomplete="off" required>
                    </li>
                </div>
                
                <div class="form-group login-div">
                    <li>
                        <label for="pws">Senha:</label>
                        <input class="form-control" type="password" name="pws" required>
                    </li>
                </div>
                
                <li><input class="btn btn-info botao-center" type="submit" value="Logar"></li>
                
            </form>
            <li><a href="index.php?url=cadastro" class="btn btn-danger botao-center" type="button" value="Cadastrar">Cadastrar</a></li>
        </div>

        <?php 
        } ?>
    </div>
</header>