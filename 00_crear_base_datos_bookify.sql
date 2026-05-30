-- ========================================================================

-- AUTOR:    		Sánchez Lugo Eduardo Alejandro.
-- FECHA:			18/O5/2026
-- DB: 		 		Librería.
-- MOTOR:           POSTGRESQL.
-- DESCRIPCIÓN:  	Script de Creación de la base de datos de la libreria.
-- VERSIÓN          1.0

-- ========================================================================
-- HISTORIAL:
-- 18/05/2026     Versión inicial.

-- ========================================================================


-- Crear la base de datos
CREATE DATABASE bookify;

DO $$
BEGIN 
	RAISE  NOTICE 'Base de datos "bookify" iniciada con éxito. Conéctese a ella para continuar.';

END $$;

