 Mostrar la cantidad de camiones por chofer que han realizado algún envío.
 use CHOFERES
 SELECT COUNT (DISTINCT NUM_CAMION)AS 'CANTIDAD DE CAMIONES', NUM_CHOFER
FROM ENVIO
GROUP BY NUM_CHOFER

select getdate()


  Mostrar la cantidad de camiones que realizaron viajes en el año 2002, agruparlos por fecha.
  use CHOFERES
  select FECHA, count(distinct NUM_CAMION) cantidad_camiones
  from ENVIO
  where FECHA between '2002-01-01'and '2002-12-31'
  group by FECHA

  3. Mostrar la cantidad de choferes que realizaron viajes en el 2002, agruparlos por fecha.
  use CHOFERES
  select count (distinct NUM_CHOFER) cantidad_hoferes
  from ENVIO
  where FECHA between '2002-01-01'and '2002-12-31'
  go


  4.Mostrar la cantidad de camiones que tiene la compañía agrupados por año.
  USE CHOFERES
  SELECT AÑO, count (*)
FROM CAMION
group by AÑO
order by 1
go

 
--6. Mostrar el total de toneladas transportadas por fecha.
USE CHOFERES
 SELECT SUM(PESO) TOTAL_TONELADAS, FECHA
FROM ENVIO
GROUP BY FECHA
ORDER BY 2
 
-7. Crear la tabla sumario_envios que contenga: número chofer, número camion, total de viajes
USE CHOFERES
SELECT NUM_CHOFER,NUM_CAMION, COUNT(1)total_viajes
INTO sumario_envio
FROM ENVIO
group by NUM_CHOFER,NUM_CAMION
order by 1,2







  