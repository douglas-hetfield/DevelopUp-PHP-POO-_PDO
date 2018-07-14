<?php 
    //Faz o login do usuario
    if(isset($_POST['email']) and empty($_COOKIE['email']) and isset($_POST['log'])){
        $email = htmlspecialchars($_POST['email']);
        $pws =  md5(htmlspecialchars($_POST['pws']));
        
        require_once "dao/PessoaDao.php";
        $pessoaDao = new PessoaDao();
        
        $dados = $pessoaDao->BuscarLogin($email, $pws);
        if($dados['nome'] != ""){
            setcookie("nome", $dados['nome'], time()+ (3600 * 24) * 365);
            setcookie("sobrenome", $dados['sobrenome'], time()+ (3600 * 24) * 365);
            setcookie("color", $dados['color'], time()+ (3600 * 24) * 365);
            setcookie("email", $email, time()+ (3600 * 24) * 365);
            setcookie("id", $dados['idPessoa'], time()+ (3600 * 24) * 365);
            header("location:index.php?url=begin");
        }else{
            $e = null;
            $e = "Email e/ou senha Invalido!";
            echo "<script>alert('Email e/ou senha Invalido!')</script>";
        }
    }

    //Logoff
    if(isset($_GET['off'])){
        setcookie("nome", "", time() - 1);
        setcookie("sobrenome", "", time() - 1);
        setcookie("color", "", time() - 1);
        setcookie("email", "", time() - 1);
        setcookie("id", "", time() - 1);
        header("location:index.php?url=begin");
    }

    //Muda a cor dos objetos (beta)
    // if(isset($_COOKIE['color'])){
    //     $color = $_COOKIE['color'];
    // }else{
    //     $color = "";
    // }

?>

<header class="row" id="header">
    <div class="col-sm-3 col-md-3 borda">
        <h2><a class="logoA" href="index.php?url=begin">DevelopUs</a></h2>
    </div>
    
    <div class="col-sm-6 col-md-6 borda">
        <form action="index.php?url=search" method="post">
            <div class="form-group GroupFormH">
                
                    <input class="form-control searchInput" type="text" name="search" id="search" placeholder="Pesquisar" required>
                
                    <button class="btn btn-primary ">Buscar</button>
                
            </div>
        </form>
    </div>

    <div class="col-sm-2 col-md-2 borda">

        <?php 
            if(isset($_COOKIE['nome'])){
        ?>
                <a href="index.php?url=begin&off=1" class="btn btn-danger DropBtn">Logoff</a>
        <?php
            }else{
        ?>
    
        <button class="btn btn-success DropBtn" type="button" onclick="dropDiv()" name="btnDropdown" id="btnDropdown">Login<span class="caret"></span></button>
        
        <div class="DivDrop" id="dropDivItem" name="dropDivItem">
            <form class="form" method="post" action="index.php?url=begin">
                <input type="hidden" name="log" id="log" value="true">
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
    <div class="col-sm-1 col-md-1 borda"></div>
</header>