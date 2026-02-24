--========================================================================
--Ejercicio 24 Para cada mes en 2025, calcula: total de ventas, número de 
--transacciones, y ticket promedio
--======================================================================== 

SELECT 
    strftime('%m', fecha_venta) AS Mes,
    SUM(total_venta) AS Total_Ventas,
    COUNT(*) AS Num_Transacciones,
    AVG(total_venta) AS Ticket_Promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY strftime('%m', fecha_venta)
ORDER BY Total_Ventas DESC;