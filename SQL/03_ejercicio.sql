-- Ejercicio 03: ¿Cuál es el paracaídas más caro que tenemos?

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC
LIMIT 1;