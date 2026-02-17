-- Ejercicio 03: ¿Cuál es el paracaídas más caro que tenemos?

SELECT id_producto, nombre, MAX(precio) as "precio"
from productos
WHERE categoria = 'Paracaídas'
