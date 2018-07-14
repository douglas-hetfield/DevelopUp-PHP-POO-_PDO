Algoritmo "Trabalho(Show do Milhão)"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Alessandro
// Descrição   : show do milhão
// Autor(a)    : Douglas Teixeira, Felipe Brito e André Luis
// Data atual  : 14/02/2017
Var
// Seção de Declarações das variáveis 
perg,resp1,resp2,resp3,resp4: vetor[1..20] de caractere
i,num,cash:inteiro
resp_cert:caractere
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
perg[1]:= ("Depósito de mel das abelhas.")
perg[2]:= ("Ano da Proclamação da República no Brasil.")
perg[3]:= ("Côr predominante da Bandeira da Áustria.")
perg[4]:= ("Coletivo de chave.")
perg[5]:= ("Nesta região da Ásia estão localizados dois dos quatro países mais ricos do mundo.")
perg[6]:= ("qual é o nome do primeiro avião de santos dumont?")
perg[7]:= ("qual tipo de satelite a lua é da terra?")
perg[8]:= ("como é chamado o sistema de planetas onde a terra se localiza?")
perg[9]:= ("um relogio de ponteiros, alem das horas, marca o que mais?")
perg[10]:=("o brasil ficou independente de portugal no seculo xvlll.em qual seculo estamos agora?")
perg[11]:=("em que ano que a internet foi aberta a todo o brasil?")
perg[12]:=("quantas silabas tem a palavra paralelepípedo? ")
perg[13]:=  ("a india esta localizada em qual continente?")
perg[14]:= ("a frase (independencia ou morte) foi dita por quem?")
perg[15]:= ("Qual é a forma geométrica do quadro negro?")
perg[16]:= ("Qual o acento gráfico da palavla 'pátio'?")
perg[17]:= ("De que é obtida a energia eólica?")
perg[18]:= ("Quantos anos Belém completará de emancipação política?")
perg[19]:= ("Qual astro influencia as marés?")
perg[20]:=  ("Professor, qual é a senha?")


resp1[1]:= ("(a) Favoróide.")
resp1[2]:= ("(a) 1789")
resp1[3]:= ("(a) Azul")
resp1[4]:= ("(a) Chaves")
resp1[5]:= ("(a) Oriente Médio")
resp1[6]:= ("(a) 14 bits")
resp1[7]:= ("(a) satelite natural")
resp1[8]:= ("(a) sistema planetario")
resp1[9]:= ("(a) segundos e kilometros")
resp1[10]:= ("(a) seculo XXI")
resp1[11]:= ("(a) 1990")
resp1[12]:= ("(a) 6 silabas")
resp1[13]:= ("(a) americano")
resp1[14]:= ("(a) Dom Pedro I")
resp1[15]:= ("(a) linear")
resp1[16]:= ("(a) crase")
resp1[17]:= ("(a) Das areias")
resp1[18]:= ("(a) 52 anos")
resp1[19]:= ("(a) A lua")
resp1[20]:= ("(a) Luis")


resp2[1]:= ("(b) Cumbuca")
resp2[2]:= ("(b) 1889")
resp2[3]:= ("(b) Verde")
resp2[4]:= ("(b) Chaverada")
resp2[5]:= ("(b) Extremo Oriente")
resp2[6]:= ("(b) 16 bis")
resp2[7]:= ("(b) satelite artificial")
resp2[8]:= ("(b) sistema estelar")
resp2[9]:= ("(b) minutos e decimetros")
resp2[10]:= ("(b) seculo XVI")
resp2[11]:= ("(b) 1995")
resp2[12]:= ("(b) 8 silabas")
resp2[13]:= ("(b) africano")
resp2[14]:= ("(b) Dom Pedro II")
resp2[15]:= ("(b) quadrado")
resp2[16]:= ("(b) Agudo")
resp2[17]:= ("(b) Das águas")
resp2[18]:= ("(b) 53 anos")
resp2[19]:= ("(b) O sol")
resp2[20]:= ("(b) Cisco123")


