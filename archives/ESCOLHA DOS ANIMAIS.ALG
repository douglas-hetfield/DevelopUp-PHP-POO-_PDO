Algoritmo "escolha dos animais"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Alessandro
// Descrição   : o programa descobre o animal escolhido
// Autor(a)    : Douglas Teixeira
// Data atual  : 20/12/2016
Var
// Seção de Declarações das variáveis 
r : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Pense em um animal da lista abaixo: ")
escreval("LEAO, CAVALO, HOMEM, MACACO, MORCEGO, BALEIA")
escreval("AVESTRUZ, PINGUIM, PATO, AGUIA")
escreval("TARTARUGA, CROCODILO, COBRA")
escreval("Responda as perguntas utilizando a marcação numerica correspondente a sua escolha: ")
escreval("")
escreval("O animal que você escolheu é: ")

escreval("         (1)MAMÍFERO   (2)AVE   (3)RÉPTIL")
leia(r)
       se(r=1)entao
        escreval("         (1)QUADRÚPEDE   (2)BÍPEDE   (3)VOADOR   (4)AQUÁTICO")
        leia(r)
         se(r=1)entao
          escreval("         (1)CARNÍVORO   (2)HERBÍVORO")
          leia(r)
           se(r=1)entao
            escreval("O animal escolhido foi: LEÃO")
           senao
            se(r=2)entao
             escreval("O animal escolhido foi: CAVALO")
            fimse
           fimse
       senao
       se(r=2)entao
        escreval("         (1)ONÍVORO   (2)FRUTIVORO")
        leia(r)
         se(r=1)entao
          escreval("O animal escolhido foi: HOMEM")
         senao
          se(r=2)entao
           escreval("O animal escolhido foi: MACACO")
          fimse
         fimse
       senao
       se(r=3)entao
        escreval("O animal escolhido foi: MORCEGO")
       senao
        se(r=4)entao
         escreval("O animal escolhido foi: BALEIA")
        fimse
       fimse
       fimse
       fimse
        senao
        se(r=2)entao
         escreval("         (1)NÃO VOADORA   (2)NADADORA   (3)DE RAPINA")
         leia(r)
          se(r=1)entao
           escreval("         (1)TROPICAL   (2)POLAR")
           leia(r)
            se(r=1)entao
             escreval("O animal escolhido foi: AVESTRUZ")
            senao
             se(r=2)entao
              escreval("O animal escolhido foi: PINGUIM")
             fimse
            fimse
        senao
        se(r=2)entao
         escreval("O animal escolhido foi: PATO")
        senao
         se(r=3)entao
          escreval("O animal escolhido foi: ÁGUIA")
         fimse
        fimse
        fimse
         senao
          se(r=3)entao
           escreval("         (1)COM CASCO   (2)CARNÍVORO   (3)SEM PATAS")
           leia(r)
            se(r=1)entao
             escreval("O animal escolhido foi: TARTARUGA")
            senao
             se(r=2)entao
              escreval("O animal escolhido foi: CROCODILO")
             senao
              se(r=3)entao
               escreval("O animal escolhido foi: COBRA")
              fimse
             fimse
            fimse
          fimse
         fimse
fimse

Fimalgoritmo