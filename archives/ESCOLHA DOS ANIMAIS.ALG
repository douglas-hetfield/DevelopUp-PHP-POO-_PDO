Algoritmo "escolha dos animais"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor    : Alessandro
// Descri��o   : o programa descobre o animal escolhido
// Autor(a)    : Douglas Teixeira
// Data atual  : 20/12/2016
Var
// Se��o de Declara��es das vari�veis 
r : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Pense em um animal da lista abaixo: ")
escreval("LEAO, CAVALO, HOMEM, MACACO, MORCEGO, BALEIA")
escreval("AVESTRUZ, PINGUIM, PATO, AGUIA")
escreval("TARTARUGA, CROCODILO, COBRA")
escreval("Responda as perguntas utilizando a marca��o numerica correspondente a sua escolha: ")
escreval("")
escreval("O animal que voc� escolheu �: ")

escreval("         (1)MAM�FERO   (2)AVE   (3)R�PTIL")
leia(r)
       se(r=1)entao
        escreval("         (1)QUADR�PEDE   (2)B�PEDE   (3)VOADOR   (4)AQU�TICO")
        leia(r)
         se(r=1)entao
          escreval("         (1)CARN�VORO   (2)HERB�VORO")
          leia(r)
           se(r=1)entao
            escreval("O animal escolhido foi: LE�O")
           senao
            se(r=2)entao
             escreval("O animal escolhido foi: CAVALO")
            fimse
           fimse
       senao
       se(r=2)entao
        escreval("         (1)ON�VORO   (2)FRUTIVORO")
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
         escreval("         (1)N�O VOADORA   (2)NADADORA   (3)DE RAPINA")
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
          escreval("O animal escolhido foi: �GUIA")
         fimse
        fimse
        fimse
         senao
          se(r=3)entao
           escreval("         (1)COM CASCO   (2)CARN�VORO   (3)SEM PATAS")
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