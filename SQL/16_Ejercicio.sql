--Ejercicio 16: Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.

select 
	clientes.id_cliente,
    clientes.nombre, 
    sum(ventas.total_venta) as 'Total_Gastado'
from ventas
join clientes 
	on ventas.id_cliente = clientes.id_cliente
GROUP by clientes.nombre 
ORDER by Total_Gastado desc
LIMIT 1;
