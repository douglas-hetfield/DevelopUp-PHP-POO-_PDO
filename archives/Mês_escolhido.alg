Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/12/2016
Var
// Seção de Declarações das variáveis 
mes: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Informe o valor numérico do mês desejado:")
leia(mes)
escolha mes
        caso 1
             escreval("JANEIRO")
        caso 2
             escreval("FEVEREIRO")
        caso 3
             escreval("MARÇO")
        caso 4
             escreval("ABRIL")
        caso 5
             escreval("MAIO")
        caso 6
             escreval("JUNHO")
        caso 7
             escreval("JULHO")
        caso 8
             escreval("AGOSTO")
        caso 9
             escreval("SETEMBRO")
        caso 10
             escreval("OUTUBRO")
        caso 11
             escreval("NOVEMBRO")
        caso 12
             escreval("DEZEMBRO")
        outrocaso
             escreval("Valor Inválido")
        fimescolha
Fimalgoritmo