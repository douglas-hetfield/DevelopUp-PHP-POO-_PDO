Algoritmo "Enquanto-nota-aluno-V2"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : calculos
// Autor(a)    : Douglas Teixeira de Jesus Soares
// Data atual  : 12/01/2017
Var
// Se��o de Declara��es das vari�veis 
cnt,cont,dv,qtd,num,Aln_AP,Aln_RP: inteiro
Aln,maiornome:caractere
pt,s,soma,M_d_T,S_d_T,maior_valor: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
dv:=2
escreval("Digite o numero de alunos")
leia(cnt)
enquanto cont<cnt faca
escreval("Qual � o nome do aluno?")
leia(Aln)
escreval("Quantas notas o aluno possui?")
leia(pt)
qtd:=1
s:=0
enquanto qtd<=pt faca

escreval("Digite a ",qtd,"� nota do aluno")
leia(num)
s:=(s+num)/qtd
qtd:=qtd+1
fimenquanto
escreval("A m�dia do aluno: ",Aln," � de:",s)

  se cnt <= 1 entao
    maior_valor:=s
    maiornome:=Aln
  senao
    se s>maior_valor entao
      maior_valor:=s
      maiornome:=Aln
    fimse
  fimse

S_d_T:=(s+S_d_T)
M_d_T:=S_d_T/cnt
            se(s>=7)entao
            escreval("O Aluno est�: APROVADO")
            Aln_AP:=Aln_AP+1
             senao
             escreval("O Aluno est�: REPROVADO")
             Aln_RP:=Aln_RP+1
            fimse
escreval(" ")
escreval(" ")
cont:=cont+1
fimenquanto
escreval("O numero de Aluno(s) APROVADO(s) � de:",Aln_AP)
escreval("O numero de Aluno(s) REPROVADO(s) � de:",Aln_RP)
escreval(" ")
escreval("O aluno ",maiornome," obteve a m�dia mais alta:",maior_valor)
escreval(" ")
escreval("A m�dia da Turma � de:",M_d_T)
Fimalgoritmo