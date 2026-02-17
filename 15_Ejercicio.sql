-- Ejercicio 15: ¿Cuál es el accesorio más barato disponible?

select MIN(precio) as "Accesorio mas barato"
from productos
where categoria = 'Accesorios'
