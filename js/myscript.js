function verifica(){
    a = document.getElementById("pws").value;
    b = document.getElementById("cpws").value;
    if(a != b){
        alert("As senhas não conferem! Por favor digite novamente!");
        document.getElementById("pws").value = "";
        document.getElementById("cpws").value = "";
	    document.getElementById("cpws").focus();
    }
}

function ajustes(form){
    form.numaquina.value = form.numaquina.value.toUpperCase();
}

function piscar(){
        var tempo = 100;
        var ob = document.getElementById("image");
        
        
        if (ob.style.display == "none"){
            ob.style.position = "fixed";
            ob.style.display = "block";
            
        }else{
            ob.style.position = "relative";
            ob.style.display = "none";
            var tempo = 25000;
        }
    
        setTimeout('piscar()', tempo)
        
}

function dropDiv(){
    var div = document.getElementById('dropDivItem').style.display;

    if(div == "block"){
        document.getElementById('dropDivItem').style.display = "none";
    }else{
        document.getElementById('dropDivItem').style.display = "block";
    }
}
