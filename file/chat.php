<?php if(empty($_COOKIE['nome'])){ header("Location:index.php?url=begin");} ?>
<div class="col-sm-7 col-md-7">
    <div>
        <div id="mensagens" name='mensagens' onclick="autoScroll()">
            <ul class="resultado" >
                <!-- Esta ul está sendo preenchida com JSON -->
            </ul>
        </div>
        <form action="file/action/actionChat.php" method="POST">
            <input type="hidden" name="action" value="enviar">
            <div class="col-md-9">
                <input type="text" id="mensagem" name="mensagem" class="form-control inputChat" placeholder="Digite uma mensagem" maxlength="300" autocomplete="off" required>
            </div>
            <div class="col-md-2">
                <button type="submit" name="action" id="action" value="enviar" class="btn btn-info btnEnviar">Enviar</button>
            </div>
            
        </form>
    </div>
</div>
<div class="col-md-2 col-sm-2">
    <div class="conjuntoBtn">
        <label for="autoScroll">AutoScroll</label>
        <input class="btn btnAutoScroll" type="button" name="autoScroll" id="autoScroll" onclick="iniciarIntervalo()" value="ATIVADO">
        
    </div>
</div>

<script type="text/javascript">
//função AJAX para pegar as informações do banco e jogar dentro do chat(UL) sem refresh!
    var cont = 0,tempo = 100;
    setInterval( function(){
        $(function(){
            $("#mensagens").ready(function(){
                var pesquisa = "atualizar";
                var action = {
                    palavra : pesquisa
                }              
                
                $.post('file/action/actionChat.php?action=atualizar', action, function(retorna){
                        //Mostra dentro da ul os resultado obtidos 
                    $(".resultado").html(retorna);
                }); 
            });
        });
    }  , tempo);

//função que rola a página até o final do chat.
    function autoScroll(){
        var minhaDiv = document.getElementById("mensagens");
        minhaDiv.scrollTop = minhaDiv.scrollHeight;
    }

    $('#mensagens').ready(function(){
        iniciarIntervalo();
        iniciarIntervalo();
    });

//função do botão para fazer o scroll down automatico!
    var Intervalo;
    var btnFuncao = document.getElementById('autoScroll');
    var minhaDiv = document.getElementById("mensagens");
    function iniciarIntervalo(){
        if(btnFuncao.style.backgroundColor == "red"){
            btnFuncao.style.backgroundColor = "green";
            btnFuncao.style.color = "white";
            btnFuncao.value = "ATIVADO";

        Intervalo = window.setInterval(function(){ minhaDiv.scrollTop = minhaDiv.scrollHeight; },  100);
        }else{
            btnFuncao.style.backgroundColor = "red";
            btnFuncao.style.color = "white";
            btnFuncao.value = "DESATIVADO";
            pararIntervalo();
        }
    }
// Função para parar o setInterval
    function pararIntervalo(){
        window.clearInterval(Intervalo);
    }
    
</script>