#Practica 2

#Parte 1
#Author DataFlair
int_vec= c(1,2,3) 
char_vec =c("a", "b", "c")
bool_vec =c(TRUE, TRUE, FALSE)

Author_DataFlair= data.frame(int_vec,char_vec,bool_vec)

#B

employee_data <- data.frame(
  employee_id = c (1:5),
  employee_name = c("James","Harry","Shinji","Jim","Oliver"),
  sal = c(642.3,535.2,681.0,739.0,925.26),
  join_date = as.Date(c("2013-02-04", "2017-06-21", "2012-11-14", "2018-05-19","2016-03-25")),
  stringsAsFactors = FALSE)

employee_data$sal=employee_data$sal+0.05*100
employee_data$sal



employee_data$join_date= join_date(employee_data$join_date)

join_date = as.Date(c("2013-02-04", "2017-06-21", "2012-11-14", "2018-05-19", "2016-03-25"))



format(join_date, format="%Y")

install.packages("lubridate")

library(lubridate)

employee_data$join_date= year(employee_data$join_date)
employee_data$join_date

#PARTE 2 Caso estadistico

#a 

Genero= c("Femenino","Masculino","Femenino","Masculino","Femenino","Masculino","Femenino","Masculino","Femenino","Masculino")
Edad=c("18","20","30","40","50","60","10","76","37","45")

mis_pacientes= data.frame(Genero,Edad)
#B
Glucemia_basal=c(123,230,180,164,210,220,193,202,152,185)
Antidiabeticos_Orales=c("no","si","no","no","si","no","si","si","no","no")
                        
Pastillas= data.frame(Glucemia_basal,Antidiabeticos_Orales)

#c
max(Glucemia_basal)
min(Glucemia_basal)
mean(Glucemia_basal)
sd(Pastillas$Glucemia_basal)#
#uantile(Pastillas$Glucemia_basal,probs()
         
#D
X= table(Glucemia_basal)

#E
y=table(Genero)
y/length(Genero)

#F
plot(Genero,Edad,type = "L")

#Parte 3
i