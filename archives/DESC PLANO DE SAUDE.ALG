Algoritmo "desc plano de saude"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/12/2016
Var
// Seção de Declarações das variáveis 
dep,dep2,desc: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("quantos dependentes você possui")
leia(dep)
         se(dep>0)entao
         dep2:=45*dep
         desc:=50+dep2
         escreval("seu desconto é de: R$",desc)
         senao
         escreval("seu desconto é de: R$ 50")
         fimse
Fimalgoritmo