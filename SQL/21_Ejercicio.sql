--========================================================================
--Ejercicio 21: ¿Cuáles son los clientes que han usado el cupón 
--"ULTIMO_SUSPIRO" al menos 3 veces?
--========================================================================

select 
	clientes.nombre, 
	COUNT(*) as "Cant_Cupones"
from ventas
join clientes on ventas.id_cliente = clientes.id_cliente
WHERE ventas.cupon_usado = 'ULTIMO_SUSPIRO'
group by clientes.nombre
HAVING COUNT(*) >= 3 --filtro los que tienen 3 o más cupones
ORDER by Cant_Cupones DESC