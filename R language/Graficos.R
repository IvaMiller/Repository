
PARTE 1

hist(x=Data_Farmacia$Total_Compra_Cliente, main = "Analisis Compra", 
     xlab ='Total de compra', ylab = "Frecuencia")

PARTE 2

Region=select(COVID_Encuesta_a_estudiantes,Region.of.residence,Prefered.social.media.platform)

DELHI=select(Region,Prefered.social.media.platform)
filter(Region,Region.of.residence=="Delhi-NCR")
plot(as.factor(DELHI$Prefered.social.media.platform))

PARTE 3

Analisis_Rating=select(COVID_Encuesta_a_estudiantes,Rating.of.Online.Class.experience)

plot(as.factor(Analisis_Rating$Rating.of.Online.Class.experience))

PARTE 4 

Agrupacionxrating = COVID_Encuesta_a_estudiantes%>%group_by(Prefered.social.media.platform)%>%
  summarise(Edad=max(Age.of.Subject))
library(d)
Analisis_Conpania_Precio=select

PARTE 5 

plot(COVID_Encuesta_a_estudiantes$Time.spent.on.TV,COVID_Encuesta_a_estudiantes$Time.spent.on.social.media,
               main="Relacion tiempo gastado en redes vs TV",
               xlab="tv",  ylab="Redes")
  


