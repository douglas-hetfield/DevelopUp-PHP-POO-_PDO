Algoritmo "desc plano de saude"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Se��o de Declara��es das vari�veis 
dep,dep2,desc: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("quantos dependentes voc� possui")
leia(dep)
         se(dep>0)entao
         dep2:=45*dep
         desc:=50+dep2
         escreval("seu desconto � de: R$",desc)
         senao
         escreval("seu desconto � de: R$ 50")
         fimse
Fimalgoritmo