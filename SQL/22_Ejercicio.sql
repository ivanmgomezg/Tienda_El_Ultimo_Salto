--========================================================================
--Ejercicio 22: Crea una clasificación de clientes por nivel de gasto:
--o "Alto Valor" si gastó más de $5,000
--o "Medio Valor" si gastó entre $2,000 y $5,000
--o "Bajo Valor" si gastó menos de $2,000
--o Muestra nombre, categoría de gasto y total gastado
--========================================================================

SELECT 
    clientes.nombre, 
    SUM(total_venta) AS "Total_Compras",
    CASE --Crea la clasificación
    	WHEN SUM(total_venta) < 2000 THEN 'Bajo Valor'
        WHEN SUM(total_venta) BETWEEN 2000 aND 5000 THEN 'Medio Valor'
        WHEN SUM(total_venta) > 5000 THEN 'Alto Valor'
        else 'Sin calificaión' -- si no entran en el rango "Sin Clasificación"
        END as "Calificación" --Nombre de la columna
FROM ventas
JOIN clientes ON ventas.id_cliente = clientes.id_cliente
GROUP BY clientes.nombre
ORDER BY Total_Compras DESC;