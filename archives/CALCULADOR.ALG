Algoritmo "calculador"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Alessandro
// Descrição   : calculos malucos ^^
// Autor(a)    : Douglas Teixeira de Jesus Soares
// Data atual  : 06/12/2016
Var
// Seção de Declarações das variáveis 
//exercício 1
v1,v2,result,result2,result4: inteiro
result3: real

//exercício 2
v3,result5: inteiro

//exercício 3
A,B,C,result6: inteiro

//exercício 4
n1,result7,result8: inteiro

//exercício 5
t: inteiro
p1,taxa,prestacao: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// calculo das quatro operações basicas (exercício 1)
escreval("informe o primeiro valor")
leia(v1)
escreval("informe o segundo valor")
leia(v2)
result:=v1+v2
escreval("o resultado da soma é: ",result)
result2:=v1-v2
escreval("o resultado da subtração é: ",result2)
result3:=v1/v2
escreval("o resultado da divisão é: ",result3)
result4:=v1*v2
escreval("o resultado da multiplicação é: ",result4)

//calculo ao quadrado (exercício 2)
escreval("qual número será elevado?")
leia(v3)
result5:=v3*v3
escreval("o resultado do número ao quadrado é: ",result5)

//troca de posição (exercício 3)
escreval("informe o primeiro valor")
leia(A)
escreval("informe o segundo valor")
leia(B)
C<-A
A<-B
escreval("então o primeiro valor é: ",A)
B<-C
escreval("e o segundo é: ",B)

//calculo do sucessor e antecessor (exercício 4)
escreval("apresente um numero qualquer")
leia(n1)
result7:=n1+1
escreval("seu sucessor é: ",result7)
result8:=n1-1
escreval("seu antecessor é: ",result8)

//calculo da prestação em atraso (exercício 5)
escreval("digite o valor da pretação")
leia(p1)
escreval("digite a taxa da prestação")
leia(taxa)
escreval("digite o tempo da prestação")
leia(t)
prestacao<-p1+(p1*(taxa/100)*t)
escreval("sua prestação é: ",prestacao)
Fimalgoritmo