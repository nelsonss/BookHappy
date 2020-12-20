# Estadística con aplicaciones en R. / Manuel Ricardo Contento Rubio
# Datos antropométricos en jóvenes. Página 26
Edad <- c(3,5,6,8,10,3,6,8,14)
Peso <- c(14,17,19,23,32,12,20,26,40)
mean(Peso)
sd(Edad)
cor(Edad, Peso)
plot(Edad, Peso)
# Para obtener una lista de los datos disponibles,ejecute la sentencia data()
data(BOD)
BOD
# Para leer los datos desde un archivo Página 33
# Tener muy en cuenta el separador de decimales
x <- read.table("indicadores.csv", header = T, sep = ";", dec=",")
x
nombres<-c("ciudad","población","menores5","desempleo2013","desempleo2014")
names(x)<-nombres
# Calcule la proporción de menores de cinco años usando
tasamenores5 <- x$menores5/x$población

# Se puede modificar la base de batos adicionando esta columna; 
# tenga la precaución de usar un nuevo nombre para el conjunto de datos
# con dicha modificación, esto se logra con la instrucción siguiente.
xnuevo <- data.frame(x, tasamenores5)
xnuevo
# Genere un diagrama circular (pie) usando el código adjunto:
pie(xnuevo$población,labels=xnuevo$ciudad, main="Distribución
    porcentual de la población por ciudad", col = c("purple4",
    "violetred1", "green3", "cornsilk2"))

print("Diagrama de barras ordenado.")
# Ordena base datos descendente según tasamenores5 (- indica descendente)
xnuevo1<-xnuevo[order(-xnuevo$tasamenores5),]
barplot(xnuevo1$tasamenores5, main="Proporción de población menor
de 5 años por ciudad", xlab ="Ciudad", names.arg=xnuevo1$ciudad,
        ylim=c(0,0.25),col = rainbow(4),cex.names=0.9)
# Ahora ejecute las instrucciones siguientes. Página 35
desempleo<-rbind(xnuevo$desempleo2013,xnuevo$desempleo2014)
barplot(desempleo, main="Tasa de desempleo 2013-2014 por ciudad",xlab="Ciudad",
        names.arg=xnuevo$ciudad, ylim=c(0,15), col=c("lightcyan","lavender"),
        cex.names=0.9, beside = T, legend.text = c("2013", "2014"))
# Construya la base de datos en Excel y guarde el archivo como tipo CSV. Página 37
pobreza <- read.table("indicadoresSobrePobreza.csv", header = T, sep = ";", dec=",")
nombres<-c("Ciudad","Poblacion2013","IPM2011","IPM2012","IPM2013","TTI_A2012","TTI2012","PPE2013","X","X.1","X.2","X.3")
names(pobreza)<-nombres
pobreza
# a) Calcule la proporción de personas en pobreza extrema como tasaPPE2013=PPE2013 /Poblacion2013
#    y luego modifique la base de batos adicionando esta columna.
tasaPPE2013<-pobreza$PPE2013/pobreza$Poblacion2013
# ....
# Página 38
clientes <- read.table("tabla1_2.csv", header=TRUE, sep=";",dec=",")
# # Use la siguiente instrucción para denominar ID a la variable V0.
#    colnames(clientes)[ colnames(clientes) == "V0" ] <- "ID"
# V1: Educación V6: Número_Hijos
# V2: Edad V7: Ingreso
# V3: Actividad_Económica V8: Producto
# V4: Género V9: Medio
# V5: Estado_Civil
nombres<-c("ID","Educación","Edad","Actividad_Económica","Género","Estado_Civil","Número_Hijos","Ingreso","Producto","Medio") 
names(clientes)<-nombres
clientes
# Puesto que esta base de datos tiene 9 variables, se requiere ser eficiente para hacer mención
# a ellas; para esto se usa la opción attach()

attach(clientes) #para fijar las variables del data frame
clientes
#Convertir la variable Educación en un factor
Educación <- factor(Educación)
#Asignación de los niveles al factor:
levels(Educación) <- c("Primaria Incompleta", "Primaria Completa","Bachillerato Incompleto","Bachillerato Completo", "Técnico", "Universitario")
#Indicar que se trata de un factor ordinal:
Educación <- ordered(Educación)
Educación
#Convertimos la variable Género en un factor
Género <- factor(Género)
#Asignamos los niveles al factor:
levels(Género) <- c("Femenino", "Masculino")
Género
table(Género)
#Gráfica 1
barplot(table(Género))
#Gráfica 2
barplot(table(Género), main="Distribución por Género", xlab="Género",
        ylab="Frecuencia")
#Gráfica 3
barplot(table(Género), main="Distribución por Género", xlab="Género",
        ylab="Frecuencia", names.arg=c("Mujeres","Hombres"))
#Gráfica 4
barplot(table(Género), main="Distribucion por Género", xlab="Género",
        ylab="Frecuencia", names.arg=abbreviate(levels(Género)))
# ¿Cuál de las cuatro gráficas considera más conveniente o apropiada para hacer una presentación en público?
#  Explique.
# PÁGINA 41
install.packages("faraway") #instala el paquete faraway
library(faraway) #carga el paquete faraway
try(data(package = "faraway")) #lista las BD incluidas en el paquete "faraway"
help(gala) #información de la data gala
data(gala) #carga la base de datos especificada (gala)
gala #muestra la base de datos gala
dim(gala) #indica la dimensión de la base de datos
names(gala) #Muestra los nombres de las variables
summary(gala) #Visualiza un resumen de las variables
pairs(gala) #matriz de diagramas de dispersión
