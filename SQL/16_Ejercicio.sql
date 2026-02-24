--========================================================================
--Ejercicio 16: Cuál es el cliente que más dinero ha gastado en total? 
--Muestra su nombre y monto total.
--========================================================================

SELECT 
	clientes.id_cliente,
    clientes.nombre, 
    sum(ventas.total_venta) as 'Total_Gastado'
FROM ventas
JOIN clientes ON ventas.id_cliente = clientes.id_cliente --Unir la tabla ventas con la tabla clientes con id_cliente para poder traer los datos del cliente
GROUP by clientes.nombre 
ORDER by Total_Gastado DESC
LIMIT 1;
