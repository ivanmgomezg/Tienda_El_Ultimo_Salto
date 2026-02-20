--Ejercicio 29: ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón
--"ULTIMO_SUSPIRO"?

with detalle_ventas as (	
	SELECT	
  		SUM(total_venta) as "Total_ventas",
    	(select sum(total_venta) from ventas where cupon_usado = 'ULTIMO_SUSPIRO') as "Ventas_Cupon"
   	from ventas)
select 
	Ventas_Cupon,
	Total_Ventas,
	ROUND((Ventas_Cupon / Total_Ventas) * 100, 2) AS "% Participacion Ventas Cupon"
from detalle_ventas