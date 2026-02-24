--========================================================================
--Ejercicio 20: Para cada categoría de producto, calcula el ingreso total, 
--cantidad de unidades vendidas y ticket promedio por venta.
--========================================================================

SELECT 
  productos.categoria,
    SUM(detalle_ventas.cantidad) AS "Cantidades",
      SUM(detalle_ventas.precio_unitario * detalle_ventas.cantidad) AS "Ingreso_Total",
        AVG(detalle_ventas.precio_unitario * detalle_ventas.cantidad) as "Promedio_de_Venta"
        from detalle_ventas
        JOIN productos ON detalle_ventas.id_producto = productos.id_producto --Unir la tabla detalle_ventas con productos
        group by productos.categoria
        order by Ingreso_Total