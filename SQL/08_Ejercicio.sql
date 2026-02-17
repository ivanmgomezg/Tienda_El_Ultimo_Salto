--Ejercicio 8: ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?

SELECT count(*) AS "Ventas cupón ULTIMO_SUSPIRO"
from ventas
WHERe cupon_usado = 'ULTIMO_SUSPIRO';