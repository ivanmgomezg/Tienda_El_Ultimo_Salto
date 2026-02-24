--========================================================================
--Ejercicio 10: Muestra todos los clientes de género "F" (femenino) 
--ordenados por fecha de nacimiento (más viejitas primero).
--========================================================================

SELECT * from clientes
where genero='F'
order by fecha_nacimiento asc