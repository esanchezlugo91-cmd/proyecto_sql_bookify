-- ========================================================================

-- AUTOR:    		Sánchez Lugo Eduardo Alejandro.
-- FECHA:			27/O5/2026
-- DB: 		 		Librería.
-- MOTOR:           POSTGRESQL.
-- DESCRIPCIÓN:  	Consultas del área de almace.
-- VERSIÓN          1.0

-- ===============================================================================================
-- HISTORIAL:
-- 27/05/2026  Eduardo Sánchez  Versión inicial con Caso 1.
-- 27/05/2026  Juan Pérez       Se agregó la consulta para el Caso 2 (reabastecimiento).
-- 28/05/2026  Eduardo Sánchez  Se agregan dos consultas mas  stock promedio y consto inventario.

-- ===============================================================================================


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


-- CASO 3
-- ==========================================================================================================
-- El equipo de planeación quiere saber el stock promedio de todos los libros en la librería. También quiere 
-- saber cuántos libros están por encima de ese promedio y cuántos por debajo (esto último puedes hacerlo 
-- con dos consultas o una condicional). 
-- ==========================================================================================================
SELECT 
	ROUND(AVG(stock),2) AS stock_promedio_todos_libros
FROM bookify.libros;

SELECT 
	CASE
		WHEN stock > 44.71 THEN 'Encima del promedio'
		ELSE 'Abajo del promedio'
	END AS estado_stock,
	COUNT(*) AS cantidad_libros
FROM bookify.libros
GROUP BY estado_stock;



-- CASO 4
-- ==========================================================================================================
-- El departamento de compras pregunta: si todos los libros costaran exactamente $350.00 MXN, 
-- ¿cuánto valdría todo el inventario actual? 
-- ==========================================================================================================

SELECT
	SUM((stock) * 350) AS valor_total_350
FROM  bookify.libros;


