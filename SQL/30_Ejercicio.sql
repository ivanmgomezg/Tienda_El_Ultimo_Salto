--========================================================================
--Ejercicio 30 Genera un análisis demográfico: para cada rango de edad 
--(18-29, 30-39, ..., 70+), --cuenta clientes únicos, número de 
--transacciones  e ingresos totales. Ordena por rango de edad.
--========================================================================

-- CTE: Asigno rango de edad a cada cliente según su fecha de nacimiento
WITH clientes_con_rango AS (
    SELECT 
        clientes.id_cliente,
        ventas.id_venta,
        ventas.total_venta,
        CASE -- Clasifico clientes en rangos de edad usando CASE
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 18 AND 29 THEN '18-29'
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 30 AND 39 THEN '30-39'
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 40 AND 49 THEN '40-49'
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 50 AND 59 THEN '50-59'
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 60 AND 69 THEN '60-69'
            WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) >= 70 THEN '70+'
            ELSE 'Menor de 18'
        END AS rango_edad
    FROM clientes
    JOIN ventas ON ventas.id_cliente = clientes.id_cliente
)
SELECT -- Agrupo por rango de edad y calculo métricas clave
    rango_edad, -- Rango de edad (18-29, 30-39, etc.)
    COUNT(DISTINCT id_cliente) AS clientes_unicos, -- Cantidad de clientes únicos por rango
    COUNT(id_venta) AS num_transacciones,  -- Total de transacciones del rango
    SUM(total_venta) AS ingresos_totales -- Ingresos totales generados por el rango
FROM clientes_con_rango
GROUP BY rango_edad