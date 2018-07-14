Algoritmo "Enquanto-nota-aluno-V2"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : calculos
// Autor(a)    : Douglas Teixeira de Jesus Soares
// Data atual  : 12/01/2017
Var
// Seção de Declarações das variáveis 
cnt,cont,dv,qtd,num,Aln_AP,Aln_RP: inteiro
Aln,maiornome:caractere
pt,s,soma,M_d_T,S_d_T,maior_valor,resp: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
dv:=2
resp:=1
cont:=1
enquanto resp<>0 faca
escreval("Qual é o nome do aluno?")
leia(Aln)
escreval("Quantas notas o aluno possui?")
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

    se s>maior_valor entao
      maior_valor:=s
      maiornome:=Aln
    fimse


S_d_T:=(s+S_d_T)
M_d_T:=S_d_T/cont
            se(s>=7)entao
            escreval("O Aluno está: APROVADO")
            Aln_AP:=Aln_AP+1
             senao
             escreval("O Aluno está: REPROVADO")
             Aln_RP:=Aln_RP+1
            fimse
escreval(" ")
escreval(" ")
cont:=cont+1
escreval ("Digite zero(0) para terminar")
leia(resp)
fimenquanto
escreval("O numero de Aluno(s) APROVADO(s) é de:",Aln_AP)
escreval("O numero de Aluno(s) REPROVADO(s) é de:",Aln_RP)
escreval(" ")
escreval("O aluno ",maiornome," obteve a média mais alta:",maior_valor)
escreval(" ")
escreval("A média da Turma é de:",M_d_T)
Fimalgoritmo