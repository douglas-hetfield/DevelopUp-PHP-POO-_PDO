Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/01/2017
Var
// Seção de Declarações das variáveis 
cont,genero,rock,mpb,s_p,outros: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para cont de 1 ate 5 faca
escreval("Digite o número correspondente ao seu gênero musical.")
escreval("(1)Rock | (2)MPB | (3)Samba/pagode | (4)Outros")
leia(genero)
     se (genero=1) entao
     rock:=rock+1
     senao
       se genero=2 entao
       mpb:=mpb+1
       senao
         se genero=3 entao
         s_p:=s_p+1
         senao
           se genero=4 entao
           outros:=outros+1
           fimse
         fimse
       fimse
     fimse
fimpara
       
escreval("--------------Tabela de Pesquisa de Gênero--------------")
escreval("                Gênero       |  Votos ")
escreval("                Rock         |   ",rock)
escreval("                MPB          |   ",mpb)
escreval("                Samba/Pagode |   ",s_p)
escreval("                Outros       |   ",outros)
escreval("  ")
       se (rock>mpb) e (rock>s_p) e (rock>outros) entao
       escreval("O melhor resultado foi do Gênero: Rock com ",rock," votos!")
       senao
         se (mpb>rock) e (mpb>s_p) e (mpb>outros) entao
         escreval("O melhor resultado foi do Gênero: MPB com ",mpb," votos!")
         senao
           se (s_p>rock) e (s_p>mpb) e (s_p>outros) entao
           escreval("O melhor resultado foi do Gênero: Samba/Pagode com ",s_p," votos!")
           senao
            escreval("O melhor resultado foi do Gênero: Outros com ",outros," votos!")
           fimse
         fimse
       fimse
       
fimalgoritmo
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
Fimalgoritmo