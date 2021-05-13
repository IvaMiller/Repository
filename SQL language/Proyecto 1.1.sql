
    
USE [Northwind]
/*1. Seleccionar todos los campos de la tabla clientes, 
ordenado por nombre del contacto de la compa��a, alfab�ticamente.*/
Select*
from [dbo].[Customers]
order by ContactName asc


/*2. 2.    Seleccionar todos los campos de 
la tabla �rdenes, ordenados por fecha de la orden, descendentemente.*/
Select*
from [dbo].[Orders]
order by OrderDate desc


/*3. 3.    Seleccionar todos los campos de la tabla detalle 
de la orden, ordenada por cantidad pedida, ascendentemente.*/
Select*
From [dbo].[Order Details]
order by Quantity asc


/*4. Obtener todos los productos, cuyo nombre 
comienzan con la letra P y tienen un precio unitario comprendido entre 10 y 120.*/
Select *
from[dbo].[Products]
where ProductName like'P%' and [UnitPrice] between 10 and 120



/*5. Obtener todos los clientes de los pa�ses de. USA, Francia y UK.*/
Select*
From [dbo].[Customers]
where Country in ('USA','Francia','UK')



/*6. Obtener todos los productos descontinuados y 
sin stock, que pertenecen a las categor�as 1, 3, 4 y 7.*/


Select Discontinued, ProductName, CategoryID
from [dbo].[Products]
where [CategoryID] in (1,3,4,7) and Discontinued = 1 and UnitsInStock = 0



/*7. Obtener todas las �rdenes hechas por el empleado con c�digo. 2, 5 y 7 en el a�o 1996*/
Select OrderID,EmployeeID,OrderDate
from [dbo].[Orders]
where [EmployeeID] in ('2','5','7') and YEAR(OrderDate)=1996
order by EmployeeID asc


/*8. Seleccionar todos los clientes que cuenten con FAX*/
Select *
From[dbo].[Customers]
where Fax is not null


/*9. Seleccionar todos los clientes que no cuenten con FAX, del pa�s de USA*/
Select *
From[dbo].[Customers]
where Fax is null and [Country]in('USA')



/*10. Seleccionar todos los empleados que cuentan con un jefe.*/
Select *
From[dbo].[Employees]
where ReportsTo is not null


/*11. Seleccionar todos los campos del cliente, cuya compa��a empiece con la letra de 
A hasta la D y pertenezcan al pa�s de USA, ordenarlos por la direcci�n.*/


Select *
From [dbo].[Customers]
Where CompanyName Like 'A%' or CompanyName Like 'B%' or CompanyName Like 'C%' or CompanyName Like 'D%'
and Country = 'USA'
Order by Address 


/*12.    Seleccionar todos los campos del proveedor, cuya compa��a no comience con las letras de la B a 
la G, y pertenezca al pa�s de UK, ordenarlos por nombre de la compa��a.*/


Select *
From [dbo].[Suppliers]
Where NOT (CompanyName like('B%') or 
CompanyName like('C%') or
CompanyName like('D%') or
CompanyName like('E%') or
CompanyName like('F%') or
CompanyName like('G%'))
AND Country ='UK'
Order by CompanyName


/*13. Seleccionar los productos vigentes cuyos precios unitarios est�n entre 35 y 250, 
sin stock en almac�n. Pertenecientes a las categor�as 1, 3, 4, 7 y 8, que son distribuidos 
por los proveedores 2, 4, 6, 7 y 9. */


Select *
From [dbo].[Products]
Where (UnitPrice between 35 and 250) and (CategoryID in (1,3,4,7,8)) and (SupplierID in (2,4,6,7,9))



/* 14.    Seleccionar todos los campos de los productos descontinuados, 
que pertenezcan a los proveedores con c�digos. 1, 3, 7, 8 y 9, que tengan stock en 
almac�n, y al mismo tiempo que sus precios unitarios est�n entre 39 y 190, ordenados por 
c�digo de proveedor y precio unitario de manera ascendente.*/


Select * 
From [dbo].[Products]
Where (Discontinued=1) and (SupplierID in (1,3,7,8,9)) and (UnitsInStock > 0) and (UnitPrice between 39 and 190)
Order by SupplierID Asc, UnitPrice Asc


