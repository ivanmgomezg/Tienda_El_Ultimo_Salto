--Ejercicio 28: Crea un reporte de "clientes de riesgo": aquellos cuya última compra fue hace más
--de 180 días a partir de hoy. Muestra nombre, correo y fecha de última compra.

select 
	clientes.nombre, 
    clientes.correo, 
    MAX (ventas.fecha_venta) AS "Ultima_Compra",
    CAST(julianday('now') - julianday(MAX(ventas.fecha_venta)) AS INTEGER) AS "Dias_Sin_Comprar"
from ventas
join clientes on ventas.id_cliente = clientes.id_cliente
GROUP BY clientes.nombre
HAVING MAX(ventas.fecha_venta) < DATE('now', '-180 days')
order by Dias_Sin_Comprar DESC