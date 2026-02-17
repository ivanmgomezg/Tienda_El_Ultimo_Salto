-- Ejercicio 9: ¿Cuál fue la venta con mayor monto en toda la historia?

SELECT MAX(total_venta) as "Venta mas alta"
from ventas 
order by total_venta desc
