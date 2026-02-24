# 📊 Ejercicios SQL - Tienda El Último Salto

Colección de 30 ejercicios progresivos de SQL desarrollados para analizar datos de una tienda de paracaidismo.

## 🗂️ Estructura de la Base de Datos

### Tablas principales:
- **`clientes`**: id_cliente, nombre, correo, fecha_nacimiento, genero
- **`ventas`**: id_venta, id_cliente, fecha_venta, total_venta, cupon_usado
- **`detalle_ventas`**: id_detalle, id_venta, id_producto, cantidad, precio_unitario
- **`productos`**: id_producto, nombre, categoria, precio, stock

---

## 📚 Índice de Ejercicios

### 🟢 Nivel Básico (1-10)
Consultas fundamentales con SELECT, WHERE, ORDER BY

| # | Ejercicio | Archivo |
|---|-----------|---------|
| 1 | Listar todos los clientes | [01_Ejercicio.sql](./01_Ejercicio.sql) |
| 2 | Productos con stock menor a 10 unidades | [02_Ejercicio.sql](./02_Ejercicio.sql) |
| 3 | Ventas del año 2025 ordenadas por fecha | [03_Ejercicio.sql](./03_Ejercicio.sql) |
| 4 | Clientes por género | [04_Ejercicio.sql](./04_Ejercicio.sql) |
| 5 | Productos ordenados por precio | [05_Ejercicio.sql](./05_Ejercicio.sql) |
| 6 | Ventas mayores a $1,000 | [06_Ejercicio.sql](./06_Ejercicio.sql) |
| 7 | Clientes con correo de Gmail | [07_Ejercicio.sql](./07_Ejercicio.sql) |
| 8 | Total de productos en inventario | [08_Ejercicio.sql](./08_Ejercicio.sql) |
| 9 | Precio promedio de productos | [09_Ejercicio.sql](./09_Ejercicio.sql) |
| 10 | Ventas realizadas en febrero 2025 | [10_Ejercicio.sql](./10_Ejercicio.sql) |

### 🟡 Nivel Intermedio (11-20)
JOINs, GROUP BY, agregaciones y funciones de fecha

| # | Ejercicio | Archivo |
|---|-----------|---------|
| 11 | TOP 5 clientes con más compras | [11_Ejercicio.sql](./11_Ejercicio.sql) |
| 12 | Categorías de productos y cantidad | [12_Ejercicio.sql](./12_Ejercicio.sql) |
| 13 | Venta promedio por cliente | [13_Ejercicio.sql](./13_Ejercicio.sql) |
| 14 | Ventas del año 2025 ordenadas por fecha | [14_Ejercicio.sql](./14_Ejercicio.sql) |
| 15 | Cliente con mayor gasto total | [15_Ejercicio.sql](./15_Ejercicio.sql) |
| 16 | Cliente que más dinero ha gastado | [16_Ejercicio.sql](./16_Ejercicio.sql) |
| 17 | Dinero perdido por cupón "ULTIMO_SUSPIRO" | [17_Ejercicio.sql](./17_Ejercicio.sql) |
| 18 | Clientes mayores de 60 años con compras | [18_Ejercicio.sql](./18_Ejercicio.sql) |
| 19 | Producto más vendido en cantidad | [19_Ejercicio.sql](./19_Ejercicio.sql) |
| 20 | Ingresos e inventario por categoría | [20_Ejercicio.sql](./20_Ejercicio.sql) |

### 🔴 Nivel Avanzado (21-30)
CTEs, subconsultas, CASE WHEN, análisis complejo

| # | Ejercicio | Archivo |
|---|-----------|---------|
| 21 | Clientes que usaron cupón al menos 3 veces | [21_Ejercicio.sql](./21_Ejercicio.sql) |
| 22 | Clasificación de clientes por gasto | [22_Ejercicio.sql](./22_Ejercicio.sql) |
| 23 | TOP 5 productos con mayores ingresos | [23_Ejercicio.sql](./23_Ejercicio.sql) |
| 24 | Análisis mensual 2025 (ventas, transacciones, ticket promedio) | [24_Ejercicio.sql](./24_Ejercicio.sql) |
| 25 | Cliente con mayor variedad de productos | [25_Ejercicio.sql](./25_Ejercicio.sql) |
| 26 | Clientes que compraron SOLO paracaídas | [26_Ejercicio.sql](./26_Ejercicio.sql) |
| 27 | Diferencia entre mes con mayor y menor venta | [27_Ejercicio.sql](./27_Ejercicio.sql) |
| 28 | Clientes en riesgo (sin comprar >180 días) | [28_Ejercicio.sql](./28_Ejercicio.sql) |
| 29 | Porcentaje de ventas con cupón "ULTIMO_SUSPIRO" | [29_Ejercicio.sql](./29_Ejercicio.sql) |
| 30 | Análisis demográfico por rango de edad | [30_Ejercicio.sql](./30_Ejercicio.sql) |

