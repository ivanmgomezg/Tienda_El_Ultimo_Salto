--Ejercicio 24: Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio.
 
 SELECT  strftime('%m', ventas.fecha_venta) as "MES", 
 SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) "Total_Ventas",
 COUNT(*) AS "Numero de Transacciones",
 AVG(detalle_ventas.cantidad * detalle_ventas.precio_unitario) AS "Ticket Promedio"
 from ventas
 join detalle_ventas on ventas.id_venta = detalle_ventas.id_venta
 where strftime('%Y', ventas.fecha_venta) = '2025'
 GROUP by strftime('%m', ventas.fecha_venta)
 ORDER by Total_Ventas DESC