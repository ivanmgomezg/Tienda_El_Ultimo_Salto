--Ejercicio 14: Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (más recientes primero).

select * from ventas
where strftime('%Y', fecha_venta) = '2025'
order by fecha_venta DESC