/*15. Seleccionar los 7 productos con precios m�s caros, que cuenten con stock en almac�n. */


Select top 7 *
From [dbo].[Products]
Where UnitsInStock>0
Order by UnitPrice Desc


/*16. Seleccionar los 9 productos, con menos stock en almac�n, que pertenezcan a la categor�a 3, 5 y 8.*/
Select top 9 *
From [dbo].[Products]
Where CategoryID in (3,5,8)
Order by UnitsInStock Asc


/*17. Seleccionar las �rdenes de compra, realizadas por el empleado con 
c�digo entre el 2 y el 5, adem�s de los clientes con c�digos que comienzan con las 
letras de la A hasta la G, del 31 de Julio de cualquier a�o.*/


Select *
From [dbo].[Orders]
Where (EmployeeID between 2 and 5) and (CustomerID like 'A%' 
OR CustomerID like 'B%' OR CustomerID like 'C%' OR CustomerID like 'D%' 
OR CustomerID like 'E%' OR CustomerID like 'F%' OR CustomerID like 'G%')
and ( Day(OrderDate)='31')
and ( Month(OrderDate)='7')



/*18.    Seleccionar las �rdenes de compra, realizadas por el empleado con 
c�digo 3, de cualquier a�o pero solo de los �ltimos 5 meses (agosto - Diciembre).*/
Select * 
From [dbo].[Orders]
Where (EmployeeID = 3) and (MONTH(OrderDate) in (8,9,10,11,12))



/*19.    Seleccionar los detalles de las �rdenes de compra, que tengan un monto de 
cantidad pedida entre 10 y 250*/
Select *
From [dbo].[Order Details]
Where (Quantity between 10 and 250)


Mostrar el c�digo de la orden de compra, la fecha de la orden de compra, 
el c�digo del producto, el nombre del producto y la cantidad pedida*/ 

Select O.[OrderID],[OrderDate],E.[ProductID],[ProductName],[QuantityPerUnit]
From [dbo].[Orders] O
inner join [dbo].[Order Details] B ON O.OrderID=B.OrderID
inner join [dbo].[Products] E ON B.ProductID=E.ProductID


/*21.    Mostrar: c�digo de la categor�a, el nombre de la categor�a, cod. Producto, 
nombre del producto y precio.*/

Select a.[CategoryID], [CategoryName],p.[ProductID],[ProductName],[UnitPrice]
From Categories a
inner join [dbo].[Products] p on p.[CategoryID]=a.CategoryID

/*22.    Mostrar: n�mero de la orden, fecha de la orden, c�digo del producto, cantidad,
precio y flete de la orden*/
/*NO PUDE HACERLA*/

Select O.[OrderID],[OrderDate],E.[ProductID],[QuantityPerUnit],[ShipName]
From [dbo].[Orders] O
inner join [dbo].[Order Details] B ON O.OrderID=B.OrderID
inner join [dbo].[Products] E ON B.ProductID=E.ProductID
INNER JOIN [dbo].[Customers] C ON O.CustomerID=C.CustomerID
INNER JOIN [dbo].[Shippers] S ON C.CompanyName=S.CompanyName

/*23.    Mostrar: c�digo, nombre, ciudad y pa�s de proveedor, c�digo, nombre, precio, 
stock del producto*/

Select S.[SupplierID],[CompanyName],[City],[Country],[ProductID],[ProductName],[UnitPrice],[UnitsInStock]
from [dbo].[Suppliers] S
inner join [dbo].[Products] P on s.SupplierID=p.SupplierID

/*24.     Mostrar: c�digo y nombre de la categor�a, c�digo, nombre, precio y stock de los 
productos, c�digo, nombre de los proveedores*/

Select C.[CategoryID],[CategoryName],P.[ProductID],[ProductName],[UnitPrice],[UnitsInStock],S.[SupplierID],[CompanyName]
FROM Categories C
inner join [dbo].[Products] P ON C.CategoryID=P.CategoryID
INNER JOIN [dbo].[Suppliers] S ON P.SupplierID=S.SupplierID
































