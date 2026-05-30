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


-- Configuración inicial

CREATE SCHEMA IF NOT EXISTS bookify;
SET search_path TO bookify, public;


-- Mensaje de configuración de esquema

DO $$
BEGIN 
	RAISE  NOTICE 'Esquema "bookify" creado y ruta de búsqueda configurada.';

END $$;



-- Limpieza (orden inverso por dependencias)

DROP TABLE IF EXISTS detalle_pedido CASCADE;
DROP TABLE IF EXISTS pedidos CASCADE;
DROP TABLE IF EXISTS clientes CASCADE;
DROP TABLE IF EXISTS libros_autores CASCADE;
DROP TABLE IF EXISTS libros CASCADE;
DROP TABLE IF EXISTS autores CASCADE;
DROP TABLE IF EXISTS categorias CASCADE;



BEGIN;

-- 1.- TABLA CATEGORIAS

CREATE TABLE IF NOT EXISTS categorias (

	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL UNIQUE, 
	descripcion TEXT,
	activa  BOOL DEFAULT TRUE, 
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP


	
);

-- Comentarios tabla categorias.

COMMENT ON TABLE categorias IS 'Catálogo de categorías del libro'; 
COMMENT ON COLUMN categorias.id IS 'Identificador único de la categoría'; 
COMMENT ON COLUMN categorias.nombre IS 'Nombre de la categoría (ej: Ficción, Ciencia, Historia)'; 
COMMENT ON COLUMN categorias.descripcion IS 'Descripción detallada de la categoría'; 
COMMENT ON COLUMN categorias.activa IS 'Indica si la categoría está activa (TRUE) o inactiva (FALSE)';
COMMENT ON COLUMN categorias.created_at IS 'Fecha de creación del registro';



-- 2.- TABLE AUTORES

CREATE TABLE IF NOT EXISTS autores(

	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellidos VARCHAR(50),
	nacionalidad VARCHAR(50),
	fecha_nacimiento DATE,
	biografia TEXT,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,


	-- Restricciones de clave unica.

	CONSTRAINT unique_autores UNIQUE (nombre, apellidos, fecha_nacimiento)

);

-- Comentarios tabla autores.

COMMENT ON TABLE autores IS 'Catálogo de autores'; 
COMMENT ON COLUMN autores.nombre IS 'Nombre del autor'; 
COMMENT ON COLUMN autores.apellidos IS 'Apellidos del autor';
COMMENT ON COLUMN autores.nacionalidad IS 'País de origen del autor'; 
COMMENT ON COLUMN autores.fecha_nacimiento IS 'Fecha de nacimiento del autor';
COMMENT ON COLUMN autores.biografia IS 'Biografía o reseña del autor';




-- 3.- TABLA LIBROS

CREATE TABLE IF NOT EXISTS libros (

	id SERIAL PRIMARY KEY,
	titulo VARCHAR(200) NOT NULL,
	isbn VARCHAR(13) UNIQUE,
	precio DECIMAL(10,2) NOT NULL,
	stock INTEGER DEFAULT 0,
	paginas INTEGER,
	idioma VARCHAR(30) NOT NULL DEFAULT 'Español',
	fecha_publicacion DATE,
	categoria_id INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	-- Restricciones de clave foránea.
	
	FOREIGN KEY(categoria_id) REFERENCES categorias(id)
		ON DELETE SET NULL,
		
	-- Validaciones de negocio.

	CONSTRAINT precio_positivo CHECK (precio > 0),
	CONSTRAINT stock_no_negativo CHECK (stock >= 0),
	CONSTRAINT isbn_valido  CHECK (isbn ~ '^[0-9]{10}$' OR
        isbn ~ '^[0-9]{13}$' OR isbn IS NULL),
	CONSTRAINT paginas_positivas CHECK (paginas > 0 OR paginas IS NULL),
	CONSTRAINT precio_razonable CHECK (precio <= 10000)


);

-- Comentarios tabla libros.

COMMENT ON TABLE libros IS 'Catálogo principal de libros'; 
COMMENT ON COLUMN libros.id IS 'Identificador único del libro'; 
COMMENT ON COLUMN libros.titulo IS 'Título completo del libro'; 
COMMENT ON COLUMN libros.isbn IS 'ISBN-10 o ISBN-13 (10 o 13 dígitos)';
COMMENT ON COLUMN libros.precio IS 'Precio en moneda local, debe ser mayor a 0';
COMMENT ON COLUMN libros.stock IS 'Cantidad disponible en inventario (no negativo)'; 
COMMENT ON COLUMN libros.paginas IS 'Número de páginas del libro (mayor a 0)'; 
COMMENT ON COLUMN libros.idioma IS 'Idioma original del libro';
COMMENT ON COLUMN libros.fecha_publicacion IS 'Fecha de publicación original del libro';
COMMENT ON COLUMN libros.categoria_id IS 'Referencia a la categoría del libro'; 
COMMENT ON COLUMN libros.created_at IS 'Fecha de creación del registro';


