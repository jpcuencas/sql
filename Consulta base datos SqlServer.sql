use ASISA_DatamartProveedores;
SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, IS_NULLABLE, DATA_TYPE,
CASE DATA_TYPE
WHEN 'nvarchar' THEN
	CHARACTER_MAXIMUM_LENGTH
WHEN 'decimal' THEN
	NUMERIC_PRECISION_RADIX
WHEN 'char' THEN
	CHARACTER_MAXIMUM_LENGTH
END AS PRECISION
FROM INFORMATION_SCHEMA.COLUMNS
-- Base de Datos: ASISA_DatamartProveedores
WHERE TABLE_NAME in('V_TEMP_DETALLE_GON', 
					'M_ACTOS_GON',
					'M_FORFAITS',
					'M_GON',
					'T_BAREMO_NACIONAL',
					'T_MAPEO_SUPERGON',
					'V_BAREMO_ASISA_PARA_GPS',
					'V_CAPITA_SIMPLE_POR_PROVEEDOR',
					'V_PROVEEDORES_CON_PAGO_FIJO_AÑO_Y_ANTERIOR',
					'V_SEGMENTOS_ATLAS')
ORDER BY TABLE_CATALOG, TABLE_NAME, COLUMN_NAME ASC;

use DB2PROVEEDORES;
SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, IS_NULLABLE, DATA_TYPE,
CASE DATA_TYPE
WHEN 'nvarchar' THEN
	CHARACTER_MAXIMUM_LENGTH
WHEN 'decimal' THEN
	NUMERIC_PRECISION_RADIX
WHEN 'char' THEN
	CHARACTER_MAXIMUM_LENGTH
END AS PRECISION
FROM INFORMATION_SCHEMA.COLUMNS
					-- Base de Datos: DB2PROVEEDORES
WHERE TABLE_NAME in('TSPROMAT',
					'TSPRODEL',
					'TSPROSER')
ORDER BY TABLE_CATALOG, TABLE_NAME, COLUMN_NAME ASC;

use BD_ASISADMA;
SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, IS_NULLABLE, DATA_TYPE,
CASE DATA_TYPE
WHEN 'nvarchar' THEN
	CHARACTER_MAXIMUM_LENGTH
WHEN 'decimal' THEN
	NUMERIC_PRECISION_RADIX
WHEN 'char' THEN
	CHARACTER_MAXIMUM_LENGTH
END AS PRECISION
FROM INFORMATION_SCHEMA.COLUMNS
-- Base de Datos: BD_ASISADMA
WHERE TABLE_NAME in(
'GI_FORZADO_ESPECIALIDADES_DELEGACIONES',
'GI_FORZADO_ACTOS_DELEGACIONES',
'GI_BUSQUEDA_ACTOS_X_FECHA',
'GI_BUSQUEDA_ACTOS_ACTIVIDAD')
OR TABLE_NAME like 'GI_BUSQUEDA_ACTOS_01_%'
ORDER BY TABLE_CATALOG, TABLE_NAME, COLUMN_NAME ASC;

-- Tablas
--select * from sysobjects where type='U';

-- La consulta muestra todas las vistas de la base de datos
--select name from sysobjects where type='V';

-- La consulta muestra todos los procedimientos de la base de datos
--select name from sysobjects where type='P';

-- La consulta muestra todos los triggers de la base de datos
--select name from sysobjects where type='T';

-- La consulta muestra todas las llaves foraneas de la base de datos
--select name from sysobjects where type='F';

-- La consulta muestra todas las llaves primarias de la base de datos
--select name from sysobjects where type='K';

-- La consulta muestra todos los objetos del sistema de la base de datos
--select name from sysobjects where type='S';

-- La consulta muestra todos los objetos de la base de datos: Tablas, procedimientos almacenados, etc...
--SELECT CAST(table_name as varchar)  FROM INFORMATION_SCHEMA.TABLES;

--la consulta muestra todas las bases de datos, pero no muestra las de sistema: master,model, msdb y temdb
--SELECT name FROM master.dbo.sysdatabases WHERE name NOT IN ('master','model','msdb','tempdb');