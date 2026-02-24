--========================================================================
--Ejercicio 18: Enlista todos los clientes mayores de 60 años que han hecho
-- compras, mostrando nombre, edad aproximada y total gastado.
--========================================================================

SELECT 
	clientes.nombre,	
   	CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 as INTEGER) as 'Edad', --Calculo la edad --CAST convierte el resultado a entero -julianday calcular diferencias entre fechas
    SUM(ventas.total_venta) as 'Total_Gastado'
FROM clientes
JOIN ventas on clientes.id_cliente = ventas.id_cliente --Union tablas clientes - ventas con id_cliente para traer el total gastado
WHERE (julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 > 60
GROUP BY clientes.nombre
ORDER BY Total_Gastado DESC