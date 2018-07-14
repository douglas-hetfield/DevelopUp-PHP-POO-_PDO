Algoritmo "Enquanto-nota-aluno"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/01/2017
Var
// Seção de Declarações das variáveis 
cnt,cont,dv,qtd,num: inteiro
Aln:caractere
nt,nt2,md,pt,s,soma: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
dv:=2
escreval("Digite o numero de alunos")
leia(cnt)
enquanto cont<cnt faca
escreval("Qual é o nome do aluno?")
leia(Aln)
escreval("Quantos notas o aluno possui?")
leia(pt)
qtd:=1
s:=0
enquanto qtd<=pt faca

escreval("Digite a ",qtd,"ª nota do aluno")
leia(num)
s:=(s+num)/qtd
qtd:=qtd+1
fimenquanto
escreval("A média do aluno: ",Aln," é de:",s)
escreval(" ")

cont:=cont+1
fimenquanto
Fimalgoritmo