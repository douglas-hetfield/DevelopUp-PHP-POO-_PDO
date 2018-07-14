Algoritmo "peso ideal"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Seção de Declarações das variáveis 
sexo: caractere
altura,v1: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("você é homem?(y/n): ")
leia(sexo)
escreval("qual é a sua altura?(metros): ")
leia(altura)
            se(sexo="y")entao
            v1:=(72.7*altura)-58
            senao
            v1:=(62.1*altura)-44.7
            fimse
escreval("Seu peso ideal é:",v1)

Fimalgoritmo