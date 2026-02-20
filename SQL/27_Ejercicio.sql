--Ejercicio 27: ¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor
--venta en 2025?
 
 with meses as (SELECT  strftime('%m', ventas.fecha_venta) as "Mes", 
   SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) "Total_Ventas"
   from ventas
   join detalle_ventas on ventas.id_venta = detalle_ventas.id_venta
   where strftime('%Y', ventas.fecha_venta) = '2025'
   GROUP by strftime('%m', ventas.fecha_venta)
   ORDER by Total_Ventas DESC)
 
 SELECT 
 	MAX(Total_Ventas) AS "Mes_Mayor_Ventas",
    MIN(Total_Ventas) AS "Mes_Menor_Ventas",
 	MAX(Total_Ventas) - MIN(Total_Ventas) AS "Diferencia" 
 from meses	