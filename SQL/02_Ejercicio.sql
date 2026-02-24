--========================================================================
--Ejercicio 2: Enlista todos los productos de la categoría "Paracaídas" 
--con sus precios, ordenados de mayor a menor precio
--========================================================================

SELECT 
	id_producto,
    nombre,
    categoria,
    precio
from productos
where categoria = 'Paracaídas'
order by precio desc;
