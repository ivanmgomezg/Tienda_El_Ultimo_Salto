# 📊 Ejercicios SQL - Tienda El Último Salto

Colección de 30 ejercicios de SQL para analizar datos de una tienda de paracaidismo.

---

## 👨‍💻 Autor

**Iván Mauricio Gómez**
- GitHub: [@ivanmgomezg](https://github.com/ivanmgomezg)

---

## 🗂️ Estructura de la Base de Datos

### Tablas principales:
- **`clientes`**: id_cliente, nombre, correo, fecha_nacimiento, genero
- **`ventas`**: id_venta, id_cliente, fecha_venta, total_venta, cupon_usado
- **`detalle_ventas`**: id_detalle, id_venta, id_producto, cantidad, precio_unitario
- **`productos`**: id_producto, nombre, categoria, precio, stock

---

## 📚 Lista de Ejercicios

| # | Ejercicio | Archivo |
|---|-----------|---------|
| 1 | Listar todos los clientes | [01_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/01_Ejercicio.sql) |
| 2 | Productos con stock menor a 10 unidades | [02_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/02_Ejercicio.sql) |
| 3 | Ventas del año 2025 ordenadas por fecha | [03_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/03_Ejercicio.sql) |
| 4 | Clientes por género | [04_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/04_Ejercicio.sql) |
| 5 | Productos ordenados por precio | [05_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/05_Ejercicio.sql) |
| 6 | Ventas mayores a $1,000 | [06_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/06_Ejercicio.sql) |
| 7 | Clientes con correo de Gmail | [07_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/07_Ejercicio.sql) |
| 8 | Total de productos en inventario | [08_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/08_Ejercicio.sql) |
| 9 | Precio promedio de productos | [09_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/09_Ejercicio.sql) |
| 10 | Ventas realizadas en febrero 2025 | [10_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/10_Ejercicio.sql) |
| 11 | TOP 5 clientes con más compras | [11_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/11_Ejercicio.sql) |
| 12 | Categorías de productos y cantidad | [12_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/12_Ejercicio.sql) |
| 13 | Venta promedio por cliente | [13_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/13_Ejercicio.sql) |
| 14 | Ventas del año 2025 ordenadas por fecha | [14_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/14_Ejercicio.sql) |
| 15 | Cliente con mayor gasto total | [15_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/15_Ejercicio.sql) |
| 16 | Cliente que más dinero ha gastado | [16_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/16_Ejercicio.sql) |
| 17 | Dinero perdido por cupón "ULTIMO_SUSPIRO" | [17_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/17_Ejercicio.sql) |
| 18 | Clientes mayores de 60 años con compras | [18_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/18_Ejercicio.sql) |
| 19 | Producto más vendido en cantidad | [19_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/19_Ejercicio.sql) |
| 20 | Ingresos por categoría de producto | [20_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/20_Ejercicio.sql) |
| 21 | Clientes que usaron cupón "ULTIMO_SUSPIRO" al menos 3 veces | [21_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/21_Ejercicio.sql) |
| 22 | Clasificación de clientes por nivel de gasto | [22_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/22_Ejercicio.sql) |
| 23 | TOP 5 productos con mayores ingresos acumulados | [23_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/23_Ejercicio.sql) |
| 24 | Análisis mensual 2025: ventas, transacciones y ticket promedio | [24_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/24_Ejercicio.sql) |
| 25 | Cliente con mayor variedad de productos diferentes | [25_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/25_Ejercicio.sql) |
| 26 | Clientes que compraron SOLO paracaídas | [26_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/26_Ejercicio.sql) |
| 27 | Diferencia en ingresos entre mes con mayor y menor venta | [27_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/27_Ejercicio.sql) |
| 28 | Clientes en riesgo (última compra hace más de 180 días) | [28_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/28_Ejercicio.sql) |
| 29 | Porcentaje de ventas con cupón "ULTIMO_SUSPIRO" | [29_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/29_Ejercicio.sql) |
| 30 | Análisis demográfico por rango de edad | [30_Ejercicio.sql](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/30_Ejercicio.sql) |

---

## 📈 Análisis de Datos Clave

### 🎯 Ejercicio 30: Análisis Demográfico por Rango de Edad

**Hallazgos Principales:**

El rango **30-39 años** genera los mayores ingresos con **$1,241,910 (22% del total)** y el ticket promedio más alto ($4,967), indicando mayor poder adquisitivo. Sin embargo, los clientes **mayores de 70 años** lideran en frecuencia con **264 transacciones (21% del total)**, demostrando alta lealtad, posiblemente incentivada por el cupón "ULTIMO_SUSPIRO".

El grupo **60-69 años** presenta el menor rendimiento con solo **$481,780 (9% del total)** y 114 transacciones, siendo el segmento más débil.

**Recomendaciones:**

**30-39 años:** Priorizar campañas de marketing digital y productos premium (máximo ROI).

**70+ años:** Implementar programa de fidelización y mantener estrategia de cupones (alta frecuencia comprobada).

**60-69 años:** Investigar barreras de compra y evaluar si el portafolio satisface sus necesidades.

[Ver query completo →](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/30_Ejercicio.sql)

---

### 📅 Ejercicio 24: Análisis Temporal Mensual (2025)

**Hallazgos Principales:**

Las ventas se distribuyen equilibradamente con un **promedio de 8% por mes**. **Octubre y noviembre** son los meses más fuertes con **10% de participación cada uno**, posiblemente relacionado con **clima favorable para paracaidismo** o **proximidad a temporada de regalos**. Por el contrario, **marzo y abril** presentan el menor rendimiento con **7% cada uno**, identificando una clara estacionalidad.

**Recomendaciones:**

**Primer trimestre (Enero-Marzo):** Implementar campañas promocionales y descuentos por "temporada baja" para activar demanda en período de menor actividad.

**Temporada alta (Octubre-Noviembre):** Asegurar stock robusto con 2 meses de anticipación y considerar precios premium aprovechando la alta demanda estacional.

**Monitoreo:** Evaluar efectividad de promociones mediante análisis comparativo año tras año.

[Ver query completo →](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/24_Ejercicio.sql)

---

### 🚨 Ejercicio 28: Clientes en Riesgo (>180 días sin comprar)

**Hallazgos Principales:**

Los rangos **40-49 años** y **mayores de 70 años** concentran el mayor riesgo con **20% cada uno** de clientes inactivos. Paradójicamente, el grupo **70+**, siendo uno de los más rentables, presenta alta tasa de abandono, sugiriendo que el paracaidismo puede ser una **actividad puntual** y no recurrente.

**El 34% de clientes sin compras en 180 días** representa un nivel crítico que requiere acción inmediata.

**Recomendaciones:**

**70+ años:** Contacto personalizado con 25% descuento. Investigar si la naturaleza del producto limita la recurrencia.

**40-49 años:** Email con ofertas de temporada alta y 15% descuento.

**Prevención:** Implementar seguimiento post-venta (30, 90, 150 días) para convertir clientes puntuales en recurrentes.

[Ver query completo →](https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto/blob/main/SQL/28_Ejercicio.sql)