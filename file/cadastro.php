<?php
//faz o cadastro do usuario
    if(isset($_POST['name']) and empty($_POST['opc'])){
        $e = null;
        require_once "model/Pessoa.php";
        $pessoa = new Pessoa();
        $pessoa->setNome(htmlspecialchars(trim($_POST['name'])));
        $pessoa->setSobrenome(htmlspecialchars(trim($_POST['sobrenome'])));
        $pessoa->setEmail(htmlspecialchars(trim($_POST['email'])));
        $pessoa->setPws(htmlspecialchars(md5($_POST['pws'])));
        $pessoa->setColor(htmlspecialchars(trim($_POST['cor'])));

        require_once "controller/CtrlPessoa.php";
        $ctrlPessoa = new CtrlPessoa(); 
        if($ctrlPessoa->isPessoa($pessoa) == ""){
            require_once "dao/PessoaDao.php";
            $pessoaDao = new PessoaDao();

            if($pessoa->getPws() == md5($_POST['cpws'])){
                if($pessoaDao->salvar($pessoa)){
                    $m = "Cadastrado com sucesso!";
                }else{
                    $e = "Erro ao cadastrar!";
                }
            }else{
                $e = "Senhas Diferentes!";
            }
        }else{
            $e = $ctrlPessoa->isPessoa($pessoa);
        }

        if (isset($e)){
           echo "<div class='alert alert-danger'> <strong>".$e."</strong></div>";
        }
        if (isset($m)){
           echo "<div class='alert alert-success'> <strong>".$m."</strong></div>";
           header("Refresh:5; url=index.php");
        }
    }

    //faz o preenchimento dos campos se o usuario estiver logado!
    if(isset($_COOKIE['email'])){
        $nome = $_COOKIE['nome'];
        $sobrenome = $_COOKIE['sobrenome'];
        $email = $_COOKIE['email'];
        $color = $_COOKIE['color'];
    }

    //faz o update do usuario
    if(isset($_POST['opc'])){
        $e = null;
        require_once "model/Pessoa.php";
        $pessoa = new Pessoa();
        $pessoa->setNome(htmlspecialchars(trim($_POST['name'])));
        $pessoa->setSobrenome(htmlspecialchars(trim($_POST['sobrenome'])));
        $pessoa->setEmail(htmlspecialchars(trim($_POST['email'])));
        $pessoa->setPws(htmlspecialchars(md5($_POST['pws'])));
        $pessoa->setColor(htmlspecialchars(trim($_POST['cor'])));

        require_once "controller/CtrlPessoa.php";
        $ctrlPessoa = new CtrlPessoa(); 
        if($ctrlPessoa->isPessoa($pessoa) == ""){
            require_once "dao/PessoaDao.php";
            $pessoaDao = new PessoaDao();

            if($pessoa->getPws() == md5($_POST['cpws'])){
                if($pessoaDao->atualizar($pessoa)){
                    $m = "Atualizado com sucesso!";

                    setcookie("nome", $pessoa->getNome(), time()+ (3600 * 24) * 365);
                    setcookie("sobrenome", $pessoa->getSobrenome(), time()+ (3600 * 24) * 365);
                    setcookie("color", $pessoa->getColor(), time()+ (3600 * 24) * 365);
                    setcookie("email", $pessoa->getEmail(), time()+ (3600 * 24) * 365);
                    setcookie("id", $_COOKIE['id'], time()+ (3600 * 24) * 365);

                    header("Location:index.php?url=cadastro&m=$m");
                }else{
                    $e = "Erro ao atualizar!";
                }
            }else{
                $e = "Senhas Diferentes!";
            }
        }else{
            $e = $ctrlPessoa->isPessoa($pessoa);
        }

        if (isset($e)){
           echo "<div class='alert alert-danger'> <strong>".$e."</strong></div>";
        }
        if (isset($_GET['m'])){
            //não funciona, nem sei pq!?
            echo "<script>alert('Atualizado com Sucesso!')</script>";
            echo "<div class='alert alert-success'> <strong>".$m."</strong></div>"; 
        }
        
    }
?>

<div class="container">
    <form action="" method="post">
        <div class="col-md-9 col-sm-9">
    <h3><?php if(isset($_COOKIE['email'])){ echo "Atualizar";}else{ echo "Cadastrar";}?></h3>
            <div class="col-md-6 col-sm-6">

                <div class="form-group">
                    <label for="name">Nome:</label>
                    <input class="form-control" name="name" id="name" type="text" placeholder="Digite seu nome" value="<?php if(isset($nome)){ echo $nome;} ?>" required>
                </div>

                <div class="form-group">
                    <label for="sobrenome">Sobrenome:</label>
                    <input class="form-control" name="sobrenome" id="sobrenome" type="text" placeholder="Digite seu sobrenome" value="<?php if(isset($nome)){ echo $sobrenome;} ?>" required>
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input class="form-control" name="email" id="email" type="email" placeholder="Digite seu email" value="<?php if(isset($nome)){ echo $email;} ?>" required>
                </div>

            </div>

            <div class="col-md-6 col-sm-6">

                <div class="form-group">
                    <label for="pws">Senha:</label>
                    <input class="form-control" name="pws" id="pws" type="password" placeholder="Digite uma senha" minlength="8" maxlength="32" required>
                </div>

                <div class="form-group">
                    <label for="cpws">Confirme a senha:</label>
                    <input class="form-control" name="cpws" id="cpws" type="password" placeholder="Repita a senha novamente" minlength="8" maxlength="32" required>
                </div>

                <div class="form-group">
                    <label for="cor">Selecione uma Cor:</label>
                    <input class="form-control" name="cor" id="cor" value="<?php if(isset($nome)){ echo $color;} ?>" type="color" required>
                </div>

            </div>

            <div class="row">

                <div class="col-md-6">   
                    <div class="form-group">
                        <button class="form-control btn btn-danger" name="reset" id="reset" type="reset">Limpar</button>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <button class="form-control btn btn-primary" name="enviar" id="enviar" onclick="verifica()" type="submit"><?php if(isset($_COOKIE['email'])){ echo "Atualizar";}else{ echo "Cadastrar";}?></button>
                    </div>
                </div>

            </div>
        </div>
                <?php if(isset($_COOKIE['email'])){ echo "<input type='hidden' value='update' name='opc' id='opc'>";} ?> 
    </form>
</div>