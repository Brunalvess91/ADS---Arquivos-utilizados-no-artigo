setwd("C:\\Users\\Bruna\\Documents\\Mestrado\\Primeiro Semestre\\Tópicos Avançados em Redes 3")
library(XLConnect)
#kfatorial
wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=6)
sys.aov = aov(sys$Throughput~sys$a*sys$Nº.Nós)
summary(sys.aov)


# MEDIA
wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=7)
mean(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=8)
mean(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=9)
mean(sys$Throughput)



#Desvio Padrão
wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=7)
sd(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=8)
sd(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=9)
sd(sys$Throughput)


#Variancia
wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=7)
var(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=8)
var(sys$Throughput)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=9)
var(sys$Throughput)


#BOXPLOT
wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=7)
boxplot(sys$Throughput, horizontal = TRUE)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=8)
boxplot(sys$Throughput, horizontal = TRUE)

wb = loadWorkbook("kfatorial.xlsx")
sys = readWorksheet(wb, sheet=9)
boxplot(sys$Throughput, horizontal = TRUE)
