Algoritmo "m�dia escolar(3 notas)"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/12/2016
Var
// Se��o de Declara��es das vari�veis 
A,B,C,media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("digite a sua PRIMEIRA nota")
leia(A)
escreval("digite a sua SEGUNDA nota")
leia(B)
escreval("digite a sua TERCEIRA nota")
leia(C)
media:=(A+B+C)/3
                se(media<6)entao
                 escreval("INSUFICIENTE")
                senao
                 se(media>=6) e (media<8)entao
                  escreval("REGULAR")
                 senao
                  se(media>=8) e (media<9)entao
                   escreval("BOM")
                  senao
                   escreval("EXCELENTE")
                  fimse
                 fimse
                fimse
Fimalgoritmo