# Visualización de datos - Página 52
nidada1 <- c(23, 24, 25)
nidada2 <- c(21, 24, 27)
stripchart(nidada1, pch=19, at = 0.8, xlim=c(20,28), main="Peso de huevos, nidadas 1 y 2", xlab="peso(gr)")
text(24, 0.9, "nidada 1")
abline(h=0.8,lty=3) #traza eje punteado a lo largo de nidada 1
stripchart(nidada2,pch=19,add = TRUE, at = 1.1)
text(24, 1.2, "nidada 2")
abline(h=1.1,lty=3) #traza un eje punteado a lo largo de nidada 2
# Visualización de datos - Página 53
nidada1 <- c(23, 24, 25)
nidada3 <- c(21, 26, 27)
nidada4 <- c(21, 22, 27)
stripchart(nidada3,pch=19, at = 0.95,xlim=c(20,28), main="Peso de
huevos, nidadas 1,3 y 4", xlab="peso(gr)")
text(24, 1.05, "nidada 3")
stripchart(nidada1, pch=19, at = 0.65, add = TRUE,)
text(24, 0.75, "nidada 1")
stripchart(nidada4,pch=19, add = TRUE, at = 1.25)
text(24, 1.35, "nidada 4")
# Medidas de tendencia central
horas1 <- c(8.1, 7.3, 7.7, 7.5, 7.8, 7.2, 7.9)
mean(horas1)
horas2 <- c(8.1, 7.3, 7.7, 7.5, 7.8, 7.2, 16.5)
mean(horas2)
horas3 <- c(8.1, 7.3, 7.7, 7.5, 7.8, 7.2, 1.5)
mean(horas3)
# Para el cálculo de la mediana se requiere determinar las estadísticas de orden, a saber:
resistencia <- c(10.71,11.18,10.98,11.04,10.91,10.56,11.42,10.8,11.12,10.86)
sort(resistencia)
median(resistencia)
#
huevos <- c(87,100,110,89,67,96,103,97,95,89,103,83,87,97,66)
mean(huevos)
median(huevos)
table(huevos)
huevos
# Medidas de dispersión o variabilidad
gestacion<-c(291,289,295,276,293,302,293,304,291,294,311,281,300,291,310,325,309,315,295,304,285,311,308,308,291,298,305,316,302,302)
stem(gestacion, scale = 0.5) # Diagrama de tallo y hojas
stem(gestacion, scale = 1) #Diagrama mas desagregado
# Para determinar la forma de la distribución se usa el histograma
retardos<-c(68,63,42,27,30,36,28,32,79,27,22,23,24,25,44,65,43,25,74,
            51,36,42,28,31,28,25,45,12,57,51,12,32,49,38,42,27,31,50,38,21,16,24,
            69,47,23,22,43,27,49,28,23,19,46,30,43,49,12)
# con la opcion right = F, los puntos de corte de las clases no contienen el límite superior asi [li,ls) 
hist(retardos,right = F,main='Histograma para número de retardos/mes (n=57 meses)',ylab='frecuencia', col='dodgerblue4',labels = TRUE)

# Diagrama de caja:   Página 75
# Este diagrama es una poderosa herramienta para explorar un conjunto de datos y aporta información para
# detectar simetría, examinar la variabilidad y detectar observaciones atípicas.

