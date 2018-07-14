Algoritmo "Salário Família"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Seção de Declarações das variáveis 
cash,result,cons,n_de_filhot: real
filhot: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
cons:=30
escreval("quanto tu ganha?")
leia(cash)
escreval("quantas criancinhas você tem?")
leia(filhot)
            se(filhot>0)entao
            n_de_filhot:=cons*filhot
            result:=cash+n_de_filhot
              escreval("você recebe: R$",result)
            senao
              escreval("não possui filhos")
            fimse

Fimalgoritmo