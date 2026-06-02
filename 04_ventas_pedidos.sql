-- ========================================================================

-- AUTOR:    		Sánchez Lugo Eduardo Alejandro.
-- FECHA:			28/O5/2026
-- DB: 		 		Librería.
-- MOTOR:           POSTGRESQL.
-- DESCRIPCIÓN:  	Consultas del área de almace.
-- VERSIÓN          1.0

-- ===============================================================================================
-- HISTORIAL:
-- 28/05/2026  Eduardo Sánchez  Versión inicial con Caso 1.


-- ===============================================================================================


-- CASO 1	
-- =======================================================================================================
-- El gerente de ventas quiere un reporte que muestre cuántos pedidos se han realizado en total 
-- y cuál es el monto total acumulado 
-- =======================================================================================================

SELECT 
	COUNT(numero_pedido) AS total_pedidos,
	ROUND(SUM(total),2) AS monto_total_pedidos
FROM bookify.pedidos;