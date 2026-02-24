--========================================================================
--Ejercicio 25: ¿Cuál es el cliente que compró la mayor variedad de 
--productos diferentes (no cantidad, sino tipos distintos)?
--========================================================================
 
SELECT 
	clientes.nombre, 
    COUNT(DISTINCT(detalle_ventas.id_producto)) AS "Productos" --Cuenta productos únicos (tipos diferentes, no cantidad)
from detalle_ventas
join ventas ON detalle_ventas.id_venta = ventas.id_venta
JOIN clientes ON ventas.id_cliente = clientes.id_cliente
group by clientes.nombre
order by productos DESC
Limit 1 --Solo el cliente con la mayor variedad de productos comprados