--========================================================================
--Ejercicio 13: ¿Cuántos productos tenemos en la categoría "Paracaídas"?
--========================================================================

SELECT COUNT(*) as 'Productos de la categoria paracaídas'
FROM productos
WHERE categoria = 'Paracaídas';