--========================================================================
--Ejercicio 27: ¿Cuál es la diferencia en ingresos entre el mes con mayor 
--venta y el mes con menor venta en 2025?
--========================================================================
 
-- CTE: Calculo los ingresos totales por cada mes de 2025
WITH meses AS (
  SELECT  
    strftime('%m', ventas.fecha_venta) AS "Mes", -- Extraigo el mes
    SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) AS "Total_Ventas" -- Calculo ingresos del mes
  FROM ventas
  JOIN detalle_ventas ON ventas.id_venta = detalle_ventas.id_venta
  WHERE strftime('%Y', ventas.fecha_venta) = '2025' -- Filtro solo ventas de 2025
  GROUP BY strftime('%m', ventas.fecha_venta) -- Agrupo por mes
  ORDER BY Total_Ventas DESC
)

-- Calculo la diferencia entre el mes con mayores y menores ingresos
SELECT 
  MAX(Total_Ventas) AS "Mes_Mayor_Ventas", -- Ingresos del mejor mes
  MIN(Total_Ventas) AS "Mes_Menor_Ventas", -- Ingresos del peor mes
  MAX(Total_Ventas) - MIN(Total_Ventas) AS "Diferencia" -- Diferencia entre ambos
FROM meses;