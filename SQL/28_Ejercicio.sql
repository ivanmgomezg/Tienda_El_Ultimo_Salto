--========================================================================
--Ejercicio 28: Crea un reporte de "clientes de riesgo": aquellos cuya 
--última compra fue hace más de 180 días a partir de hoy. Muestra nombre, 
--correo y fecha de última compra.
--========================================================================

SELECT 
	clientes.nombre, 
    clientes.correo, 
    MAX (ventas.fecha_venta) AS "Ultima_Compra", --fecha de compra mas reciente
    CAST(julianday('now') - julianday(MAX(ventas.fecha_venta)) AS INTEGER) AS "Dias_Sin_Comprar" --Calculo la diferencia entre hoy y la ultima compra
from ventas
join clientes on ventas.id_cliente = clientes.id_cliente
GROUP BY clientes.nombre
HAVING MAX(ventas.fecha_venta) < DATE('now', '-180 days') --Filtro clientes con última compra hace más de 180 días
order by Dias_Sin_Comprar DESC --Ordeno por mas dias sin comprar