-- 4.- TABLA LIBROS AUTORES 	
CREATE TABLE IF NOT EXISTS libros_autores(

	libro_id INTEGER NOT NULL,
	autor_id INTEGER NOT NULL,
	rol VARCHAR(50) DEFAULT 'Autor',
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	-- Restricciones de clave foránea.
	
	FOREIGN KEY(libro_id) REFERENCES libros(id)
		ON UPDATE CASCADE,
	FOREIGN KEY(autor_id) REFERENCES autores(id)
		ON UPDATE CASCADE,
	PRIMARY KEY (libro_id, autor_id),

	-- Validaciones de negocio.

	CONSTRAINT roles_validos CHECK (rol IN('Autor', 'Coautor','Editor','Traductor', 'Ilustrador'))

);


-- Comentarios tabla libros autores.

COMMENT ON TABLE libros_autores IS 'Relación muchos a muchos entre libros y autores';
COMMENT ON COLUMN libros_autores.libro_id IS 'Referencia al libro (FK a libros.id)'; 
COMMENT ON COLUMN libros_autores.autor_id IS 'Referencia al autor (FK a autores.id)'; 
COMMENT ON COLUMN libros_autores.rol IS 'Rol del autor en el libro (Autor, Coautor, Editor, Traductor, Ilustrador)';
COMMENT ON COLUMN libros_autores.created_at IS 'Fecha de creación del registro';


-- 5.- TABLA CLIENTES
CREATE TABLE IF NOT EXISTS clientes (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL UNIQUE,
	telefono VARCHAR(20),
	direccion TEXT,
	ciudad VARCHAR(100),
	codigo_postal VARCHAR(10),
	pais VARCHAR(50) DEFAULT 'México',
	fecha_registro DATE DEFAULT CURRENT_DATE,
	created_at	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	
	-- Validaciones de negocio.
	
	CONSTRAINT email_valido CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')

);

-- Comentarios tabla clientes.

COMMENT ON TABLE clientes IS 'Catálogo de clientes registrados'; 
COMMENT ON COLUMN clientes.email IS 'Correo electrónico único con validación de formato'; 
COMMENT ON COLUMN clientes.telefono IS 'Teléfono de contacto'; 
COMMENT ON COLUMN clientes.direccion IS 'Dirección completa del cliente'; 
COMMENT ON COLUMN clientes.codigo_postal IS 'Código postal (5 dígitos en México)'; 
COMMENT ON COLUMN clientes.fecha_registro IS 'Fecha en que se registró el cliente';



-- 6.- TABLA PEDIDOS

CREATE TABLE IF NOT EXISTS pedidos( 
	id SERIAL PRIMARY KEY, 
	numero_pedido VARCHAR(20) UNIQUE, 
	cliente_id INTEGER NOT NULL, 
	fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	estado VARCHAR(20) DEFAULT 'pendiente', 
	direccion_envio TEXT NOT NULL, 
	ciudad_envio VARCHAR(100) NOT NULL, 
	codigo_postal_envio VARCHAR(10) NOT NULL, 
	pais_envio VARCHAR(50) NOT NULL DEFAULT 'México', 
	subtotal DECIMAL(10,2) DEFAULT 0, 
	impuestos DECIMAL(10,2) DEFAULT 0, 
	gastos_envio DECIMAL(10,2) DEFAULT 0, 
	total DECIMAL(10,2) DEFAULT 0, 
	notas TEXT, fecha_envio TIMESTAMP, 
	fecha_entrega TIMESTAMP, 
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,


	-- Restricciones de clave foránea.

	FOREIGN KEY(cliente_id) REFERENCES clientes(id) 
		ON DELETE RESTRICT ON UPDATE CASCADE,

	-- Validaciones de negocio.
	
	CONSTRAINT estado_valido CHECK (estado IN ('pendiente', 'confirmado', 'procesando', 'enviado', 'entregado', 'cancelado')), 
	CONSTRAINT subtotal_positivo CHECK (subtotal >= 0), 
	CONSTRAINT impuestos_positivos CHECK (impuestos >= 0), 
	CONSTRAINT gastos_envio_positivos CHECK (gastos_envio >= 0), 
	CONSTRAINT total_positivo CHECK (total >= 0)

);

-- Comentarios tabla pedidos.

