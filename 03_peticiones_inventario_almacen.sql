-- ========================================================================

-- AUTOR:    		Sánchez Lugo Eduardo Alejandro.
-- FECHA:			27/O5/2026
-- DB: 		 		Librería.
-- MOTOR:           POSTGRESQL.
-- DESCRIPCIÓN:  	Consultas del área de almace.
-- VERSIÓN          1.0

-- =======================================================================================
-- HISTORIAL:
-- 27/05/2026  Eduardo Sánchez  Versión inicial con Caso 1.
-- 27/05/2026  Juan Pérez       Se agregó la consulta para el Caso 2 (reabastecimiento).

-- =======================================================================================


-- CASO 1	
-- =======================================================================================================
-- El jefe de almacén necesita un reporte diario que muestre, para cada libro, el valor monetario
-- actual en stock(precio x stock). Solo quiere los 10 libros con mayor valor invertido en inventario,
-- ordenados de mayor a menor.
-- =======================================================================================================


SELECT 
	titulo, 
	precio, 
	stock,
	(precio * stock) AS precio_total_inventario 	
FROM bookify.libros
ORDER BY precio_total_inventario DESC 
LIMIT 10;


-- CASO 2	
-- =======================================================================================================
-- El sistema de reabastecimiento automático debe calcular cuántas unidades faltan para llegar a un stock
-- de 100 unidades en cada libro. Muestra solo aquellos libros que tengan stock actual menor a 100.
-- =======================================================================================================


SELECT 
	titulo,
	stock,
	(100 - stock) AS  faltantes_100
FROM bookify.libros
WHERE stock < 100;


