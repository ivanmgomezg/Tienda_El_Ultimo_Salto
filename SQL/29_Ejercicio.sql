--========================================================================
--Ejercicio 29: ¿Cuál es el porcentaje de ventas (por ingresos) que 
--provienen del cupón "ULTIMO_SUSPIRO"?
--========================================================================

-- CTE: Calculo ingresos totales y ventas con cupón específico
WITH detalle as (	
	SELECT	
  		SUM(total_venta) as "Total_ventas", --Suma de TODAS las ventas (con y sin cupón)
    	(select sum(total_venta) from ventas where cupon_usado = 'ULTIMO_SUSPIRO') as "Ventas_Cupon" --Subconsulta: Suma solo ventas con cupón "ULTIMO_SUSPIRO"
   	from ventas)
SELECT  -- Calculo el porcentaje de participación del cupón sobre el total
	Ventas_Cupon, -- Ingresos con cupón
	Total_Ventas, -- Ingresos Totales
	ROUND((Ventas_Cupon / Total_Ventas) * 100, 2) AS "% Participacion Ventas Cupon" -- Porcentaje redondeado a 2 decimales
from detalle