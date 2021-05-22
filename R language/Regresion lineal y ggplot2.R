
library(ggplot2)
attach(Data_de_ventas_1)
names(Data_de_ventas_1)

library(tidyverse)
library(boo)
library(car)
library(QuantPsyc)

Modelo_Regresion1=lm(ventas ~ Publicidad,Data_de_ventas_1=ventas)
summary(Modelo_Regresion1)

regresion <- lm(grasas ~ edad, data = grasas)
summary(regresion)


Grafico=ggplot(Data_de_ventas_1,aes(Publicidad,ventas))

Grafico+geom_point()

Grafico+geom_point()+geom_smooth(method = "lm",colour="Pink")

#1 Grafico
ggplot(data=Data_de_ventas_1)+geom_point(mapping = aes(ventas,Publicidad),
                                         color="Pink",Shape=2,size=4)

#2 Grafico

ggplot(data=Data_de_ventas_2)+
  geom_bar(aes(ventas,
               fill=as.factor(Ano)),
           position ="stack")

#3 Grafico

ggplot(data=Data_de_ventas_2)+
  geom_histogram(aes(ventas,
                     y=-..Publicidad..),bins=20,
                 fill="Pink")
