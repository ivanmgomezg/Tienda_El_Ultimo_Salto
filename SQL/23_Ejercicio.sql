--========================================================================
--Ejercicio 23: ¿Cuáles son los 5 productos con mayor ingresos acumulado?
--========================================================================

SELECT productos.nombre,
	SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) as "Ventas"
from detalle_ventas
join productos on detalle_ventas.id_producto = productos.id_producto
group by productos.nombre
order by ventas DESC
limit 5 --Muestra los 5 primeros 