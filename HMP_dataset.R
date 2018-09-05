## Diretório de trabalho 
setwd("C:\\Users\\Pichau\\Desktop\\HMP_Dataset")

######################################## 1) Carrega dados
df_medidas  <- data.frame()
arqs = list.files(pattern = ".txt$", recursive = TRUE)
for (a in 1:length(arqs))
{
  arquivo = arqs[a]
  # buscamos arquivos em subdiretórios
  if (!(length(i <- grep('/', arquivo))) == 0)
  {
    movimento = unlist(strsplit(arquivo, "/")[1][1])[1]
    genero = substr(unlist(strsplit(arquivo, "-"))[9],1,1)
    data <- read.table(arquivo)
    data$arquivo <- arquivo
    data$movimento <- movimento
    data$genereo <- genero
    df_medidas <- rbind(df_medidas,data)
  }
}
colnames(df_medidas) <- c("X","Y", "Z", "Arquivo", "Movimento", "Genero")

str(df_medidas)

table(df_medidas$Genero)
table(df_medidas$Movimento)

cor(df_medidas[c("X","Y","Z")])

pdf("histograma_x.pdf")
hist(df_medidas$X, main ="Histograma", xlab = "X")
dev.off()

library(sqldf)
Medidas_por_Tipo = sqldf("select Movimento, count(*) Qtos  
                            from df_medidas group by Movimento
                            order by 2 desc")
library(ggplot2)

pdf("tipo_movimento.pdf")
ggplot(Medidas_por_Tipo, aes(x = Movimento, y = Qtos)) +
  geom_col(aes(fill = Movimento))
dev.off()