Algoritmo "funçao"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/02/2017
Var
// Seção de Declarações das variáveis 
result,result_mult,result_sb,n1,n2:inteiro
result_div: real



funcao soma (x,y:inteiro): inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
retorne x+y
fimfuncao
         funcao sub (x,y: inteiro): inteiro
         inicio
         retorne x-y
         fimfuncao
                  funcao mult (x,y:inteiro): inteiro
                  inicio
                  retorne x*y
                  fimfuncao
                           funcao divi (x,y:real): real
                           inicio
                           retorne x/y
                           fimfuncao
inicio
escreval("informe o primeiro valor")
leia(n1)
escreval("informe o segundo valor")
leia(n2)
result:=soma(n1,n2)
escreval("O resultado da soma é:",result)
result_sb:=sub(n1,n2)
escreval("O resultado da subtração é:",result_sb)
result_mult:=mult(n1,n2)
escreval("o resultado da multiplicação é:",result_mult)
result_div:=divi(n1,n2)
escreval("o resultado da divisão é:",result_div)
Fimalgoritmo