Algoritmo "Categoria do atleta"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/12/2016
Var
// Seção de Declarações das variáveis 
name:caractere
YO:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Informe o seu nome")
leia(name)
escreval("Informe a sua idade")
leia(YO)
        se(YO<5)entao
         escreval("Você não tem idade suficiente para estar em uma categoria")
        senao
         se(YO>=5) e (YO<=10)entao
          escreval("Sr.",name," sua categoria é: INFANTIL")
         senao
          se(YO>=11) e (YO<=15)entao
           escreval("Sr.",name," sua categoria é: JUVENIL")
          senao
           se(YO>=16) e (YO<=20)entao
            escreval("Sr.",name," sua categoria é: JUNIOR")
           senao
            se(YO>=21)entao
             escreval("Sr(a)",name," sua categoria é: PROFISSIONAL")
            fimse
           fimse
          fimse
         fimse
        fimse
Fimalgoritmo