resp3[1]:= ("(c) Favo")
resp3[2]:= ("(c) 1822")
resp3[3]:= ("(c) Laranja")
resp3[4]:= ("(c) Chaveiro")
resp3[5]:= ("(c) Sul da Ásia")
resp3[6]:= ("(c) 14 bis")
resp3[7]:= ("(c) satelite plasmatico")
resp3[8]:= ("(c) sistema solar")
resp3[9]:= ("(c) cronômetro e contagem regressiva")
resp3[10]:= ("(c) seculo XXII")
resp3[11]:= ("(c) 2000")
resp3[12]:= ("(c) 7 silabas")
resp3[13]:= ("(c) europeu")
resp3[14]:= ("(c) Dom João XI")
resp3[15]:= ("(c) Retângulo")
resp3[16]:= ("(c) circunflexo")
resp3[17]:= ("(c) Do sol")
resp3[18]:= ("(c) 54 anos")
resp3[19]:= ("(c) As estrelas")
resp3[20]:= ("(c) User")

resp4[1]:= ("(d) Favolíneo")
resp4[2]:= ("(d) 1864")
resp4[3]:= ("(d) Vermelho")
resp4[4]:= ("(d) Molho")
resp4[5]:= ("(d) Norte da Ásia")
resp4[6]:= ("(d) 21 bits")
resp4[7]:= ("(d) A lua não é um satelite")
resp4[8]:= ("(d) sistema universal")
resp4[9]:= ("(d) minutos e segundos")
resp4[10]:= ("(d) seculo XX")
resp4[11]:= ("(d) 1997")
resp4[12]:= ("(d) 5 silabas")
resp4[13]:= ("(d) asiatico")
resp4[14]:= ("(d) Princesa Isabel")
resp4[15]:= ("(d) tubular ")
resp4[16]:= ("(d) til")
resp4[17]:= ("(d) Dos ventos")
resp4[18]:= ("(d) 58 anos")
resp4[19]:= ("(d) Os ventos")
resp4[20]:= ("(d) Admin")



escreval(" Ma Oeeeee ta começando agora o Show do Milhão aqui no Visualg!")

para i de 1 ate 7 faca

se i=1 entao
cash:=1
senao
   se i=2 entao
   cash:=10
   senao
      se i=3 entao
      cash:=100
      senao
         se i=4 entao
         cash:=1000
         senao
            se i=5 entao
            cash:=10000
            senao
               se i=6 entao
               cash:=100000
               senao
                  se i=7 entao
                  cash:=1000000
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse
            
escreval(" ")
escreval("Vamos para a",i,"ª Pergunta valendo R$",cash," !")


num:=randi(20)
enquanto num=0 faca
num:=randi(20)
fimenquanto


escreval(perg[num])
escreval(resp1[num])
escreval(resp2[num])
escreval(resp3[num])
escreval(resp4[num])
escreval("Qual é a Resposta certa?")
leia(resp_cert)

se (perg[num]=perg[1]) entao
   se (resp_cert="c") entao
   limpatela
   escreval("Certa Resposta!")
   senao
   limpatela
   escreval("Perdeu Tudo!")
   fimalgoritmo
   fimse
