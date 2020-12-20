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
duracion <- c(30,118,120,123,125,127,130,136,139,141,155,156,158,159,
              160,160,161,168,170,171,172,174,175,178,178,177,184,185,187,191,191,
              194,197,199,201,206,208,210,211,217,248,263,265,270,289,322,388,513,
              520)
length(duracion) #Tamaño de muestra
quantile(duracion, 0.25) #Primer Cuartil Q1
quantile(duracion, 0.5) #Segundo Cuartil Q2
quantile(duracion, 0.75) #Tercer Cuartil Q3
IQR(duracion) #Rango intercuartílico
stripchart(duracion,at = 1.25,xlim=c(-10,550),method='overplot',
           pch=20,cex = 0.75, col = "blue", main="Número de huecos",xlab="No.
Huecos")
mtext("(método overplot)",side=1,line=4,font=3)
boxplot(duracion, main="Número de huecos",horizontal = T,add=T)
points(mean(duracion),1, pch = 8,add=T)
arrows(158, 1.21, 83, 1.21, length = 0.15, angle = 10, code=2)
text(120.5, 1.225, "1.5*iqr")
arrows(83, 1.21, 8, 1.21, length = 0.15, angle = 10, code=2)
text(45, 1.225, "1.5*iqr")
arrows(208, 1.21, 283, 1.21, length = 0.15, angle = 10, code=2)
text(245, 1.225, "1.5*iqr")
arrows(283, 1.21, 358, 1.21, length = 0.15, angle = 10, code=2)
text(320, 1.225, "1.5*iqr")
segments(83, 1.3, 83, 0.75,lty=3);text(83, 0.7, "f1")
segments(8, 1.3, 8, 0.75,lty=3);text(8, 0.7, "F1")
segments(283, 1.3, 283, 0.75,lty=3);text(283, 0.7, "f3")
segments(358, 1.3, 358, 0.75,lty=3);text(358, 0.7, "F3")
# Ejemplo página 80
oxígeno <- c(5.9,6.1,6.3,6.1,6.0,6.3,6.6,6.4,6.4,6.5,4.8,4.3,5.0,4.7,
             5.1,6.0,6.2,6.1, 5.8)
zona <- c("1","1","1","1","1","2","2","2","2","2","3","3","3","3","3",
          "4","4","4","4")
zona <- factor(zona);zona
rb <- boxplot(oxígeno ~ zona, col="bisque", ylab="Oxígeno Disuelto")
title("Comparando diagrama de caja y media +/- SD")
mn.t <- tapply(oxígeno, zona, mean);mn.t
sd.t <- tapply(oxígeno, zona, sd);sd.t
xi <- 0.3 + seq(rb$n)
points(xi, mn.t, col ="blue", pch=18)
arrows(xi, mn.t-sd.t, xi, mn.t+sd.t, code=3, col="red", angle=75,length=.1)
