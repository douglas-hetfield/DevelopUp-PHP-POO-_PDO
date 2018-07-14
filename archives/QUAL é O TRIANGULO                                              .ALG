Algoritmo "qual é o triangulo                                              "
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/12/2016
Var
// Seção de Declarações das variáveis 
A,B,C: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Informe o lado A do triângulo")
leia(A)
escreval("Informe o lado B do triângulo")
leia(B)
escreval("Informe o lado C do triângulo")
leia(C)
       se(A=B) e (A=C)entao
        escreval("Esse é o triângulo EQUILÁTERO")
       senao
         se(B<>A) e (B<>C) e (A=C) ou (B<>A) e (B=C) e (A<>C) ou (B=A) e (B<>C) e (A<>C) entao
          escreval("Esse é o triângulo ISÓSCELES")
         senao
           se(B<>A) e (B<>C) e (A<>C)entao
            escreval("Esse é o triângulo ESCALENO")
           fimse
         fimse
       fimse
            
            
Fimalgoritmo