Algoritmo "Desvio de Soma"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Se��o de Declara��es das vari�veis 
soma,a,b: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("informe o valor de A:")
leia(a)
escreval("informe o valor de B:")
leia(b)
soma:=a+b
         se(soma>=10)entao
          soma:=soma+5
         senao
          soma:=soma-7
          fimse
escreval(soma)

Fimalgoritmo