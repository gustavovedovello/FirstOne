###### R COMO CALCULADORA

#operadores (+ - \ * ^) E ORDEM DAS OPERAÇOES

#funções prontas
sqrt(9)
sin(3)
cos(5)
prod(2,4)
abs(-6)
log(3,10)
factorial(5)
help(log)

###### VETORES

#Criar

x <- c(1,2,3,4,5)
y <- scan()

#tamanho do vetor

length(x)
length(y)

#Acessar/modificar elementos do vetor

idades <-scan()
idades[3] #mostra o valor digitado na posição
idades[1:5] #mostra o intervalo
idades[c(2,7,8)] #mostra posições saltadas

idades[8]<-24 #modifica o valor na posição
idades[1:3]<-12:14 

idades[-3] #retira o valor da posição

idades[9]<-33 #adiciona o valor na posição
idades[10:12]<-0

##Operações com vetores

idades<-scan()
idades
#[1] 12 13 20 22
idades+2
#[1] 14 15 22 24
idades-2
#[1] 10 11 18 20
idades+2000
#[1] 2012 2013 2020 2022
idades*3
#[1] 36 39 60 66
idades/2
#[1]  6.0  6.5 10.0 11.0
idades^2
#[1] 144 169 400 484
#etc

idades_g1 <-idades
idades_g2 <-idades*2
idades_g1+idades_g2 # - * /
#[1] 36 39 60 66

max(idades)
#[1] 22
min(idades)
#[1] 12
sort(idades)
#[1] 12 13 20 22
sort(idades, decreasing = TRUE)
#[1] 22 20 13 12

#> X<- c(2,4,5)
#> y<- c(3,5,7)
x>y
#[1] FALSE FALSE FALSE

x==y
#[1] FALSE FALSE FALSE

x[3]==y[2]
#[1] TRUE

x!=y
#[1] TRUE TRUE TRUE

union(x,y)
#[1] 2 4 5 3 7

intersect(x,y)
#[1] 5

setdiff(x,y)
#[1] 2 4

ls() #mostra os vetores criados

remove(idade) #apaga o vetor criado

#### SEQUENCIAS

1:6
#[1] 1 2 3 4 5 6

3:8
#[1] 3 4 5 6 7 8

seq(2,10)
#[1]  2  3  4  5  6  7  8  9 10

seq(2,10,2) # (num inferior, num superior, de quantos em qtos)
#[1]  2  4  6  8 10

length((seq(20,100,10)))
#[1] 9

#ou

c<-seq(20,100,10)
length(c)
##[1] 9

##Usando repetições

rep(5,10)
#[1] 5 5 5 5 5 5 5 5 5 5

rep("João",10)
## [1] "João" "João" "João" "João" "João" "João" "João" "João"

rep(1:10,2)
#[1]  1  2  3  4  5  6  7  8  9 10  1  2  3  4  5  6  7  8  9 10

rep(1:3,2,each=4)
#[1] 1 1 1 1 2 2 2 2 3 3 3 3 1 1 1 1 2 2 2 2 3 3 3 3

##Amostras aleatórias

sample(2:50,4)
#[1] 28 12 14 37 #4 números aleatórios de 2 a 50

sample(1:10,replace=TRUE) #pode repetir
#[1] 7 9 8

numero<- c(4,7,10)
numero
#[1]  4  7 10
rank(numero)
#[1] 1 2 3 # maior rank é o maior número

###MATRIZES:coleçao de vetores em linhas e colunas

#usando vetores

# v1<-c(12,30,20)
# v2<-c(30,60,90)

rbind(v1,v2)
#   [,1] [,2] [,3]
#v1   12   30   20
#v2   30   60   90

cbind(v1,v2)
#v1 v2
#[1,] 12 30
#[2,] 30 60
#[3,] 20 90

A<-rbind(v1,v2)
B<-cbind(v1,v2)

length(v1)
#[1] 3

dim(A)
#[1] 2 3

dim(B)
#[1] 3 2

#usando o comando matrix

matrix(0,2,4)
#[,1] [,2] [,3] [,4]
#[1,]    0    0    0    0
#[2,]    0    0    0    0

matrix("exemplo",2,4)
#[,1]      [,2]      [,3]      [,4]     
#[1,] "exemplo" "exemplo" "exemplo" "exemplo"
#[2,] "exemplo" "exemplo" "exemplo" "exemplo"

matrix(1:20,2,4)
#     [,1] [,2] [,3] [,4]
#[1,]    1    3    5    7
#[2,]    2    4    6    8

