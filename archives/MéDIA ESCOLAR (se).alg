Algoritmo "m�dia escolar"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Se��o de Declara��es das vari�veis 
A,B,result: real
APROVADO, REPROVADO: caractere
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("informe o valor da primeira nota")
leia(a)
escreval("informe o valor da segunda nota")
leia(b)
result:=(a+b)/2
             se(result>=7)entao
               escreval("APROVADO")
             senao
               escreval("REPROVADO")
             fimse
escreval(result)
Fimalgoritmo