Algoritmo "média escolar"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Seção de Declarações das variáveis 
A,B,result: real
APROVADO, REPROVADO: caractere
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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