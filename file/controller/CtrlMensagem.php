<?php

class CtrlMensagem {
    public function isMensagem(Mensagem $mensagem){
        $erros = "";
        if ($mensagem->getNome() == ""){
            $erros .= "Nome em branco. <br>";
        }
        
        if($mensagem->getIp() == ""){
            $erros .= "Ip em brenco. <br>";
        }

        if ($mensagem->getid() == ""){
            $erros .= "Id em branco. <br>";
        }

        if ($mensagem->getMsg() == ""){
            $erros .= "Msg em branco. <br>";
        }

        if($mensagem->getTime() == ""){
            $erros .= "data em branco. <br>";
        }

        return $erros;
    }
}

?>