use [Retro_Res]

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
VALUES ('Mario','Rodriguez','mario.r@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
VALUES('Karla','Ramirez','ka.ra@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
Values ('Ivannia','Vasquez','iva.v@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
values ('Raul','Rodriguez','RAU.RP@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
Values ('Maria','Morales','ma.mo@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
Values ('Roger','Miller','ro.mill@hotmail.com')

Insert into [dbo].[Administrador]([Nombre],[Apellido],[Correo])
values ('Maria','Perez', 'ma.pe@hotmail.com')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
VALUES ('Juan','Helms','22346576')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
Values ('Martin','Morales','23234556')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
Values ('Ramiro','Nunez','89078967')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
Values ('Kendall','Toboa','89977656')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
Values ('kendall', 'Miller','78900987')

Insert into [dbo].[Cliente]([Nombre],[Apellido],[telefono])
Values ('Ivannia','Morales', '89654578')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Mario', 'Lopez','500000')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Olga','Hernandez','550000')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Xenia','Vasquez','600000')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Jorge','Viquez','500000')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Walter','Villalobos','420000')

Insert into [dbo].[Empleado]([Nombre],[Apellido],[Salario])
Values('Valeria','Villalobos','600000')


Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Arroz','400','Integral')


Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Frijoles','500','Molidos')

Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Carne','600','Magra')

Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Pan','500','Bimbo')

Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Fideos','600','Maggie')

Insert into [dbo].[Producto]([Nombre],[Stock],[Descripcion])
Values('Queques','1000','Premiun')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('Los Patitos','22345677','lospatis@co.cr')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('Carnes Don Julio','','Donjulio@carnes.com')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('InternationalSA','567890987','international.usa.com')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('BimboSA','','bimbo.co.cr@hotmil.com')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('Raulsa','23456789','rau.cr@hotmail.com')

Insert into [dbo].[Proveedores]([Nombre],[Telefono],[correo])
Values('ChiquitaSA','23456789','chiquits@hotmail.com')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('01/06/2020','1000000','Compra_proveedor')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('01/06/2019','500000','Venta_Cliente')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('01/07/2019','600000','Compra_proveedor')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('03/12/2018','450000','Venta_Cliente')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('05/12/2018','350000','Compra_proveedor')

Insert into[dbo].[Registro]([Fecha_Registro],[Monto_Total],[Tipo_Registro])
Values('01/06/2020','100000','Venta_Cliente')


Insert into [dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
values ('06/06/2019','3')

Insert into[dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
Values ('06/20/2020','4')

Insert into[dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
Values ('06/06/2018','8')

Insert into[dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
Values ('12/12/2019','10')

Insert into[dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
Values ('12/12/2019','5')

Insert into[dbo].[Reserva]([Fecha_Reserva],[Cantidad_Personas])
Values ('12/23/2018','12')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('Karaoke','600000')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('DJ','1000000')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('Concierto','2000000')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('Express','600000')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('Cocteleria','2000000')

Insert into[dbo].[Servicios_Restaurante]([Tipo_Servicio],[Costo])
Values ('Limpieza','1000000')




..................................................................................................
Select*
from empleado

update Empleado
SET Nombre='Mario', Apellido='Miller'
where ID_Cedula_Empleado=1

update Producto
SET Stock='300'
where ID_Producto=2

update Cliente
SET Apellido='Falla'
where ID_Cedula_Cliente=3

update Cliente
SET Apellido='Vasquez'
where ID_cliente=3

update Proveedores
SET Nombre='Asosc'
where ID_Proveedor=4


Delete
from Proveedores
where Nombre='Asosc'

Delete
from Cliente
where Apellido='Vasquez'

Delete
from Registro
where Monto_Total='350000'

Delete
from Administrador
where Correo='RAU.RP@hotmail.com'

Delete
from Servicios_Restaurante
where Tipo_Servicio='Limpieza'


select count(ID_Cedula_Empleado) AS Cuenta, Salario
From Empleado
group by Salario
having COUNT(ID_Cedula_Empleado)>1

select COUNT(ID_Producto),Stock
From Producto
group by Stock
having COUNT(ID_Producto)>1


select COUNT(ID_Cliente),Apellido
From Cliente
group by Apellido
having count (ID_Cliente)>1

select COUNT(ID_Cliente), Nombre
From Cliente
group by Nombre
having count (ID_Cliente)>1

select COUNT(ID_Reserva),Fecha_Reserva
From Reserva
group by Fecha_Reserva
having COUNT(ID_Reserva) > 0

Select Nombre,Apellido
from Cliente
order by Apellido asc
use [Retro_Res]
Select *
from proveedores

Select Nombre,Apellido
from Cliente
order by Nombre asc

Select Nombre,Telefono
from Proveedores
order by Telefono desc

Select Nombre,Telefono
from Proveedores
order by Telefono desc

Select Fecha_Reserva,Cantidad_Personas
from Reserva
order by Cantidad_Personas asc

Select P.nombre, H.Nombre 
from [dbo].[Producto] P 
inner join [dbo].[Proveedores] H on P.[ID_Producto]= H.[ID_Producto]

Select C.[Nombre], C.[Apellido],R.[Fecha_Reserva],R.[Cantidad_Personas]
from [dbo].[Cliente] C
inner join [dbo].[Reserva] R on R.[ID_Cliente]= C.[ID_Cliente]

Select A.[Nombre], A.[Apellido],E.[ID_Cedula_Empleado],E.[Nombre], E.[Apellido],E.[Salario]
from[dbo].[Administrador] A
inner join[dbo].[Empleado] E on A.[ID_Cedula_Administrador]= E.[ID_Cedula_Administrador]

Select P.[Nombre], P.[Stock],S.[Nombre]
from [dbo].[Producto] P
inner join [dbo].[Proveedores] S  on P.[ID_Producto]=S.[ID_Producto]

Select R.[ID_Reserva],R.[Fecha_Reserva], C.[Nombre], C.[telefono]
from [dbo].[Reserva] R
inner join [dbo].[Cliente] C ON R.[ID_Cliente]= C.[ID_Cliente]
Select *
from proveedores

Select [Nombre], count([ID_Proveedor]) as 'ID PROVE'
from [dbo].[Proveedores]
where [ID_Producto]=1
group by Nombre
having count([ID_Proveedor])>=1

Select [Nombre],COUNT([ID_Cliente]) as 'cantidad'
from [dbo].[Cliente]
where [Nombre]='Kendall'
group by Nombre
having count ([ID_Cliente])>=1

Select [Fecha_Reserva], count([Cantidad_Personas]) AS 'Cantidad'
from [dbo].[Reserva]
where [Fecha_Reserva]='2019-06-06'
group by [Fecha_Reserva]
having count([Cantidad_Personas])>1

select*
from Reserva

Select Replace (Nombre,'Juan','Jorge') as'nombre remplazado'
from [dbo].[Cliente]

Select [ID_Reserva],[Cantidad_Personas],[Fecha_Reserva]
from [dbo].[Reserva]
where year(Fecha_Reserva)=2020

Select concat('Ivannia','Miller') as 'Nombre concatenado'
 
 Select*
 From cliente
 WHERE Nombre like'%N'