matrix(20:30,nrow = 3,ncol = 5,byrow = TRUE)
#[,1] [,2] [,3] [,4] [,5]
#[1,]   20   21   22   23   24
#[2,]   25   26   27   28   29
#[3,]   30   20   21   22   23

matrix(c("a","b","c","d"),nrow = 3,ncol = 5)
#     [,1] [,2] [,3] [,4] [,5]
#[1,] "a"  "d"  "c"  "b"  "a" 
#[2,] "b"  "a"  "d"  "c"  "b" 
#[3,] "c"  "b"  "a"  "d"  "c" 

matrix(c("a","b","c","d"),nrow = 2,ncol = 2)
#     [,1] [,2]
#[1,] "a"  "c" 
#[2,] "b"  "d"

#Acessando elementos da matriz

A<-matrix(5,4,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    5    5    5    5    5
#[2,]    5    5    5    5    5
#[3,]    5    5    5    5    5
#[4,]    5    5    5    5    5

A[3,5] #linha,coluna
#[1] 5

A<-matrix(1:20,4,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

A[3,5]
#[1] 19

A[,5]
#[1] 17 18 19 20

A[4,]
#[1]  4  8 12 16 20

A[1:3,3:5]
#     [,1] [,2] [,3]
#[1,]    9   13   17
#[2,]   10   14   18
#[3,]   11   15   19

A[c(1,3,4),c(3,4)] #linhas e colunas específicas
#     [,1] [,2]
#[1,]    9   13
#[2,]   11   15
#[3,]   12   16

ncol(A)
#[1] 5
nrow(A)
#[1] 4
dim(A)
#[1] 4 5 linhas, coluna

#Modificando os elementos da matriz

A<-matrix(1:20,4,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

A[1,3]<-90
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5   90   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

A[,3]<-c(30,40,50,60)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5   30   13   17
#[2,]    2    6   40   14   18
#[3,]    3    7   50   15   19
#[4,]    4    8   60   16   20

A[2,]<-c(1,2,3,4,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5   30   13   17
#[2,]    1    2    3    4    5
#[3,]    3    7   50   15   19
#[4,]    4    8   60   16   20

v<-c(400,401,500,340)
v

A2<-cbind(A,v)
A2
#                   v
#[1,] 1 5 30 13 17 400
#[2,] 1 2  3  4  5 401
#[3,] 3 7 50 15 19 500
#[4,] 4 8 60 16 20 340

v[5]<-333 #adiconando um numero no vetor
A3<-rbind(A,v)
A3
#[,1] [,2] [,3] [,4] [,5]
#1    5   30   13   17
#1    2    3    4    5
#3    7   50   15   19
#4    8   60   16   20
#v  400  401  500  340  333

A3[-5,]
#[,1] [,2] [,3] [,4] [,5]
#1    5   30   13   17
#1    2    3    4    5
#3    7   50   15   19
#4    8   60   16   20

A3<-A3[-5,] #cria um novo vetor sem a quinta linha
A3

#operações com matrizes

A<-matrix(0,5,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    0    0    0    0    0
#[2,]    0    0    0    0    0
#[3,]    0    0    0    0    0
#[4,]    0    0    0    0    0
#[5,]    0    0    0    0    0

A+4
#[,1] [,2] [,3] [,4] [,5]
#[1,]    4    4    4    4    4
#[2,]    4    4    4    4    4
#[3,]    4    4    4    4    4
#[4,]    4    4    4    4    4
#[5,]    4    4    4    4    4

A-4
#[,1] [,2] [,3] [,4] [,5]
#[1,]   -4   -4   -4   -4   -4
#[2,]   -4   -4   -4   -4   -4
#[3,]   -4   -4   -4   -4   -4
#[4,]   -4   -4   -4   -4   -4
#[5,]   -4   -4   -4   -4   -4

A<-matrix(10,5,5)
B<-matrix(40,5,5)
B
#[,1] [,2] [,3] [,4] [,5]
#[1,]   10   10   10   10   10
#[2,]   10   10   10   10   10
#[3,]   10   10   10   10   10
#[4,]   10   10   10   10   10
#[5,]   10   10   10   10   10

A%*%B #produto matricial
#[,1] [,2] [,3] [,4] [,5]
#[1,] 2000 2000 2000 2000 2000
#[2,] 2000 2000 2000 2000 2000
#[3,] 2000 2000 2000 2000 2000
#[4,] 2000 2000 2000 2000 2000
#[5,] 2000 2000 2000 2000 2000

#Curiosidades sobre matrizes

A<-matrix(1:25,5,5)
A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    6   11   16   21
#[2,]    2    7   12   17   22
#[3,]    3    8   13   18   23
#[4,]    4    9   14   19   24
#[5,]    5   10   15   20   25

det(A) #determinante
#[1] 0

diag(A) #diagonal
#[1]  1  7 13 19 25

B<-A[,-3]
B
#[,1] [,2] [,3] [,4]
#[1,]    1    6   16   21
#[2,]    2    7   17   22
#[3,]    3    8   18   23
#[4,]    4    9   19   24
#[5,]    5   10   20   25

dim(B)
#[1] 5 4

t(B) #inverter linhas/colunas

A
image(A)
A[,1]<-1000
image(A)
A

A[1,]<-c(30,0,400,90,170)
A[2,]<-c(300,2,-3,9,17)

A
image(A)


contour(A) #figura com linhas

A[3,]<-2
A

contour(A)

A
persp(A) #3d

image(volcano) #volcano = banco de dados ja existente
persp(volcano) #3d
contour(volcano)#linhas
volcano

A<-matrix(0,3,3)
A

ncolunas <-c("idade", "sexo", "Estado Civil")
nlinhas <- c("paulo", "João", "Maria")

A<-matrix(0,3,3, dimnames = list(nlinhas,ncolunas))
A
#         idade sexo Estado Civil
#paulo     0    0            0
#João      0    0            0
#Maria     0    0            0

###ARRAY: COLEÇÃO DE MATRIZES

#M1, M2, M3, M4 --> A

A<-matrix(1:20,5) 
# =
A<-array(1:20, dim=c(4,5,1)) # linhas, colunas, quantidade de matrizes 

A
#, , 1

#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

A<-array(c("Recife","Olinda","Jaboatão"), dim=c(4,4,3))
A
#[,1]       [,2]       [,3]       [,4]      
#[1,] "Jaboatão" "Recife"   "Olinda"   "Jaboatão"
#[2,] "Recife"   "Olinda"   "Jaboatão" "Recife"  
#[3,] "Olinda"   "Jaboatão" "Recife"   "Olinda"  
#[4,] "Jaboatão" "Recife"   "Olinda"   "Jaboatão"

dim(A)
#[1] 4 4 3

vetor1<-c(20,40,50)
vetor2<-c("Camila", "Paulo", "Pedro", "Marcos", "Maria")

B<-array(c(vetor1,vetor2),dim=c(3,4,2))
B
#, , 1

#[,1] [,2]     [,3]     [,4]    
#[1,] "20" "Camila" "Marcos" "40"    
#[2,] "40" "Paulo"  "Maria"  "50"    
#[3,] "50" "Pedro"  "20"     "Camila"

#, , 2

#[,1]     [,2]    [,3]     [,4]    
#[1,] "Paulo"  "Maria" "50"     "Pedro" 
#[2,] "Pedro"  "20"    "Camila" "Marcos"
#[3,] "Marcos" "40"    "Paulo"  "Maria" 

##Atribuindo nomes

v1<-c(40,300,150)
v2<-c(50,120,230)
v3<-c(24,15,23)

A<-array(c(v1,v2,v3),dim = c(3,3,3))
A
#, , 1

#[,1] [,2] [,3]
#[1,]   40   50   24
#[2,]  300  120   15
#[3,]  150  230   23

#, , 2

#[,1] [,2] [,3]
#[1,]   40   50   24
#[2,]  300  120   15
#[3,]  150  230   23

#, , 3

#[,1] [,2] [,3]
#[1,]   40   50   24
#[2,]  300  120   15
#[3,]  150  230   23

r.names<-c("Marcos","João", "Maria")
c.names<-c("Gastos com alimentação","Gastos com moradia","Gastos com transporte")

matrizes.names<-c("Janeiro","Fevereiro","Março")


#, , Janeiro

#Gastos com alimentação Gastos com moradia Gastos com transporte
#Marcos                     40                 50                    24
#João                      300                120                    15
#Maria                     150                230                    23

#, , Fevereiro

#Gastos com alimentação Gastos com moradia Gastos com transporte
#Marcos                     40                 50                    24
#João                      300                120                    15
#Maria                     150                230                    23

#, , Março

#Gastos com alimentação Gastos com moradia Gastos com transporte
#Marcos                     40                 50                    24
#João                      300                120                    15
#Maria                     150                230                    23

##Acessando os elementos de um array

gastos_maria<-dados[3,,] #dados da Maria

#                        Janeiro Fevereiro Março
#Gastos com alimentação     150       150   150
#Gastos com moradia         230       230   230
#Gastos com transporte       23        23    23

gastos_joao<-dados[2,,]
gastos_marcos<-dados[1,,]

dados[3,1,] #gasto com alimentação de maria nos tres meses

dados[,1,] #gasto com alimentação
#          Janeiro Fevereiro Março
#Marcos      40        40    40
#João       300       300   300
#Maria      150       150   150

##Modificar elementos do array

dados[3,,3]<-c(50,20,30)
dados

dados[3,1,3]<-200

dados[1,2,2:3] #gasto com moradia fev e março
#Fevereiro     Março 
#      50        50

##Operações com arrays

dados[1,,]

sum(dados[1,,]) #gasto total de marcos
#[1] 328

marcos<-dados[1,,]
marcos

sum(marcos)

mean(marcos)

marcos[1,]
#  Janeiro Fevereiro     Março 
#     50        40        40 

mean(marcos[1,])
#[1] 43.33333

apply(dados, c(1),sum ) #1 por linha, 2 por coluna
#Marcos   João  Maria 
#   328   1305   1056

apply(dados, c(1), mean)
#   Marcos      João     Maria 
#    36.44444 145.00000 117.33333 

dados[,2,] #gasto com moradia

mean(dados[,2,]) #gasto medio com moradia
#[1] 106.6667

apply(dados, c(2), mean)
#Gastos com alimentação     Gastos com moradia  Gastos com transporte 
#170.00000              106.66667               22.11111 

apply(dados[1,,], c(1), sum) #soma dos gastos de Marcos
#Gastos com alimentação     Gastos com moradia  Gastos com transporte 
#130                    120                     78 

dados[,2,] #gastos com moradia
#          Janeiro Fevereiro Março
#Marcos      20        50    50
#João       120       120   120
#Maria      230       230    20

apply(dados[,2,],c(1), mean) #gasto medio de moradia por individuo
#Marcos   João  Maria 
#   40    120    160

dados[,,1] #dados de janeiro

apply(dados[,,1], c(1), sum) #soma dos gastos de janeiro
#Marcos   João  Maria 
#   100    435    403

apply(dados[,,3], c(2), sum) #gasto por tipo no mês de março
#Gastos com alimentação     Gastos com moradia 
#540                    190 
#Gastos com transporte 
#69 

A<-array(10:20,dim=c(3,2,3))
A

### FATORES

# variavel numerica por grupos

est_civ<-c("Casado","Solteiro","Divorciado","Casado","Casado","Casado","Outro","Solteiro")

a<-factor(est_civ)
a
#[1] Casado     Solteiro   Divorciado Casado    
#[5] Casado     Casado     Outro      Solteiro  
#Levels: Casado Divorciado Outro Solteiro

a<-factor(est_civ, levels=c("Solteiro","Casado","Divorciado", "Outro")) #ordem dos níveis
a
#[1] Casado     Solteiro   Divorciado Casado    
#[5] Casado     Casado     Outro      Solteiro  
#Levels: Solteiro Casado Divorciado Outro

estado_civil<-gl(4,2,labels = c("Solteiro","Casado","Divorciado","Outro")) #qtde de niveis, repetições
estado_civil
#[1] Solteiro   Solteiro   Casado     Casado    
#[5] Divorciado Divorciado Outro      Outro     
#Levels: Solteiro Casado Divorciado Outro

###LISTAS

list(4,c("João","Marcos","Maria"),matrix(0,4,5))
#[[1]]
#[1] 4

#[[2]]
#[1] "João"   "Marcos" "Maria" 

#[[3]]
#[,1] [,2] [,3] [,4] [,5]
#[1,]    0    0    0    0    0
#[2,]    0    0    0    0    0
#[3,]    0    0    0    0    0
#[4,]    0    0    0    0    0  

idades<-c(30,40,55)
genero<-c("Masculino","Masculino","Feminino")
cidades<-c("Los Angeles","Londres","São Paulo")

r.names<-c("Marcos","Jõao","Maria")
c.names<-c("Gasto com Alimentação","Gasto com moradia","Gasto com tranporte")

gastos<-array(1:20,dim=c(3,3,3),dimnames=list(r.names,c.names,c("jan","fev","mar")))
gastos
#, , jan

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                     1                 4                   7
#Jõao                       2                 5                   8
#Maria                      3                 6                   9

#, , fev

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    10                13                  16
#Jõao                      11                14                  17
#Maria                     12                15                  18

#, , mar

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    19                 2                   5
#Jõao                      20                 3                   6
#Maria                      1                 4                   7

list1<-list(idades,genero,cidades,gastos)
list1
#[[1]]
#[1] 30 40 55

#[[2]]
#[1] "Masculino" "Masculino" "Feminino" 

#[[3]]
#[1] "Los Angeles" "Londres"     "São Paulo"  

#[[4]]
#, , jan

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                     1                 4                   7
#Jõao                       2                 5                   8
#Maria                      3                 6                   9

#, , fev

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    10                13                  16
#Jõao                      11                14                  17
#Maria                     12                15                  18

##, , mar

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    19                 2                   5
#Jõao                      20                 3                   6
#Maria                      1                 4                   7

names(list1)<-c("Idades","Gênero","Cidades","Gastos")

list1
#$`Idades`
#[1] 30 40 55

#$Gênero
#[1] "Masculino" "Masculino" "Feminino" 

#$Cidades
#[1] "Los Angeles" "Londres"     "São Paulo"  

#$Gastos
#, , jan

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                     1                 4                   7
#Jõao                       2                 5                   8
#Maria                      3                 6                   9

#, , fev

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    10                13                  16
#Jõao                      11                14                  17
#Maria                     12                15                  18

#, , mar

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    19                 2                   5
#Jõao                      20                 3                   6
#Maria                      1                 4                   7

## Acessando as informações da lista

list1[1]
#$`Idades`
#[1] 30 40 55

list1[2]
#$`Gênero`
#[1] "Masculino" "Masculino" "Feminino"

list1[3]
#$`Cidades`
#[1] "Los Angeles" "Londres"     "São Paulo"

list1$Idades
#[1] 30 40 55

list1$Gênero
#[1] "Masculino" "Masculino" "Feminino" 

list1$Idades[1]
#[1] 30

a<-list1$Cidades
a
#[1] "Los Angeles" "Londres"     "São Paulo"

gt<-list1$Gastos
gt
#, , jan

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                     1                 4                   7
#Jõao                       2                 5                   8
#Maria                      3                 6                   9

#, , fev

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    10                13                  16
#Jõao                      11                14                  17
#Maria                     12                15                  18

#, , mar

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    19                 2                   5
#Jõao                      20                 3                   6
#Maria                      1                 4                   7

##Modificando as informações da Lista

list1$Idades<-c(33,70,19)
list1$Idades
#[1] 33 70 19

list1$Cidades<-c("Recife","Olinda","Jaboatão")
list1$Cidades
#[1] "Recife"   "Olinda"   "Jaboatão"

list1$Cidades[2]<-c("Brasilia")
list1$Cidades
##[1] "Recife"   "Brasilia" "Jaboatão"

list1$Gastos[,,1]<-list1$Gastos[,,1]*100
list1$Gastos[,,1]
#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                   100               400                 700
#Jõao                     200               500                 800
#Maria                    300               600                 900

## Adicionando ou removendo itens da lista

names(list1)
#[1] "Idades"  "Gênero"  "Cidades" "Gastos" 

list1[5]<-c("Mensagem de atenção")
list1[5]
#[[1]]
#[1] "Mensagem de atenção"

names(list1)[5]<-c("Aviso")
names(list1)
#[1] "Idades"  "Gênero"  "Cidades" "Gastos"  "Aviso"

list1[5]<-NULL
names(list1)
#[1] "Idades"  "Gênero"  "Cidades" "Gastos"

##Combinando listas(merge)

list2<-list(c("2017","2018","2019"),40,50)
names(list2)<-c("Ano","Número1","Número2")
list2
#$`Ano`
#[1] "2017" "2018" "2019"

#$Número1
#[1] 40

#$Número2
#[1] 50

list3<-c(list1,list2)
list3

#$`Idades`
#[1] 33 70 19

#$Gênero
#[1] "Masculino" "Masculino" "Feminino" 

#$Cidades
#[1] "Recife"   "Brasilia" "Jaboatão"

#$Gastos
#, , jan

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                   100               400                 700
#Jõao                     200               500                 800
#Maria                    300               600                 900

#, , fev

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    10                13                  16
#Jõao                      11                14                  17
#Maria                     12                15                  18

#, , mar

#Gasto com Alimentação Gasto com moradia Gasto com tranporte
#Marcos                    19                 2                   5
#Jõao                      20                 3                   6
#Maria                      1                 4                   7


#$Ano
#[1] "2017" "2018" "2019"

#$Número1
#[1] 40

#$Número2
#[1] 50

### DATAFRAME: Planilha de dados

Nome<-c("João","Maria","Marcos")
Idade<-c(23,34,50)
Gênero<-c("Masculino","Feminino","Masculino")

dados<-data.frame(Nome,Idade,Gênero)
dados
#    Nome Idade    Gênero
#1   João    23 Masculino
#2  Maria    34  Feminino
#3 Marcos    50 Masculino

str(dados)
#'data.frame':	3 obs. of  3 variables:
#$ Nome  : Factor w/ 3 levels "João","Marcos",..: 1 3 2
#$ Idade : num  23 34 50
#$ Gênero: Factor w/ 2 levels "Feminino","Masculino": 2 1 2

dim(dados)
#[1] 3 3

names(dados)
#[1] "Nome"   "Idade"  "Gênero"

summary(dados)
#Nome       Idade             Gênero 
#João  :1   Min.   :23.00   Feminino :1  
#Marcos:1   1st Qu.:28.50   Masculino:2  
#Maria :1   Median :34.00                
#           Mean   :35.67                
#           3rd Qu.:42.00                
#           Max.   :50.00     


##Acessando suas informações

dados[1,]
#  Nome Idade    Gênero
#1 João    23 Masculino

dados[,2]
#[1] 23 34 50

dados[2,2]
#[1] 34

attach(dados)

dados$Idade
#[1] 23 34 50

dados$Nome
#[1] João   Maria  Marcos
#Levels: João Marcos Maria

## Modificando as informações do Dataframe

dados$Idade[2]<-40
dados$Idade
#[1] 23 40 50

dados$Idade<-c(40,45,39)
dados$Idade
#[1] 40 45 39

## Adcionando Variáveis aos dados

dados$Cidade<-c("Recife","Olinda","Jaboatão")

dados
#Nome Idade    Gênero   Cidade
#1   João    40 Masculino   Recife
#2  Maria    45  Feminino   Olinda
#3 Marcos    39 Masculino Jaboatão

dados$Renda<-c(4000,5000,5500)
dados  
#Nome Idade    Gênero   Cidade    Renda
#1   João    40 Masculino   Recife  4000
#2  Maria    45  Feminino   Olinda  5000
#3 Marcos    39 Masculino Jaboatão  5500

dados$Renda<-NULL #apagar
dados
#ou
dados<-dados[,-5]
dados

dados<-dados[,-4]
dados
#    Nome Idade    Gênero
#1   João    40 Masculino
#2  Maria    45  Feminino
#3 Marcos    39 Masculino

#Adicionando ou removendo indivíduos(Casos)

dados$Nome<-as.character(dados$Nome) # troca de FaCTOR para Chr



str(dados)
#'data.frame':	3 obs. of  3 variables:
# $ Nome  : chr  "João" "Maria" "Marcos"
# $ Idade : num  23 34 50
# $ Gênero: Factor w/ 2 levels "Feminino","Masculino": 2 1 2


dados[4,]<-c("Paula","70","Feminino")

dados
#Nome Idade    Gênero
#1   João    23 Masculino
#2  Maria    34  Feminino
#3 Marcos    50 Masculino
#4  Paula    70  Feminino

dados$Idade<-as.numeric(dados$Idade)
str(dados)
#'data.frame':	4 obs. of  3 variables:
# $ Nome  : chr  "João" "Maria" "Marcos" "Paula"
# $ Idade : num  23 34 50 70
# $ Gênero: Factor w/ 2 levels "Feminino","Masculino": 2 1 2 1

### CONSTRUINDO SUAS PROPRIAS FUNÇÕES

# = é recebe
# == teste
# != diferente

3==4
#[1] FALSE
3==3
#[1] TRUE

x<-scan()
x
#[1]  4  5 12  3

x[2]==4
#[1] FALSE

x[2]==5
#[1] TRUE

4!=5
#[1] TRUE

4!=4
#[1] FALSE

x!=5
#[1]  TRUE FALSE  TRUE  TRUE

4>5
#[1] FALSE
4>2
#[1] TRUE

x>5
#[1] FALSE FALSE  TRUE FALSE
x>=5
#[1] FALSE  TRUE  TRUE FALSE

