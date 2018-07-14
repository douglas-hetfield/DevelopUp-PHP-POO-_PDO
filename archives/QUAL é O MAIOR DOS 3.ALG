Algoritmo "qual é o maior dos 3"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/12/2016
Var
// Seção de Declarações das variáveis 
v1,v2,v3,r1,r2,r3: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("digite o primeiro valor")
leia(v1)
escreval("digite o segundo valor")
leia(v2)
escreval("digite o terceiro valor")
leia(v3)

        se(v1>v2) e (v1>v3) entao
           escreval("o maior valor é: ",v1)
          senao
           se(v2>v1) e (v2>v3) entao
             escreval("o maior valor é: ",v2)
           senao
             se(v3>v1) e (v3>v2) entao
               escreval("o maior valor é: ",v3)

             fimse
           fimse
        fimse

//colocar na ordem
         se(v1>v2) e (v1>v3) entao
          se(v2>v3)entao
           escreval("A ordem será: ",v3,v2,v1)
          senao
           escreval("A ordem será: ",v2,v3,v1)
          fimse
        senao
           se(v2>v1) e (v2>v3) entao
            se(v1>v3)entao
             escreval("A ordem será: ",v3,v1,v2)
           senao
             escreval("A ordem será: ",v1,v3,v2)
           fimse
             se(v3>v1) e (v3>v2) entao
              se(v1>v2)entao
               escreval("A ordem será: ",v2,v1,v3)
              senao
               escreval("A ordem será: ",v1,v2,v3)
              fimse
             fimse
            fimse
           fimse

Fimalgoritmo