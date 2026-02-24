--========================================================================
--Ejercicio 19: ¿Cuál es el producto más vendido en cantidad (en términos 
--de unidades, no dinero)?
--========================================================================

SELECT 
	productos.id_producto,
    productos.nombre,
    SUM(detalle_ventas.cantidad) as 'Total_Unidades'
from detalle_ventas
JOIN productos on detalle_ventas.id_producto = productos.id_producto --Unir detalle_vemtas con productos con id_producto para traer el nombre del producto y detallar sus cantidades
GROUP BY productos.id_producto
order by Total_Unidades DESC
LIMIT 1