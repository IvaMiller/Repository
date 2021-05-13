#Practica #1

#FOR

for (i in 1:50) {
  
  print(i)
  
  
}


#IF

Jocotes=10
Manzanas=20

if(Jocotes<Manzanas) {
  print("OK")
}else{
  print("NO")
  
}

#Declaracion de variables

#double

a <- 4

typeof(a)


#Integer
Mi_estatura= 1.63

Mi_estatura


mi_edad <- 26L

mi_edad

#Caracter

"Ivannia Miller Vasquez"
is.character('ivanniaMillerVasquez')

#VECTORES

Maiz=c(1L,2L,3L,4L,5L,6L,7L,8L,9L,10L)
typeof(Maiz)


Meses=c("Enero","Febrero","Marzo","Abril","Mayo","Junio")

Meses

nombre_personas=c("Ivannia","Karla","Maria")

nombre_personas

#Punto 6

Mascotas= c(1,2,3,4,5,6)
names(Mascotas)= c("Perro","Gato","Pajaro","Tortuga","Cerdito","Hamster")
View(Mascotas)

Nombres = c(1,2,3,4,5,6)
names(Nombres)= c("Dogui","Toti","Yihui","Can","Oin","tato")
View(Nombres)

#Punto 7

Nombre_Pelicula= c("Shrek","Shrek 2","Shrek tercero","Shrek felices para siempre")

Puntuacion= c("7.9","7.2","6.1","6.3")
                
ano=c(TRUE,TRUE,FALSE,FALSE)


for (i in 1:4)

if (ano[i]<=2005) {
  print("Verdadero")
  
}else{
#Punto 8

ventas=c(2000,3000,5000,6000,6000)
 length(ventas)
 max(ventas)
min(ventas)
sum(ventas)
mean(ventas)
median(ventas)
sort(ventas,decreasing = TRUE)
plot(ventas)
unique(ventas)
which(ventas==6000)
which.max(ventas)
which.min(ventas)
sqrt(ventas)

#Punto 9

vector=c(1:100)

#Punto 10


seq(1,100,by=10)

#Punto 11
Nombre_Pelicula= c("Shrek","Shrek 2","Shrek tercero","Shrek felices para siempre")

Puntuacion= c("7.9","7.2","6.1","6.3")

ano=c(TRUE,TRUE,FALSE,FALSE)

Frame1= data.frame(Nombre_Pelicula,Puntuacion,ano)


#Punto !2

# A ingreso de resultados

results=c("A","A", "B", "B", "B", "B", "B","I","I","I","R","I","I","I","R","R",
          "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
          "M", "M", "M", "M", "M", "M", "M","A","A")
 View(results)
 
 #B Frecuencia ABSOLUTA
 
X= table(results)

#C FRECUENCIA RELATIVA

X/length(results)


