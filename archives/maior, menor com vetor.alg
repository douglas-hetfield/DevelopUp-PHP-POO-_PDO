Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/02/2017
Var
// Seção de Declarações das variáveis 
num: vetor[1..15] de inteiro
i,maior,menor: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 15 faca
     escreval("Digite um valor para ser adicionado ao vetor")
     leia(num[i])
fimpara
//leitura e localização do maior valor no vetor
para i de 1 ate 15 faca
     se num[i]>maior entao
        maior:=num[i]
     fimse
fimpara
//leitura e localização do menor valor no vetor
menor:=maior
para i de 1 ate 15 faca
     se num[i]<menor entao
        menor:=num[i]
     fimse
fimpara
escreval("O maior numero encontrado foi: ",maior)
escreval("O menor numero encontrado foi: ",menor)
Fimalgoritmo