-- Ejercicio 9: ¿Cuál fue la venta con mayor monto en toda la historia?
SELECT *
FROM ventas
ORDER BY total_venta DESC
LIMIT 1;