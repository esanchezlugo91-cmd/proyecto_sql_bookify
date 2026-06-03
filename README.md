# Bookify - Base de Datos 🚧

Diseño y desarrollo continuo de la base de datos relacional para la gestión de una librería, implementada en PostgreSQL. Este repositorio se encuentra bajo desarrollo activo, por lo que se irán incorporando progresivamente nuevas tablas, vistas, funciones y consultas para ampliar su alcance.

## 🛠️ Características Principales
* **Restricciones de Integridad y Reglas de Negocio:** Validación estricta a nivel de base de datos (precios y stocks positivos, validación de formato para correos electrónicos con expresiones regulares e ISBN válido).
* **Diccionario de Datos Integrado:** Uso de comentarios (`COMMENT ON`) directamente en tablas y columnas para documentar el propósito de cada elemento de datos.
* **Control de Transacciones:** Scripts estructurados utilizando bloques transaccionales (`BEGIN; COMMIT;`) para garantizar la consistencia en la creación y el poblado de tablas.
* **Esquema Organizado:** Aislamiento de todos los objetos de base de datos dentro de su propio esquema (`bookify`).

## 🚀 Comenzando
Estas instrucciones te permitirán levantar la base de datos y cargar los datos de prueba en tu servidor PostgreSQL local.

### 📋 Pre-requisitos
* PostgreSQL (versión 12 o superior recomendada).
* Un cliente SQL (pgAdmin, DBeaver, DataGrip o la consola interactiva `psql`).

### ⚙️ Instalación y Carga
Los archivos están numerados en el orden preciso en que deben ejecutarse para respetar las dependencias de llaves foráneas:

1. **Creación de la base de datos:** Ejecuta el archivo `00_crear_base_datos_bookify.sql` para inicializar el contenedor lógico de la base de datos.
2. **Definición del esquema y tablas (DDL):** Conéctate a la base de datos `bookify` y ejecuta `01_tablas_bookify.sql`. Esto creará el esquema, las tablas, las relaciones y la documentación de las columnas.
3. **Carga de datos masiva:** Ejecuta `02_insert_data_bookify.sql` para poblar las tablas con registros ficticios de categorías, autores, libros, clientes y pedidos listos para su uso.

## 📂 Estructura del Proyecto
```text
baseDatosBookify/
├── 00_crear_base_datos_bookify.sql      # Inicialización y validación de la BD.
├── 01_tablas_bookify.sql                # Estructura de tablas, FKs, restricciones y comentarios (DDL).
├── 02_insert_data_bookify.sql           # Carga masiva de datos de prueba (DML).
├── 03_peticiones_inventario_almacen.sql # Consultas de stock, valorización y reabastecimiento.
├── 04_ventas_pedidos.sql                # Consultas financieras, agrupación por estados y costos de envío.
├── erd_schema                           # Diagrama entidad-relación (DER).
└── README.md                            # ¡Estás aquí!
```

## 🔩 Consultas de Negocio Destacadas
El proyecto incluye dos scripts con consultas diseñadas para responder a preguntas operativas del día a día:

### 📦 Gestión de Inventario (`03_peticiones_inventario_almacen.sql`)
* **Reporte de Mayor Inversión:** Identifica los 10 libros con mayor valor monetario acumulado en almacén (`precio * stock`).
* **Alertas de Reabastecimiento:** Determina qué títulos tienen menos de 100 unidades en existencia y cuántas piezas faltan para llegar a esa meta.
* **Análisis de Stock Promedio:** Clasifica la cantidad de libros que se encuentran por encima y por debajo de la media general de inventario.

### 📊 Flujo de Ventas y Logística (`04_ventas_pedidos.sql`)
* **Embudo de Pedidos:** Agrupa los pedidos según su estado actual (pendiente, confirmado, procesando, enviado, entregado, cancelado) para monitorear el flujo operativo.
* **Costos de Distribución:** Calcula el promedio de gasto de envío cobrado al cliente, así como los cobros extremos (más caro y más barato).
* **Métricas de Entrega:** Determina el subtotal, impuestos y total promedio facturado únicamente para los pedidos entregados con éxito.

## 📈 Próximas Actualizaciones (En desarrollo)
El proyecto seguirá creciendo de forma progresiva con la incorporación de:
* **Vistas (Views):** Consultas predefinidas para simplificar los reportes recurrentes de ventas e inventario.
* **Funciones y Procedimientos Almacenados:** Automatización de procesos comunes (cálculo de totales, facturación, etc.) mediante PL/pgSQL.
* **Disparadores (Triggers):** Actualización y control automático de inventario ante la confirmación o cancelación de pedidos.
* **Índices y Optimización:** Ajustes de rendimiento para simular entornos reales de alta concurrencia.

## 👤 Autor
* **Eduardo Alejandro Sánchez Lugo**
