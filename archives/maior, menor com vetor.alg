Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/02/2017
Var
// Se��o de Declara��es das vari�veis 
num: vetor[1..15] de inteiro
i,maior,menor: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
para i de 1 ate 15 faca
     escreval("Digite um valor para ser adicionado ao vetor")
     leia(num[i])
fimpara
//leitura e localiza��o do maior valor no vetor
para i de 1 ate 15 faca
     se num[i]>maior entao
        maior:=num[i]
     fimse
fimpara
//leitura e localiza��o do menor valor no vetor
menor:=maior
para i de 1 ate 15 faca
     se num[i]<menor entao
        menor:=num[i]
     fimse
fimpara
escreval("O maior numero encontrado foi: ",maior)
escreval("O menor numero encontrado foi: ",menor)
Fimalgoritmo