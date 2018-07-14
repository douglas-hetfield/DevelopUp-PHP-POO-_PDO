Algoritmo "Cardápio"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/12/2016
Var
// Seção de Declarações das variáveis 
options,quant: inteiro
VF,v: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Especificação    /    Preço Unitário(R$)")
escreval("100 Cachorro quente           3,10")
escreval("101 Bauru Simples             3,30")
escreval("102 Bauru c/ovo               3,50")
escreval("103 Hamburger                 2,10")
escreval("104 Cheeseburger              4,30")
escreval("105 Refrigerante              3,00")
leia(options)
escolha(options)
                caso 100
                     escreval("Cachorro quente        R$ 3,10")
                     v:=3.10
                caso 101
                     escreval("Bauru Simples          R$ 3,30")
                     v:=3.30
                caso 102
                     escreval("Bauru c/ovo            R$ 3,50")
                     v:=3.50
                caso 103
                     escreval("Hamburger              R$ 2,10")
                     v:=2.10
                caso 104
                     escreval("Cheeseburger           R$ 4,30")
                     v:=4.30
                caso 105
                     escreval("Refrigerante           R$ 3,00")
                     v:=3.00
                outrocaso
                     escreval("Código Inválido")
fimescolha
          se(options>=100) e (options<=105)entao
           escreval("qual é a quantidade do produto?")
          senao
           escreval(" ")
          fimse
leia(quant)
VF:=v*quant
escreval("o valor total é R$",VF)


Fimalgoritmo