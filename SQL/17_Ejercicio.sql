--Ejercicio 17 ¿Cuánto dinero hemos dejado de ingresar por el cupón "ULTIMO_SUSPIRO"? (Calcula la 
--diferencia entre lo que hubiera sido sin descuento y lo que fue con descuento).

WITH ventas_cupon AS( --Tabla temporal ventas_cupon
  SELECT 
      total_venta AS precio_con_descuento, --Suma de total venta con descuento 30% 'ULTIMO_SUSPIRO'
      total_venta / 0.70 AS precio_original -- Precio original de las ventas con bono 'ULTIMO_SUSPIRO'
  FROM ventas
  WHERE cupon_usado = 'ULTIMO_SUSPIRO'
)
SELECT SUM(precio_original - precio_con_descuento) AS "Dinero que dejo de ingresar" --Diferencia 
FROM ventas_cupon;