fimse
     se (perg[num]=perg[2]) entao
        se (resp_cert="b") entao
        limpatela
        escreval("Certa Resposta!")
        senao
        limpatela
        escreval("Perdeu Tudo!")
        i:=7
        fimse
     fimse
      se (perg[num]=perg[3]) entao
         se (resp_cert="d") entao
         limpatela
         escreval("Certa Resposta!")
         senao
         limpatela
         escreval("Perdeu Tudo!")
         fimalgoritmo
         fimse
      fimse
            se (perg[num]=perg[4]) entao
               se (resp_cert="a") entao
               limpatela
               escreval("Certa Resposta!")
               senao
               limpatela
               escreval("Perdeu Tudo!")
               fimalgoritmo
               fimse
            fimse
                 se (perg[num]=perg[5]) entao
                     se (resp_cert="b") entao
                     limpatela
                     escreval("Certa Resposta!")
                     senao
                     limpatela
                     escreval("Perdeu Tudo!")
                     fimalgoritmo
                     fimse
                 fimse
            se (perg[num]=perg[6]) entao
               se (resp_cert="c") entao
               limpatela
               escreval("Certa Resposta!")
               senao
               limpatela
               escreval("Perdeu Tudo!")
               fimalgoritmo
               fimse
            fimse
         se (perg[num]=perg[7]) entao
            se (resp_cert="a") entao
            limpatela
            escreval("Certa Resposta!")
            senao
            limpatela
            escreval("Perdeu Tudo!")
            fimalgoritmo
            fimse
         fimse
      se (perg[num]=perg[8]) entao
         se (resp_cert="c") entao
         limpatela
         escreval("Certa Resposta!")
         senao
         limpatela
         escreval("Perdeu Tudo!")
         fimalgoritmo
         fimse
      fimse
    se (perg[num]=perg[9]) entao
       se (resp_cert="d") entao
       limpatela
       escreval("Certa Resposta!")
       senao
       limpatela
       escreval("Perdeu Tudo!")
       fimalgoritmo
       fimse
    fimse
se (perg[num]=perg[10]) entao
   se (resp_cert="a") entao
   limpatela
   escreval("Certa Resposta!")
   senao
   limpatela
   escreval("Perdeu Tudo!")
   fimalgoritmo
   fimse
fimse
     se (perg[num]=perg[11]) entao
        se (resp_cert="b") entao
        limpatela
        escreval("Certa Resposta!")
        senao
        limpatela
        escreval("Perdeu Tudo!")
        fimalgoritmo
        fimse
     fimse
        se (perg[num]=perg[12]) entao
           se  (resp_cert="c") entao
           limpatela
           escreval("Certa Resposta!")
           senao
           limpatela
           escreval("Perdeu Tudo!")
           fimalgoritmo
           fimse
        fimse
            se (perg[num]=perg[13]) entao
               se (resp_cert="d") entao
               limpatela
               escreval("Certa Resposta!")
               senao
               limpatela
               escreval("Perdeu Tudo!")
               fimalgoritmo
               fimse
            fimse
                 se (perg[num]=perg[14]) entao
                    se (resp_cert="a") entao
                    limpatela
                    escreval("Certa Resposta!")
                    senao
                    limpatela
                    escreval("Perdeu Tudo!")
                    fimalgoritmo
                    fimse
                 fimse
                      se (perg[num]=perg[15]) entao
                         se (resp_cert="c") entao
                         limpatela
                         escreval("Certa Resposta!")
                         senao
                         limpatela
                         escreval("Perdeu Tudo!")
                         fimalgoritmo
                         fimse
                      fimse
                    se (perg[num]=perg[16]) entao
                       se (resp_cert="b") entao
                       limpatela
                       escreval("Certa Resposta!")
                       senao
                       limpatela
                       escreval("Perdeu Tudo!")
                       fimalgoritmo
                       fimse
                    fimse
                se (perg[num]=perg[17]) entao
                   se (resp_cert="d") entao
                   limpatela
                   escreval("Certa Resposta!")
                   senao
                   limpatela
                   escreval("Perdeu Tudo!")
                   fimalgoritmo
                   fimse
                fimse
            se (perg[num]=perg[18]) entao
               se (resp_cert="b") entao
               limpatela
               escreval("Certa Resposta!")
               senao
               limpatela
               escreval("Perdeu Tudo!")
               fimalgoritmo
               fimse
            fimse
        se (perg[num]=perg[19]) entao
            se (resp_cert="a") entao
            limpatela
            escreval("Certa Resposta!")
            senao
            limpatela
            escreval("Perdeu Tudo!")
            fimalgoritmo
            fimse
        fimse

   se (perg[num]=perg[20]) entao
      se (resp_cert="d") entao
      limpatela
      escreval("Certa Resposta!")
      senao
      limpatela
      escreval("Perdeu Tudo!")
      fimalgoritmo
      fimse
   fimse
se i=7 entao
escreval("AAEEEEEE, você ganhou 1 Milhão de Reais!")
fimse
fimpara
Fimalgoritmo