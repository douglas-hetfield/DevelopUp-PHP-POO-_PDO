Algoritmo "reajuste salarial"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/12/2016
Var
// Seção de Declarações das variáveis 
sal,sal2,cons1,cons2,reajust: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
cons1:=1000
cons2:=2000
escreval("Informe o seu salário")
leia(sal)
         se(sal<cons1)entao
          reajust:=(sal*0.15)
          sal2:=reajust+sal
         senao
            se(sal>=cons1) e (sal<=cons2)entao
             reajust:=(sal*0.10)
             sal2:=reajust+sal
            senao
              se(sal>cons2)entao
               reajust:=(sal*0.05)
               sal2:=reajust+sal
              fimse
            fimse
         fimse
escreval("seu salário com o reajuste é: R$",sal2)
Fimalgoritmo