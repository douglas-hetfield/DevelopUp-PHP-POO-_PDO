<?php if(empty($_COOKIE['nome'])){ header("Location:index.php?url=begin");} ?>
<div class="col-sm-8 col-md-8">
    <div>
        <div id="mensagens" name='mensagens' onclick="autoScroll()">
            <ul class="resultado" >
                
            </ul>
        </div>
        <form action="file/action/actionChat.php" method="POST">
            <input type="hidden" name="action" value="enviar">
            <div class="col-md-9">
                <input type="text" id="mensagem" name="mensagem" class="form-control" placeholder="Digite uma mensagem" maxlength="300" autocomplete="off" required>
            </div>
            <div class="col-md-2">
                <button type="submit" name="action" id="action" value="enviar" class="btn btn-info btnEnviar">Enviar</button>
            </div>
            
        </form>
    </div>
</div>
<div class="col-md-1 col-sm-1">
    <p>toda vez que quiser ver as ultimas mensagens click dentro do chat que a página ira rolar automaticamente!</p>
</div>

<script type="text/javascript">
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

    function autoScroll(){
        var minhaDiv = document.getElementById("mensagens");
        minhaDiv.scrollTop = minhaDiv.scrollHeight;
    }
    
</script>