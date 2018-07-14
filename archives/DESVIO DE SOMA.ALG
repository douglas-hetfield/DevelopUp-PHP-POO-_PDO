Algoritmo "Desvio de Soma"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Seção de Declarações das variáveis 
soma,a,b: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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