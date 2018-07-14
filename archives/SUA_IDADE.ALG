Algoritmo "sua_idade"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : esse programa calcula a idade
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2016
Var
// Seção de Declarações das variáveis 
nome: caractere
ano_de_nascimento,idade,ano_atual: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ano_atual:=2018
escreva("informe seu nome:")
leia(nome)
escreva("informe seu ano de nascimento:")
leia(ano_de_nascimento)
idade:=ano_atual-ano_de_nascimento
escreva("Sr(a) ",nome," sua idade é: ",idade)

Fimalgoritmo