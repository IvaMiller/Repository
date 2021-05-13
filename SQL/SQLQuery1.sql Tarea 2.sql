 a.Muestre las personas que tienen el apellido Paz y tienen 50 años de edad

use CURSO
select p.APELLIDO, p.EDAD 
from PERSONA p
where p.EDAD=50 and p.APELLIDO='paz'
order by p.APELLIDO

select*
from PERSONA

b.Muestra todas las personas en la que las edades sean diferentes de 50, 40 y 25 (no utilice IN)
	

select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD not in (50,40,25)
order by EDAD

c Muestra todas las personas en la que las edades sean iguales de 50, 40 y 25 (utilice IN )

 select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD in (50,40,25)
order by EDAD

d.Muestra todas las personas que tienen edad entre los 18 y 30 incluyendo los extremos

select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD between 18 and 30
order by EDAD

e. Muestra las personas donde la primera letra del apellido es P (recuerde usar like con %)

select p.NOMBRE, p.APELLIDO
from PERSONA p
where p.APELLIDO like 'P%'
order by p.APELLIDO

f. Muestra las personas que en su apellido tengan una R (recuerde usar like con % %)

select p.NOMBRE, p.APELLIDO
from PERSONA p
where p.APELLIDO like '%R%'
order by p.APELLIDO

g. Muestra todas las personas que tienen 25 o 45 o 50 años (usando IN)

select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD=25 or p.EDAD=45 or p.EDAD=50

select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD in (25,45,50)


i. Muestra todas las personas donde el apellido sea PAZ o VARGAS (las cadenas se comparan entre comilla simple '')

select p.NOMBRE, p.APELLIDO
from PERSONA p
where p.APELLIDO like'Paz%' or APELLIDO like 'Vargas%'
order by p.APELLIDO

j. Mostrar las personas que tienen más de 40 años de edad.

select p.EDAD, p.NOMBRE, p.APELLIDO
from PERSONA p
where p.EDAD>= 40
order by EDAD


k. Muestra las personas en las que el apellido sea diferente a PAZ y VARGAS

select p.NOMBRE, p.APELLIDO
from PERSONA p
where p.APELLIDO not in ('Paz','Vargas')
order by p.APELLIDO

l. Muestre todas las personas en la que la edad no este entre los 25 y 50 años

select p.NOMBRE, p.APELLIDO, p.EDAD
from PERSONA p
where p.EDAD not between 25 and 50

m. Muestre las cedulas de todos aquellos alumnos que tienen notas superiores a 85.
  
 select h.CEDULA,h.NOTA
  from HISTORIAL h
where NOTA>85

n. Muestre el nombre de las personas que tienen edades menores a 30

select p.NOMBRE, p.edad
  from PERSONA p
where EDAD <30

ñ. Muestre la cédula y el nombre de las personas que tiene edades entre los 18 y 25 años.

select p.CEDULA, p.NOMBRE
  from PERSONA p
 where p.edad between 18 and 25

o. Muestre la cédulas de las personas que llevan el curso 1 pero la nota no es mayor a 80.

select h.CEDULA 
  from HISTORIAL h
  where h.CODIGO_curso = '1' and h.NOTA <80


P. Muestre la cédula nombre y apellido de las personas en la que la edad sea 20,40 o 50.

select p.CEDULA, p.NOMBRE, p.APELLIDO
 from PERSONA p
 where p.edad in (25, 40, 50)

Q. Muestre la cédula y el nombre de las personas que tienen una 'a' en cualquier parte del nombre.

select p.CEDULA, p.NOMBRE
 from PERSONA p
 where p.NOMBRE like '%a%'
