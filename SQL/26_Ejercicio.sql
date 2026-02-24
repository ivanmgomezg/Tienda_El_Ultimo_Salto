--========================================================================
--Ejercicio 26 Identifica clientes que compraron SOLO paracaídas 
--(nunca compraron accesorios). Muestra nombre y total gastado.
--========================================================================

-- CTE: Creo una tabla temporal con resumen de categorías por cliente
WITH resumen_clientes AS (
  SELECT 
    clientes.nombre,
    COUNT(DISTINCT productos.categoria) AS num_categorias, -- Cuenta categorías distintas (1 o más)
    MAX(productos.categoria) AS unica_categoria, -- Si solo hay 1 categoría, MAX devuelve esa ("Paracaídas" es mayor alfabéticamente)
    SUM(detalle_ventas.cantidad * detalle_ventas.precio_unitario) AS "Total_Gastado" -- Calculo ingresos totales del cliente
  FROM detalle_ventas
  JOIN ventas ON detalle_ventas.id_venta = ventas.id_venta
  JOIN productos ON detalle_ventas.id_producto = productos.id_producto
  JOIN clientes ON ventas.id_cliente = clientes.id_cliente
  GROUP BY clientes.nombre
)

-- Filtro: Solo clientes con 1 categoría y que sea "Paracaídas"
SELECT 
  nombre,
  Total_Gastado
FROM resumen_clientes
WHERE num_categorias = 1  -- Solo compraron de 1 categoría
  AND unica_categoria = 'Paracaídas'; -- Esa categoría es "Paracaídas"