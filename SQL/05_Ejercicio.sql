-- Ejercicio 5: Muestra el nombre, correo y fecha de nacimiento de todos los clientes, ordenados alfabéticamente por nombre.

SELECT
	nombre,
    correo,
    fecha_nacimiento
from clientes
ORDER by nombre ASC;