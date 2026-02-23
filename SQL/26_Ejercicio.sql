--Ejercicio 26: Identifica clientes que compraron SOLO paracaídas (nunca compraron
--accesorios). Muestra nombre y total gastado

WITH resumen_clientes AS (
  SELECT -- creo una tabla que muestra los clientes con las categorias que compro
    clientes.nombre,
    COUNT(DISTINCT productos.categoria) AS num_categorias, --para saber si tiene 1 o 2 categorias 
    MAX(productos.categoria) AS unica_categoria, -- para saber la categoria mayor dentro de sus compras "Paracaídas es la mayor"
	  SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) AS "Total_Gastado"
  FROM detalle_ventas
  JOIN ventas ON detalle_ventas.id_venta = ventas.id_venta
  JOIN productos ON detalle_ventas.id_producto = productos.id_producto
  JOIN clientes ON ventas.id_cliente = clientes.id_cliente
  GROUP BY clientes.nombre
)
SELECT *
FROM resumen_clientes --de la tabla creada busco los que tenga una sola categoria y que su categoria maxima sea "Paracaídas"
WHERE num_categorias = 1 
  AND unica_categoria = 'Paracaídas';