---

## 🎯 Conceptos SQL Aplicados

### Consultas Básicas
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Filtros con operadores (`>`, `<`, `BETWEEN`, `LIKE`, `IN`)
- Funciones de agregación (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`)

### Consultas Intermedias
- `JOIN` (INNER JOIN entre 2-4 tablas)
- `GROUP BY` con agregaciones
- `HAVING` para filtrar grupos
- Funciones de fecha (`strftime`, `julianday`, `date`)
- `COUNT(DISTINCT)` para valores únicos

### Consultas Avanzadas
- `CTE` (Common Table Expressions con `WITH`)
- Subconsultas en SELECT y WHERE
- `CASE WHEN` para clasificaciones
- Cálculos de porcentajes
- Análisis temporal (rangos de fechas, días sin actividad)
- Análisis demográfico

---

## 💡 Ejemplos Destacados

### Ejercicio 22: Clasificación de Clientes
```sql
SELECT 
    clientes.nombre, 
    SUM(total_venta) AS "Total_Compras",
    CASE
        WHEN SUM(total_venta) < 2000 THEN 'Bajo Valor'
        WHEN SUM(total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
        WHEN SUM(total_venta) > 5000 THEN 'Alto Valor'
        ELSE 'Sin calificación'
    END AS "Calificación"
FROM ventas
JOIN clientes ON ventas.id_cliente = clientes.id_cliente
GROUP BY clientes.nombre
ORDER BY Total_Compras DESC;
```
[Ver código completo →](./22_Ejercicio.sql)

---

### Ejercicio 29: Análisis de Cupones
```sql
WITH detalle_ventas AS (	
    SELECT	
        SUM(total_venta) AS "Total_ventas",
        (SELECT SUM(total_venta) FROM ventas WHERE cupon_usado = 'ULTIMO_SUSPIRO') AS "Ventas_Cupon"
    FROM ventas
)
SELECT 
    Ventas_Cupon,
    Total_Ventas,
    ROUND((Ventas_Cupon / Total_Ventas) * 100, 2) AS "% Participacion_Cupon"
FROM detalle_ventas;
```
[Ver código completo →](./29_Ejercicio.sql)

---

### Ejercicio 30: Análisis Demográfico
```sql
SELECT 
    CASE
        WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 18 AND 29 THEN '18-29'
        WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) BETWEEN 30 AND 39 THEN '30-39'
        -- ... más rangos
        WHEN CAST((julianday('now') - julianday(clientes.fecha_nacimiento)) / 365 AS INTEGER) >= 70 THEN '70+'
    END AS rango_edad,
    COUNT(DISTINCT clientes.id_cliente) AS clientes_unicos,
    COUNT(ventas.id_venta) AS num_transacciones,
    SUM(ventas.total_venta) AS ingresos_totales
FROM clientes
JOIN ventas ON ventas.id_cliente = clientes.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;
```
[Ver código completo →](./30_Ejercicio.sql)

---

## 🛠️ Tecnologías

- **Base de datos**: SQLite 3.x
- **Conceptos**: SQL estándar (ANSI SQL)
- **Herramientas**: Cualquier cliente SQLite (DB Browser, DBeaver, VSCode extensions)

---

## 📖 Cómo usar este repositorio

1. **Clonar el repositorio**
```bash
   git clone https://github.com/ivanmgomezg/Tienda_El_Ultimo_Salto.git
   cd Tienda_El_Ultimo_Salto/DB
```

2. **Cargar la base de datos**
```bash
   sqlite3 tienda.db < schema.sql
   sqlite3 tienda.db < data.sql
```

3. **Ejecutar ejercicios**
```bash
   sqlite3 tienda.db < 01_Ejercicio.sql
```

---

## 📊 Progresión del Aprendizaje
```
Ejercicios 1-10   ████████░░ 40% - Fundamentos
Ejercicios 11-20  ███████░░░ 70% - Intermedio
Ejercicios 21-30  ██████████ 100% - Avanzado
```

---

## 🎯 Objetivos de Aprendizaje

Al completar estos ejercicios, dominarás:

✅ Consultas SQL básicas e intermedias  
✅ Múltiples tipos de JOIN  
✅ Agregaciones y funciones de grupo  
✅ Subconsultas y CTEs  
✅ Análisis de datos con SQL  
✅ Clasificaciones con CASE WHEN  
✅ Manejo de fechas en SQLite  
✅ Análisis de negocio (segmentación, retención, ingresos)  

---

## 👨‍💻 Autor

**Iván Gómez**
- GitHub: [@ivanmgomezg](https://github.com/ivanmgomezg)

---

## 📝 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](../LICENSE) para más detalles.

---

## 🙏 Agradecimientos

Ejercicios desarrollados como parte del aprendizaje práctico de SQL para análisis de datos.

---

⭐ Si este repositorio te fue útil, ¡dale una estrella!