COMMENT ON TABLE pedidos IS 'Cabecera de pedidos realizados por clientes'; 
COMMENT ON COLUMN pedidos.numero_pedido IS 'Número único de pedido (formato libre)';
COMMENT ON COLUMN pedidos.cliente_id IS 'Referencia al cliente que realiza el pedido'; 
COMMENT ON COLUMN pedidos.estado IS 'Estado actual del pedido'; 
COMMENT ON COLUMN pedidos.direccion_envio IS 'Dirección de envío (puede ser diferente a la del cliente)'; 
COMMENT ON COLUMN pedidos.ciudad_envio IS 'Ciudad de envío'; 
COMMENT ON COLUMN pedidos.codigo_postal_envio IS 'Código postal de envío'; 
COMMENT ON COLUMN pedidos.pais_envio IS 'País de envío'; 
COMMENT ON COLUMN pedidos.subtotal IS 'Suma de precios unitarios antes de impuestos'; 
COMMENT ON COLUMN pedidos.impuestos IS 'Impuestos aplicados al pedido'; 
COMMENT ON COLUMN pedidos.gastos_envio IS 'Costo de envío'; 
COMMENT ON COLUMN pedidos.total IS 'Total a pagar (subtotal + impuestos + gastos_envio)'; 
COMMENT ON COLUMN pedidos.fecha_envio IS 'Fecha en que se envió el pedido';
COMMENT ON COLUMN pedidos.fecha_entrega IS 'Fecha en que se entregó el pedido';



-- 7.- TABLA DETALLES PEDIOD

CREATE TABLE IF NOT EXISTS detalles_pedido( 
	id SERIAL PRIMARY KEY, 
	pedido_id INTEGER NOT NULL,
	libro_id INTEGER NOT NULL, 
	cantidad INTEGER NOT NULL,
	precio_unitario DECIMAL(10,2) NOT NULL, 
	descuento DECIMAL(5,2) DEFAULT 0,
	subtotal_linea DECIMAL(10,2) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	-- Restricciones de clave foránea.
	
	FOREIGN KEY(pedido_id) REFERENCES pedidos(id) 
		ON DELETE CASCADE 
		ON UPDATE CASCADE, 
	FOREIGN KEY(libro_id) REFERENCES libros(id) 
		ON DELETE RESTRICT 
		ON UPDATE CASCADE,

	-- Restricciones de clave unica.

	CONSTRAINT unique_detalles_pedido UNIQUE (pedido_id, libro_id),

	-- Validaciones de negocio.
	
	CONSTRAINT cantidad_positiva CHECK (cantidad > 0), 
	CONSTRAINT precio_unitario_positivo CHECK (precio_unitario >= 0), 
	CONSTRAINT descuento_rango CHECK (descuento BETWEEN 0 AND 100), 
	CONSTRAINT subtotal_linea_positivo CHECK (subtotal_linea >= 0)


);


-- Comentarios tabla detalles pedido.

COMMENT ON TABLE detalles_pedido IS 'Detalle de libros por pedido'; 
COMMENT ON COLUMN detalles_pedido.pedido_id IS 'Referencia al pedido';
COMMENT ON COLUMN detalles_pedido.libro_id IS 'Referencia al libro comprado'; 
COMMENT ON COLUMN detalles_pedido.cantidad IS 'Cantidad de ejemplares del libro'; 
COMMENT ON COLUMN detalles_pedido.precio_unitario IS 'Precio al momento de la compra (no cambia aunque el libro suba de precio)';
COMMENT ON COLUMN detalles_pedido.descuento IS 'Porcentaje de descuento aplicado (0-100)'; 
COMMENT ON COLUMN detalles_pedido.subtotal_linea IS 'Subtotal por línea (cantidad * precio_unitario * (1 - descuento/100))';



-- 8.- OTROS COMENTARIOS


-- Comentarios sobre los campos de created_at.

COMMENT ON COLUMN categorias.created_at IS 'Fecha de creación del registro'; 
COMMENT ON COLUMN autores.created_at IS 'Fecha de creación del registro'; 
COMMENT ON COLUMN libros.created_at IS 'Fecha de creación del registro';
COMMENT ON COLUMN libros_autores.created_at IS 'Fecha de creación del registro'; 
COMMENT ON COLUMN clientes.created_at IS 'Fecha de creación del registro'; 
COMMENT ON COLUMN pedidos.created_at IS 'Fecha de creación del registro'; 
COMMENT ON COLUMN detalles_pedido.created_at IS 'Fecha de creación del registro';



-- ===================================================

--  DESPUÉS DE EJECUTAR LO DE ARRIBA, ESCRIBE:

--
--  COMMIT;    (para guardar)
--  o
--  ROLLBACK;  (para cancelar)

--
-- ===================================================

COMMIT;


-- Nensaje de éxito al competar la ejecución
DO $$
BEGIN 
	RAISE  NOTICE 'Tablas, comentarios y restricciones creados exitosamente en el esquema bookify.';

END $$;

