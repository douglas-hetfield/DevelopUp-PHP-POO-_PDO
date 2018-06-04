<?php

class CtrlPessoa {
    public function isPessoa(Pessoa $pessoa){
        $erros = "";
        if ($pessoa->getNome() == ""){
            $erros .= "Nome em branco. <br>";
        }
        
        if($pessoa->getSobrenome() == ""){
            $erros .= "Sobrenome em brenco. <br>";
        }

        if ($pessoa->getEmail() == ""){
            $erros .= "E-mail em branco. <br>";
        }

        if ($pessoa->getPws() == ""){
            $erros .= "Senha em branco. <br>";
        }

        return $erros;
    }
}

?>