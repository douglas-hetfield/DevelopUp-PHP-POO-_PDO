function ver(){
	var url;
	url = "ver.php";
	jQuery.get(url, function(date){
		$('mensagens').empty().append(date);
	});
}
function enviar(){
	var url;
	var mensagem;
	var enviando;
	url = 'enviar.php';
	mensagem = $('mensagem'). 
}