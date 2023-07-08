

/* DELETE FROM TABLES */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio_de_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_pedido_productos') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tiempo') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tiempo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_local_') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_local_
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_categoria_tipo_local') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_categoria_tipo_local
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_rango_horario') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_rango_horario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_estado_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tipo_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_rango_etario') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_rango_etario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_movilidad') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tipo_movilidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_dia') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_dia
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_paquete') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tipo_paquete
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_medio_pago') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_provincia_localidad') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_provincia_localidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_mensajeria_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_estado_mensajeria_pedido
GO







-- DROPS
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio_de_mensajeria') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_pedido_productos') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tiempo') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tiempo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_local_') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_local_
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_categoria_tipo_local') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_categoria_tipo_local
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_rango_horario') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_rango_horario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_estado_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tipo_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_rango_etario') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_rango_etario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_movilidad') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tipo_movilidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_dia') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_dia
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_paquete') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tipo_paquete
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_mensajeria_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_estado_mensajeria_pedido

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_medio_pago') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_provincia_localidad') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_provincia_localidad
GO

--DROP TABLE DATAZO.dimension_estado_mensajeria
--DROP TABLE DATAZO.dimension_estado_pedido
--DROP PROCEDURES
	
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tiempo')
	DROP PROCEDURE DATAZO.migrar_dim_tiempo
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_local')
	DROP PROCEDURE DATAZO.migrar_dim_local
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_categoria_tipo_local')
	DROP PROCEDURE DATAZO.migrar_dim_categoria_tipo_local
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_rango_horario')
	DROP PROCEDURE DATAZO.migrar_dim_rango_horario
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_estado_reclamo')
	DROP PROCEDURE DATAZO.migrar_dim_estado_reclamo
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_reclamo')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_reclamo
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_rango_etario')
	DROP PROCEDURE DATAZO.migrar_dim_rango_etario
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_movilidad')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_movilidad
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_dia')
	DROP PROCEDURE DATAZO.migrar_dim_dia
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_paquete')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_paquete
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_medio_pago')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_medio_pago
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_estado_mensajeria_pedido')
	DROP PROCEDURE DATAZO.migrar_dim_estado_mensajeria_pedido
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_provincia_localidad')
	DROP PROCEDURE DATAZO.migrar_dim_provincia_localidad
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_hecho_envio')
	DROP PROCEDURE DATAZO.migrar_hecho_envio
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_hecho_pedido_productos')
	DROP PROCEDURE DATAZO.migrar_hecho_pedido_productos
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_hecho_envio_de_mensajeria')
	DROP PROCEDURE DATAZO.migrar_hecho_envio_de_mensajeria
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_hecho_reclamo')
	DROP PROCEDURE DATAZO.migrar_hecho_reclamo
GO

--DROP FUNCTIONS 
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'convertir_a_rango_horario')
	DROP FUNCTION DATAZO.convertir_a_rango_horario
GO
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'convertir_a_rango_etario')
	DROP FUNCTION DATAZO.convertir_a_rango_etario
GO
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'calcular_edad')
	DROP FUNCTION DATAZO.calcular_edad
GO	

--DROP VISTAS
IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'dia_y_horario_con_mas_pedidos')
	DROP VIEW DATAZO.dia_y_horario_con_mas_pedidos
GO

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'total_no_cobrado_por_local')
	DROP VIEW DATAZO.total_no_cobrado_por_local

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'promedio_mensual_envios')
	DROP VIEW DATAZO.promedio_mensual_envios
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'desvio_promedio_de_entrega')
	DROP VIEW DATAZO.desvio_promedio_de_entrega
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'total_cupones_utilizados_por_mes_por_edad')
	DROP VIEW DATAZO.total_cupones_utilizados_por_mes_por_edad
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'promedio_calificacion_mensual')
	DROP VIEW DATAZO.promedio_calificacion_mensual
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'porcentaje_entregas_rango_etario')
	DROP VIEW DATAZO.porcentaje_entregas_rango_etario
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'promedio_mensual_valor_asegurado')
	DROP VIEW DATAZO.promedio_mensual_valor_asegurado
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'reclamos_mensuales_por_local')
	DROP VIEW DATAZO.reclamos_mensuales_por_local
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'tiempo_prom_resol_reclamo')
	DROP VIEW DATAZO.tiempo_prom_resol_reclamo
GO

IF EXISTS ( SELECT [name] FROM sys.views WHERE [name] = 'monto_mensual_cupones_por_reclamos')
	DROP VIEW DATAZO.monto_mensual_cupones_por_reclamos
GO



-- CREATE TABLES
CREATE TABLE DATAZO.dimension_tiempo(id_tiempo INT NOT NULL IDENTITY(1,1), anio INT, mes INT)

ALTER TABLE DATAZO.dimension_tiempo
	ADD CONSTRAINT pk_dimension_tiempo PRIMARY KEY (id_tiempo)
GO

CREATE TABLE DATAZO.dimension_local_(id_local INT NOT NULL IDENTITY(1,1), nombre varchar(50))

ALTER TABLE DATAZO.dimension_local_
	ADD CONSTRAINT pk_dimension_local PRIMARY KEY (id_local)
GO

CREATE TABLE DATAZO.dimension_categoria_tipo_local(id_categoria_tipo_local INT NOT NULL IDENTITY(1,1), 
categoria varchar(255), tipo varchar(255))

ALTER TABLE DATAZO.dimension_categoria_tipo_local
	ADD CONSTRAINT pk_dimension_categoria_tipo_local PRIMARY KEY (id_categoria_tipo_local)
GO

CREATE TABLE DATAZO.dimension_rango_horario(id_rango_horario INT NOT NULL IDENTITY(1,1), rangoHorario NVARCHAR(13))

ALTER TABLE DATAZO.dimension_rango_horario
	ADD CONSTRAINT pk_dimension_rango_horario PRIMARY KEY (id_rango_horario)
GO

CREATE TABLE DATAZO.dimension_estado_reclamo(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_estado_reclamo
	ADD CONSTRAINT pk_dimension_estado_reclamo PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_reclamo
	ADD CONSTRAINT pk_dimension_tipo_reclamo PRIMARY KEY (id_tipo)
GO

CREATE TABLE DATAZO.dimension_rango_etario(id_rango INT NOT NULL IDENTITY(1,1), rango_etario VARCHAR(7))

ALTER TABLE DATAZO.dimension_rango_etario
	ADD CONSTRAINT pk_dimension_rango_etario PRIMARY KEY (id_rango)
GO

CREATE TABLE DATAZO.dimension_tipo_movilidad(id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_movilidad
	ADD CONSTRAINT pk_dimension_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO

CREATE TABLE DATAZO.dimension_dia(id_dia INT NOT NULL, descripcion CHAR)

ALTER TABLE DATAZO.dimension_dia
	ADD CONSTRAINT pk_dimension_dia PRIMARY KEY (id_dia)
GO

CREATE TABLE DATAZO.dimension_tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_paquete
	ADD CONSTRAINT pk_dimension_tipo_paquete PRIMARY KEY (id_tipo)
GO


CREATE TABLE DATAZO.dimension_tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_medio_pago
	ADD CONSTRAINT pk_dimension_tipo_medio_pago PRIMARY KEY (id_tipo_medio_pago)
GO

CREATE TABLE DATAZO.dimension_estado_mensajeria_pedido(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_estado_mensajeria_pedido
	ADD CONSTRAINT pk_dimension_estado_mensajeria_pedido PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_provincia_localidad(id_provincia_localidad INT NOT NULL IDENTITY(1,1), provincia VARCHAR(255),localidad VARCHAR (255))

ALTER TABLE DATAZO.dimension_provincia_localidad
	ADD CONSTRAINT pk_dimension_provincia_localidad PRIMARY KEY (id_provincia_localidad)
GO

--Create de hechos

CREATE TABLE DATAZO.hecho_envio(id_envio INT NOT NULL IDENTITY (1,1), id_tiempo INT,
					rango_etario_repartidor INT, id_estado INT, id_medioPago INT,
					id_rango_horario_entrega INT, prov_localidad INT,
					id_dia INT, porcentaje_de_envios DECIMAL(18,2),
					desvio SMALLDATETIME,
					id_tipo_movilidad INT
					)

ALTER TABLE DATAZO.hecho_envio
	ADD CONSTRAINT pk_hecho_envio PRIMARY KEY (id_envio),
	CONSTRAINT fk_hecho_envio_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_envio_rango_etario FOREIGN KEY (rango_etario_repartidor) REFERENCES DATAZO.dimension_rango_etario(id_rango),
	CONSTRAINT fk_hecho_envio_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.dimension_estado_mensajeria_pedido(id_estado),
	CONSTRAINT fk_hecho_envio_medioPago FOREIGN KEY (id_medioPago) REFERENCES DATAZO.dimension_tipo_medio_pago (id_tipo_medio_pago),
	CONSTRAINT fk_hecho_envio_rango_horario_entrega FOREIGN KEY (id_rango_horario_entrega) REFERENCES DATAZO.dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_envio_prov_localidad FOREIGN KEY (prov_localidad) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_hecho_envio_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_envio_tipo_movilidad FOREIGN KEY (id_tipo_movilidad) REFERENCES DATAZO.dimension_tipo_movilidad(id_tipo_movilidad)
GO


CREATE TABLE DATAZO.hecho_pedido_productos(id_pedido INT NOT NULL IDENTITY(1,1), id_dia INT,  id_local INT, id_categoria_tipo INT,
									id_prov_localidad INT, id_rango_horario INT, id_tiempo INT, 
									id_rango_etario_usr INT, id_estado INT,cantidad_pedidos INT,
									total_cupones DECIMAL(18,2), total_envio_pedidos DECIMAL(18,2), total_pedidos DECIMAL(18,2),
									calificacion_local DECIMAL(18,2)
									)
ALTER TABLE DATAZO.hecho_pedido_productos
	ADD CONSTRAINT pk_hecho_pedido PRIMARY KEY (id_pedido),
	CONSTRAINT fk_hecho_pedido_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_pedido_local FOREIGN KEY (id_local) REFERENCES DATAZO.dimension_local_(id_local),
	CONSTRAINT fk_hecho_pedido_categoria FOREIGN KEY (id_categoria_tipo) REFERENCES DATAZO.dimension_categoria_tipo_local,
	CONSTRAINT fk_hecho_pedido_prov_loc FOREIGN KEY (id_prov_localidad) REFERENCES DATAZO.dimension_provincia_localidad,
	CONSTRAINT fk_hecho_pedido_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_pedido_rango_horario FOREIGN KEY (id_rango_horario) REFERENCES DATAZO.dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_pedido_rango_etario_usr FOREIGN KEY (id_rango_etario_usr) REFERENCES DATAZO.dimension_rango_etario(id_rango),
	CONSTRAINT fk_hecho_pedido_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.dimension_estado_mensajeria_pedido(id_estado)
GO

CREATE TABLE DATAZO.hecho_envio_de_mensajeria(id_envio_mensajeria INT NOT NULL IDENTITY(1,1), 
									id_tiempo INT, id_tipo_paquete INT, 
									prom_valor_asegurado decimal(18,2), 
									precio_seguro decimal(18,2))

ALTER TABLE DATAZO.hecho_envio_de_mensajeria
	ADD CONSTRAINT pk_hecho_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria),
	CONSTRAINT fk_hecho_envio_tipo_paquete FOREIGN KEY (id_tipo_paquete) REFERENCES DATAZO.dimension_tipo_paquete(id_tipo),
	CONSTRAINT fk_hecho_envio_de_mens_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_reclamo(id_reclamo INT NOT NULL IDENTITY(1,1), id_local INT,
					tipo_reclamo INT, id_dia INT, id_tiempo INT, id_estado INT,
					id_rango_horario INT, id_rango_etario_op INT,
					prom_resolucion_por_RE DECIMAL(18,2), monto_mensual_cupones DECIMAL(18,2),
					cantidad_reclamos INT)

ALTER TABLE DATAZO.hecho_reclamo
	ADD CONSTRAINT pk_hecho_reclamo PRIMARY KEY (id_reclamo),
	CONSTRAINT fk_hecho_reclamo_local FOREIGN KEY (id_local) REFERENCES DATAZO.dimension_local_(id_local),
	CONSTRAINT fk_hecho_reclamo_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.dimension_tipo_reclamo (id_tipo),
	CONSTRAINT fk_hecho_reclamo_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_reclamo_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_reclamo_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.dimension_estado_reclamo(id_estado),
	CONSTRAINT fk_hecho_rango_horario FOREIGN KEY (id_rango_horario) REFERENCES DATAZO.dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_rango_etario FOREIGN KEY (id_rango_etario_op) REFERENCES DATAZO.dimension_rango_etario(id_rango)
GO


--migrar  dimensiones

--Local
CREATE PROCEDURE DATAZO.migrar_dim_tiempo
AS
BEGIN
	INSERT INTO DATAZO.dimension_tiempo(anio, mes)
	SELECT DISTINCT * FROM (
		SELECT DATEPART(YEAR, fecha_pedido) anio, DATEPART(MONTH, fecha_pedido) mes
		FROM DATAZO.envio
		UNION
		SELECT DATEPART(YEAR, fecha_entrega)anio , DATEPART(MONTH, fecha_entrega) mes
		FROM DATAZO.envio
		UNION
		SELECT DATEPART(YEAR, fecha)anio , DATEPART(MONTH, fecha) mes
		FROM DATAZO.reclamo
		UNION
		SELECT DATEPART(YEAR, fecha_registro)anio , DATEPART(MONTH, fecha_registro) mes
		FROM DATAZO.usuario
		UNION
		SELECT DATEPART(YEAR, fecha_nac)anio , DATEPART(MONTH, fecha_nac) mes
		FROM DATAZO.persona
		UNION
		SELECT DATEPART(YEAR, fecha_alta)anio , DATEPART(MONTH, fecha_alta) mes
		FROM DATAZO.cupon_descuento
		UNION
		SELECT DATEPART(YEAR, fecha_vencimiento)anio , DATEPART(MONTH, fecha_vencimiento) mes
		FROM DATAZO.cupon_descuento
	) tiempo

END
GO

CREATE PROCEDURE DATAZO.migrar_dim_local
AS
BEGIN
	INSERT INTO DATAZO.dimension_local_ (nombre)
	SELECT  DISTINCT nombre
	from DATAZO.local_
	where nombre IS NOT NULL
	PRINT 'dim_local migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_categoria_tipo_local
AS
BEGIN
	INSERT INTO DATAZO.dimension_categoria_tipo_local (tipo, categoria)
	SELECT  DISTINCT tl.descripcion, c.descripcion
	from DATAZO.tipo_local tl
	LEFT JOIN DATAZO.categoria c ON c.id_tipo = tl.id_tipo

	PRINT 'dim_categoria_tipo_local migrada'
END
GO

CREATE FUNCTION DATAZO.convertir_a_rango_horario (@horario DATETIME)
RETURNS VARCHAR(13)
AS
BEGIN
	DECLARE @resultado VARCHAR(13)
	DECLARE @hora INT  = DATEPART(HOUR, @horario)

	SELECT @resultado = 
		CASE
			WHEN @hora BETWEEN 0 AND 2 THEN '00:00 - 02:00'
			WHEN @hora BETWEEN 2 AND 4 THEN '02:00 - 04:00'
			WHEN @hora BETWEEN 4 AND 6 THEN '04:00 - 06:00'
			WHEN @hora BETWEEN 6 AND 8 THEN '06:00 - 08:00'
			WHEN @hora BETWEEN 8 AND 10 THEN '08:00 - 10:00'
			WHEN @hora BETWEEN 10 AND 12 THEN '10:00 - 12:00'
			WHEN @hora BETWEEN 12 AND 14 THEN '12:00 - 14:00'
			WHEN @hora BETWEEN 14 AND 16 THEN '14:00 - 16:00'
			WHEN @hora BETWEEN 16 AND 18 THEN '16:00 - 18:00'
			WHEN @hora BETWEEN 18 AND 20 THEN '18:00 - 20:00'
			WHEN @hora BETWEEN 20 AND 22 THEN '20:00 - 22:00'
			WHEN @hora BETWEEN 22 AND 24 THEN '22:00 - 00:00'
		END

	RETURN @resultado
END
GO

CREATE FUNCTION DATAZO.calcular_edad (@anio_nacimiento INT)
RETURNS INT
AS
BEGIN
    DECLARE @edad INT

    SELECT @edad =  year(GETDATE()) - @anio_nacimiento 

    IF ((@edad + @anio_nacimiento) > year(GETDATE()) )
        SET @edad = @edad - 1

    RETURN @edad
END
GO


CREATE FUNCTION DATAZO.convertir_a_rango_etario (@edad INT)
RETURNS VARCHAR(7)
AS
BEGIN
	DECLARE @resultado VARCHAR(7)

	SELECT @resultado = 
		CASE
			WHEN @edad < 25 THEN '<25'
			WHEN @edad BETWEEN 25 AND 35 THEN '25 - 35'
			WHEN @edad BETWEEN 35 AND 55 THEN '35 - 55'
			WHEN @edad > 55 THEN '>55'
		END

	RETURN @resultado
END
GO

-- CREATE PROCEDURE DATAZO.migrar_dim_rango_horario
-- AS
-- BEGIN
-- 	INSERT INTO DATAZO.dimension_rango_horario values ('00:00 - 02:00'),('02:00 - 04:00'),
-- 	('04:00 - 06:00'), ('06:00 - 08:00'), ('08:00 - 10:00'), ('10:00 - 12:00'),
-- 	('12:00 - 14:00'), ('14:00 - 16:00'), ('16:00 - 18:00'), ('18:00 - 20:00'),
-- 	('20:00 - 22:00'), ('22:00 - 00:00')
-- 	PRINT 'dim_rango_horario migrada'
-- END
-- GO


-- CREATE PROCEDURE DATAZO.migrar_dim_estado_reclamo
-- AS
-- BEGIN
-- 	INSERT INTO DATAZO.dimension_estado_reclamo (descripcion )
-- 	SELECT  DISTINCT estado
-- 	from DATAZO.reclamo
-- 	where estado  IS NOT NULL 

-- 	PRINT 'dim_estado_reclamo_migrada'
-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_dim_tipo_reclamo
-- AS
-- BEGIN
-- 	INSERT INTO DATAZO.dimension_tipo_reclamo (descripcion)
-- 	SELECT  DISTINCT descripcion
-- 	from DATAZO.tipo_reclamo

-- 	PRINT 'dim_tipo_reclamo_migrada'
-- END
-- GO
-- CREATE PROCEDURE DATAZO.migrar_dim_rango_etario
-- AS
-- BEGIN
-- 	INSERT INTO DATAZO.dimension_rango_etario values ('<25'),('25 - 35'),
-- 	('35 - 55'), ('>55')
-- 	PRINT 'dim_rango_etario migrada'
-- END
-- GO




-- CREATE PROCEDURE DATAZO.migrar_dim_tipo_movilidad
-- AS
-- BEGIN
-- 	--dimension_tipo_movilidad
-- 	INSERT INTO DATAZO.dimension_tipo_movilidad (descripcion )
-- 	SELECT  DISTINCT descripcion_movilidad
-- 	from DATAZO.tipo_movilidad
-- 	where descripcion_movilidad  IS NOT NULL 
-- 	PRINT 'dim_tipo_movilidad migrada'
-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_dim_dia
-- AS 
-- BEGIN 
-- 	--dimension_dia
-- 	INSERT INTO DATAZO.dimension_dia (id_dia, descripcion )
-- 	SELECT (
-- 		CASE
-- 			WHEN descripcion = 'Domingo' THEN 1
-- 			WHEN descripcion = 'Lunes' THEN 2
-- 			WHEN descripcion = 'Martes' THEN 3
-- 			WHEN descripcion = 'Miercoles' THEN 4
-- 			WHEN descripcion = 'Jueves' THEN 5
-- 			WHEN descripcion = 'Viernes' THEN 6
-- 			WHEN descripcion = 'Sabado' THEN 7
-- 		END
-- 	), left(dia.descripcion, 1) from DATAZO.dia

-- 	PRINT 'dim_dia migrada'
-- END 
-- GO

-- CREATE PROCEDURE DATAZO.migrar_dim_tipo_paquete
-- AS
-- BEGIN
-- 	--dimension_tipo_paquete
-- 	INSERT INTO DATAZO.dimension_tipo_paquete (tipo)
-- 	SELECT  DISTINCT tipo
-- 	from DATAZO.tipo_paquete
-- 	PRINT 'dim_tipo_paquete_migrada'
-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_dim_tipo_medio_pago
-- AS
-- BEGIN
-- 	--dimension_tipo_medio_pago
-- 	INSERT INTO DATAZO.dimension_tipo_medio_pago (descripcion )
-- 	SELECT  DISTINCT descripcion
-- 	from DATAZO.tipo_medio_pago
-- 	PRINT 'dim_tipo_medio_pago migrada'
-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_dim_estado_mensajeria_pedido
-- AS
-- BEGIN
-- 	--dimension_estado_pedido
-- 	INSERT INTO DATAZO.dimension_estado_mensajeria_pedido (descripcion )
-- 	SELECT  DISTINCT descripcion
-- 	from DATAZO.estado 
-- 	PRINT 'dim_estado_pedido migrada'
-- END
-- GO



-- CREATE PROCEDURE DATAZO.migrar_dim_provincia_localidad
-- AS
-- BEGIN
-- 	--dimension_provincia_localidad
-- 	INSERT INTO DATAZO.dimension_provincia_localidad (provincia , localidad )
-- 	SELECT DISTINCT PROV.nombre_provincia, LOC.nombre_localidad FROM DATAZO.provincia PROV 
-- 	JOIN DATAZO.localidad LOC ON LOC.id_provincia = PROV.id_provincia
-- 	PRINT 'dim_provincia_localidad migrada'
-- END
-- GO

CREATE FUNCTION DATAZO.calcular_procentaje_de_envios(@mes int,
	@rango_etario_repartidor varchar(10), @provincia varchar(255), @localidad varchar(255))
	RETURNS float
	AS
	BEGIN
		DECLARE @envios_parciales INT
		DECLARE @porcentaje_envios FLOAT

			SELECT @envios_parciales = COUNT(*) FROM DATAZO.envio
			JOIN DATAZO.repartidor ON envio.id_repartidor = repartidor.id_repartidor
			JOIN DATAZO.persona ON repartidor.id_persona = persona.id_persona AND
			DATAZO.convertir_a_rango_etario(
				DATAZO.calcular_edad(YEAR(persona.fecha_nac)))
			 = @rango_etario_repartidor
			JOIN direccion ON envio.dir_destino = direccion.id_direccion
			JOIN localidad ON localidad.id_localidad = direccion.localidad AND
				localidad.nombre_localidad = @localidad
			JOIN provincia ON localidad.id_provincia = provincia.id_provincia AND
				provincia.nombre_provincia = @provincia
			WHERE MONTH(envio.fecha_entrega) = @mes

			SELECT @porcentaje_envios = @envios_parciales / COUNT(*) 
			FROM DATAZO.envio
			WHERE MONTH(envio.fecha_entrega) = @mes

		RETURN @porcentaje_envios
	END
	GO
	
CREATE FUNCTION DATAZO.calcular_desvio (@tipo_movilidad VARCHAR(255), @dia INT,
@rango_horario VARCHAR(255))
RETURNS FLOAT
AS
BEGIN
	DECLARE @desvio FLOAT

	SELECT @desvio = AVG(DATEDIFF(MINUTE, e.fecha_pedido, e.fecha_entrega) -
	e.tiempo_estimado_entrega) FROM DATAZO.envio as e
	JOIN DATAZO.repartidor as r ON e.id_repartidor = r.id_repartidor
	JOIN DATAZO.tipo_movilidad ON r.tipo_movilidad = tipo_movilidad.id_tipo_movilidad
	WHERE DATAZO.convertir_a_rango_horario(e.fecha_entrega) = @rango_horario AND
	DATEPART(WEEKDAY, e.fecha_entrega) = @dia

	RETURN @desvio
END
GO


CREATE PROCEDURE DATAZO.migrar_hecho_envio
AS
BEGIN

	INSERT INTO DATAZO.hecho_envio (id_tiempo, id_dia, id_estado, id_medioPago,
	id_rango_horario_entrega, rango_etario_repartidor, id_tipo_movilidad, prov_localidad,
	porcentaje_de_envios, desvio)
		SELECT DISTINCT dt.id_tiempo, dd.id_dia, de.id_estado, dtmp.id_tipo_medio_pago,
		drh.id_rango_horario, dre.id_rango, dtm.id_tipo_movilidad,
		dpl.id_provincia_localidad, 
		DATAZO.calcular_procentaje_de_envios(dt.mes, dre.rango_etario, 
		dpl.provincia, dpl.localidad),
		DATAZO.calcular_desvio(tm.descripcion_movilidad, dd.id_dia, drh.rangoHorario)
		FROM DATAZO.envio as e
		JOIN DATAZO.dimension_tiempo as dt ON dt.anio = DATEPART(YEAR, e.fecha_entrega) 
		AND dt.mes = DATEPART(MONTH, e.fecha_pedido)
		JOIN DATAZO.dimension_dia as dd ON dd.id_dia = 
			DATENAME(WEEKDAY, e.fecha_entrega)
		JOIN DATAZO.estado as est ON est.id_estado = e.id_estado
		JOIN DATAZO.dimension_estado as de ON de.descripcion = est.descripcion
		JOIN DATAZO.tipo_medio_pago as tmp ON tmp.id_tipo_medio_pago = e.id_medioPago
		JOIN DATAZO.dimension_tipo_medio_pago as dtmp ON dtmp.descripcion = tmp.descripcion
		JOIN dimension_rango_horario as drh ON drh.rangoHorario = 
			DATAZO.convertir_a_rango_horario(e.fecha_entrega)
		JOIN DATAZO.repartidor as r ON r.id_repartidor = e.id_repartidor
		JOIN DATAZO.persona as p ON p.id_persona = r.id_persona
		JOIN DATAZO.dimension_rango_etario as dre ON dre.rango_etario = 
			DATAZO.convertir_a_rango_etario(DATAZO.calcular_edad(p.fecha_nac))
		JOIN DATAZO.tipo_movilidad as tm ON tm.id_tipo_movilidad = r.tipo_movilidad
		JOIN DATAZO.dimension_tipo_movilidad as dtm ON dtm.descripcion = 
			tm.descripcion_movilidad
		JOIN direccion as direc ON direc.id_direccion = e.dir_origen
		JOIN DATAZO.localidad as loc ON loc.id_localidad = direc.localidad
		JOIN DATAZO.provincia as pro ON pro.id_provincia = loc.id_provincia
		JOIN DATAZO.dimension_provincia_localidad AS dpl ON 
			dpl.provincia = pro.nombre_provincia AND dpl.localidad = loc.nombre_localidad
		PRINT 'hecho_evento migrado'
END
GO

-- CREATE PROCEDURE DATAZO.migrar_hecho_pedido_productos
-- AS
-- BEGIN

-- 	INSERT INTO DATAZO.hecho_pedido_productos (id_pedido, id_envio, id_local,
-- 	id_categoria_tipo, id_prov_localidad, tarifa_servicio, total_pedido)
-- 		SELECT p.id_pedido, e.id_envio, dl.id_local, 
-- 		dc.id_categoria_tipo_local, dpl.id_provincia_localidad, 
-- 		p.tarifa_servicio, p.total_pedido
-- 		FROM DATAZO.pedido_productos as p
-- 		JOIN DATAZO.hecho_envio as e ON e.id_envio = p.id_envio
-- 		JOIN DATAZO.local_ as l ON l.id_local = p.id_local
-- 		LEFT JOIN DATAZO.categoria as c ON c.id_categoria = l.categoria
-- 		JOIN DATAZO.tipo_local as tl ON tl.id_tipo = l.tipo
-- 		JOIN DATAZO.dimension_local_ as dl ON dl.id_local = p.id_local
-- 		LEFT JOIN DATAZO.dimension_categoria_tipo_local as dc ON dc.categoria = c.descripcion
-- 		AND dc.tipo = tl.descripcion 
-- 		JOIN DATAZO.direccion as d ON d.id_direccion = l.id_direccion
-- 		JOIN DATAZO.localidad as loc ON d.localidad = loc.id_localidad
-- 		JOIN DATAZO.provincia as pro ON pro.id_provincia = loc.id_provincia
-- 		JOIN DATAZO.dimension_provincia_localidad as dpl ON dpl.localidad = loc.nombre_localidad AND
-- 		dpl.provincia = pro.nombre_provincia
-- 		PRINT 'hecho_pedido_productos migrado'

-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_hecho_envio_de_mensajeria
-- AS
-- BEGIN

-- 	INSERT INTO DATAZO.hecho_envio_de_mensajeria (id_tiempo,
-- 	id_tipo_paquete, prom_valor_asegurado, precio_seguro)
-- 		SELECT dt.id_tiempo, dtp.id_tipo
-- 		FROM DATAZO.envio_de_mensajeria as e
-- 		JOIN DATAZO.envio as env ON env.id_envio = e.id_envio
-- 		JOIN DATAZO.dimension_tipo as dt ON dt.mes = DATEPART(MONTH, env.fecha_entrega) AND
-- 		dt.anio = DATEPART(YEAR,env.fecha_entrega)
-- 		JOIN DATAZO.tipo_paquete as tp ON tp.id_tipo = e.tipo_paquete
-- 		JOIN DATAZO.dimension_tipo_paquete as dtp ON htp.tipo = tp.tipo
-- 		PRINT 'hecho_envio_mensajeria migrado'
-- END
-- GO

-- CREATE PROCEDURE DATAZO.migrar_hecho_reclamo
-- AS
-- BEGIN
-- 	INSERT INTO DATAZO.hecho_reclamo (id_local, tipo_reclamo, id_dia, id_tiempo,
-- 	id_estado, id_rango_horario, id_rango_etario_op, 
-- 	prom_resolucion_por_RE, monto_mensual_cupones, cantidad_reclamos)
-- 	SELECT dl.id_local, dtr.id_tipo, dd.id_dia, id_tiempo
-- 	FROM DATAZO.reclamo as r
-- 	JOIN DATAZO.pedido as p ON p.id_pedido = r.id_pedido
-- 	JOIN DATAZO.local_ as l ON l.id_local = p.id_local
-- 	JOIN DATAZO.dimension_local_ as dl ON dl.nombre = l.nombre
-- 	JOIN DATAZO.tipo_reclamo as tr ON tr.id_tipo = r.tipo_reclamo
-- 	JOIN DATAZO.dimension_tipo_reclamo as dtr ON dtr.descripcion = tr.descripcion
-- 	JOIN DATAZO.dimension_dia as dd ON dd.descripcion = DATENAME(WEEKDAY, r.fecha)
-- 	JOIN DATAZO.dimension_timpo as dt ON dt.anio = DATEPART(YEAR, r.fecha) AND
-- 	dt.mes = DATEPART(MONTH, r.fecha)
-- 	JOIN DATAZO.dimension_estado_reclamo AS der ON der.descripcion = r.estado
-- 	JOIN DATAZO.dimension_rango_horario as drh ON 
-- 	drh.rango_horario = convertir_a_rango_horario(r.fecha)
-- 	JOIN DATAZO.operador as o ON o.id_operador = r.id_operador
-- 	JOIN DATAZO.persona as per ON per.id_persona = o.id_persona
-- 	JOIN DATAZO.dimension_rango_etario as dre ON dre.rango_etario = 
-- 		convertir_a_rango_etario(calcular_edad(per.fecha_nac))

-- 	PRINT 'hecho_reclamo migrado'
-- END
-- GO


-- BEGIN TRANSACTION
--  BEGIN TRY
--  	SELECT 1
-- 	-- EXECUTE DATAZO.migrar_dim_tiempo
-- 	-- EXECUTE DATAZO.migrar_dim_local
-- 	-- EXECUTE DATAZO.migrar_dim_categoria_tipo_local
-- 	-- EXECUTE DATAZO.migrar_dim_rango_horario
-- 	-- EXECUTE DATAZO.migrar_dim_rango_etario
-- 	-- EXECUTE DATAZO.migrar_dim_estado_reclamo
-- 	-- EXECUTE DATAZO.migrar_dim_tipo_movilidad
-- 	-- EXECUTE DATAZO.migrar_dim_dia
-- 	-- EXECUTE DATAZO.migrar_dim_tipo_paquete
-- 	-- EXECUTE DATAZO.migrar_dim_tipo_medio_pago
-- 	-- EXECUTE DATAZO.migrar_dim_estado_mensajeria_pedido
-- 	-- EXECUTE DATAZO.migrar_dim_provincia_localidad
-- 	-- EXECUTE DATAZO.migrar_hecho_envio
-- 	-- EXECUTE DATAZO.migrar_hecho_pedido_productos
-- 	-- EXECUTE DATAZO.migrar_hecho_envio_de_mensajeria
-- 	-- EXECUTE DATAZO.migrar_dim_tipo_reclamo
-- 	-- EXECUTE DATAZO.migrar_hecho_reclamo
-- END TRY
-- BEGIN CATCH
--     ROLLBACK TRANSACTION;
-- 	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vac�as o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
-- END CATCH

-- --    IF (EXISTS (SELECT 1 FROM DATAZO.envio)
-- --    AND EXISTS (SELECT 1 FROM DATAZO.usuario)
-- --    )
-- 	IF(1 = 1)
   
--    BEGIN
-- 	PRINT 'Tablas migradas correctamente.';
-- 	COMMIT TRANSACTION;
--    END
-- 	 ELSE
--    BEGIN
--     ROLLBACK TRANSACTION;
-- 	THROW 50002, 'Hubo un error al migrar una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
--    END
   
-- GO

--Vistas

/*Día de la semana y franja horaria con mayor cantidad de pedidos según la
localidad y categoría del local, para cada mes de cada año.*/

-- CREATE VIEW DATAZO.dia_y_horario_con_mas_pedidos

-- AS 
-- SELECT dpl.localidad as localidad_local, 
-- dctl.categoria as categoria_local, 
-- dt.mes as mes, dt.anio as año,
--  MAX(d.descripcion) as dia_de_mayor_pedidos, 
--  MAX(rh.rangoHorario) as rango_horario_de_mayor_pedidos
-- FROM DATAZO.hecho_pedido_productos AS p 
-- JOIN DATAZO.hecho_envio AS e ON e.id_envio = p.id_pedido
-- JOIN DATAZO.dimension_dia AS d ON e.dia_pedido = d.id_dia
-- JOIN DATAZO.dimension_provincia_localidad as dpl 
-- ON dpl.id_provincia_localidad = e.prov_localidad
-- JOIN DATAZO.dimension_rango_horario as rh ON rh.id_rango_horario = e.id_rango_horario_entrega
-- JOIN DATAZO.dimension_local_ as l ON l.id_local = p.id_local
-- LEFT JOIN DATAZO.dimension_categoria_tipo_local as dctl ON 
-- dctl.id_categoria_tipo_local = e.prov_localidad
-- JOIN DATAZO.dimension_tiempo as dt ON dt.id_tiempo = e.tiempo_entrega
-- GROUP BY dpl.localidad, dctl.categoria, dt.mes, dt.anio
-- GO

/*Monto total no cobrado por cada local en función de los pedidos
cancelados según el día de la semana y la franja horaria (cuentan como
pedidos cancelados tanto los que cancela el usuario como el local).*/

-- CREATE VIEW DATAZO.total_no_cobrado_por_local --solo agarre pedidos producto
-- AS
-- SELECT l.nombre, d.descripcion, rh.rangoHorario, sum(pp.total_pedido) as 'Total No Cobrado'
-- FROM DATAZO.hecho_envio e join DATAZO.hecho_pedido_productos pp on pp.id_envio = e.id_envio
-- JOIN DATAZO.dimension_dia d on d.id_dia = e.dia_pedido
-- JOIN DATAZO.dimension_rango_horario rh on rh.id_rango_horario = e.id_rango_horario_pedido
-- JOIN DATAZO.dimension_local_ l on l.id_local = pp.id_local
-- where e.id_estado = '1' 
-- group by l.nombre, d.descripcion, rh.rangoHorario
-- GO



/*Valor promedio mensual que tienen los envíos de pedidos en cada
localidad.*/

-- CREATE VIEW DATAZO.promedio_mensual_envios (localidad, provincia, promedio)
-- AS


--     SELECT PROV_LOC.localidad, PROV_LOC.provincia, AVG(E.precio_envio)
--     FROM DATAZO.dimension_provincia_localidad PROV_LOC
--     JOIN DATAZO.hecho_envio E ON E.prov_localidad = PROV_LOC.id_provincia_localidad
--     JOIN DATAZO.hecho_pedido_productos P ON P.id_envio = E.id_envio
--     GROUP BY PROV_LOC.localidad,PROV_LOC.provincia

-- GO

/*Desvío promedio en tiempo de entrega según el tipo de movilidad, el día
de la semana y la franja horaria.
El desvío debe calcularse en minutos y representa la diferencia entre la
fecha/hora en que se realizó el pedido y la fecha/hora que se entregó en
comparación con los minutos de tiempo estimados.
Este indicador debe tener en cuenta todos los envíos, es decir, sumar tanto
los envíos de pedidos como los de mensajería.*/


-- CREATE VIEW DATAZO.desvio_promedio_de_entrega (desvioPromedio, Movilidad, Dia, FranjaHoraria)
-- AS  
-- select tmp.desvio, tmp.descripcion, dia.descripcion, rango_h.rangoHorario  from (
--         SELECT tm.descripcion, env.dia_entrega, env.id_rango_horario_entrega,
--                 AVG( ABS( ABS( DATEDIFF(MINUTE, env.fecha_pedido, env.fecha_entrega)) - env.tiempo_estimado_entrega)) desvio
--         FROM DATAZO.hecho_repartidor rep
--         JOIN DATAZO.dimension_tipo_movilidad tm ON tm.id_tipo_movilidad = rep.tipo_movilidad
--         JOIN DATAZO.hecho_envio env ON env.id_repartidor = rep.id_repartidor 
--         GROUP BY tm.descripcion, env.dia_entrega, env.id_rango_horario_entrega
--         ) tmp
-- JOIN DATAZO.dimension_dia dia ON dia.id_dia = tmp.dia_entrega
-- JOIN DATAZO.dimension_rango_horario rango_h ON rango_h.id_rango_horario = tmp.id_rango_horario_entrega
    
-- GO


/*Monto total de los cupones utilizados por mes en función del rango etario
de los usuarios.*/

-- CREATE VIEW DATAZO.total_cupones_utilizados_por_mes_por_edad
-- AS
-- SELECT r.rango_etario as rango_etario, dt.mes as mes, sum(c.monto) as monto_total
-- FROM DATAZO.hecho_cupon_de_descuento AS c 
-- JOIN DATAZO.hecho_usuario AS u ON c.id_usuario = u.id_usuario 
-- JOIN DATAZO.hecho_persona AS p ON p.id_persona = u.id_persona 
-- JOIN DATAZO.dimension_rango_etario AS r ON r.id_rango = p.id_rango
-- JOIN DATAZO.dimension_tiempo as dt ON dt.id_tiempo = c.tiempo_alta
-- GROUP BY r.rango_etario, dt.mes
-- GO

/*Promedio de calificación mensual por local.*/

-- CREATE VIEW DATAZO.promedio_calificacion_mensual (mes, CalificacionPromedio, NombreLocal)
-- AS
-- SELECT  t.mes, AVG(e.calificacion) as 'Calificacion Promedio', l.nombre
-- FROM DATAZO.hecho_pedido_productos AS p JOIN DATAZO.dimension_local_ AS l ON l.id_local = p.id_local 
-- JOIN DATAZO.hecho_envio AS e ON e.id_envio = p.id_envio
-- join DATAZO.dimension_tiempo t on t.id_tiempo = e.tiempo_pedido
-- GROUP BY t.mes, l.nombre
-- GO

/*Porcentaje de pedidos y mensajería entregados mensualmente según el
rango etario de los repartidores y la localidad.
Este indicador se debe tener en cuenta y sumar tanto los envíos de pedidos
como los de mensajería.
El porcentaje se calcula en función del total general de pedidos y envíos
mensuales entregados.*/


-- CREATE VIEW DATAZO.porcentaje_entregas_rango_etario (mes, rango_etario, localidad, porcentaje)
-- AS
-- SELECT t.mes, re.rango_etario, pl.localidad,(SUM(CASE WHEN e.id_estado = 2 THEN 1 ELSE 0 END) / CAST(COUNT(*) AS FLOAT)) * 100 AS 'Porcentaje Entregados'
-- FROM DATAZO.hecho_envio e join DATAZO.dimension_tiempo t on t.id_tiempo = e.tiempo_pedido
-- join DATAZO.hecho_repartidor r on r.id_repartidor = e.id_repartidor
-- join DATAZO.hecho_persona p on p.id_persona = r.id_persona
-- join DATAZO.dimension_rango_etario re on re.id_rango = p.id_rango
-- join DATAZO.dimension_provincia_localidad pl on pl.id_provincia_localidad = e.prov_localidad
-- group by t.mes, re.rango_etario, pl.localidad
-- GO



/*Promedio mensual del valor asegurado (valor declarado por el usuario) de
los paquetes enviados a través del servicio de mensajería en función del
tipo de paquete.*/

-- CREATE VIEW DATAZO.promedio_mensual_valor_asegurado (mes, tipo_paquete , promedio)
-- AS
-- SELECT t.mes, tp.tipo, avg(em.valor_asegurado) as 'Promedio valores asegurados'
-- FROM  DATAZO.hecho_envio_de_mensajeria em join DATAZO.dimension_tipo_paquete tp on tp.id_tipo = em.tipo_paquete
-- join DATAZO.hecho_envio e on e.id_envio = em.id_envio
-- join DATAZO.dimension_tiempo t on t.id_tiempo = e.tiempo_pedido
-- group by t.mes, tp.tipo 
-- go

  
/*Cantidad de reclamos mensuales recibidos por cada local en función del
día de la semana y rango horario.*/

-- CREATE VIEW DATAZO.reclamos_mensuales_por_local (mes, nombre_local,cant_reclamos, dia, rango_horario)
-- AS
-- SELECT t.mes,l.nombre, count(r.nro_reclamo) as 'Cantidad de Reclamos', d.descripcion, rh.rangoHorario 
-- FROM  DATAZO.dimension_local_ l join DATAZO.hecho_pedido_productos p on l.id_local = p.id_local
-- join DATAZO.hecho_reclamo r on r.id_pedido = p.id_pedido
-- join DATAZO.dimension_dia d on d.id_dia = r.dia_inicio
-- join DATAZO.dimension_tiempo t on t.id_tiempo = r.tiempo_inicio
-- join DATAZO.dimension_rango_horario rh on rh.rangoHorario = DATAZO.convertir_a_rango_horario(r.horario_inicio)  
-- group by t.mes,l.nombre, d.descripcion, rh.rangoHorario 
-- go

  
/*Tiempo promedio de resolución de reclamos mensual según cada tipo de
reclamo y rango etario de los operadores.
El tiempo de resolución debe calcularse en minutos y representa la
diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora
que se resolvió.*/

-- CREATE VIEW DATAZO.tiempo_prom_resol_reclamo (tiempo, tipo_paquete , promedio)
-- AS
-- SELECT tr.descripcion, re.rango_etario, avg(DATEDIFF(MINUTE, r.horario_inicio, r.horario_solucion)) as 'Tiempo Promedio Resolucion'
-- FROM  DATAZO.hecho_reclamo r join DATAZO.dimension_tipo_reclamo tr on tr.id_tipo = r.tipo_reclamo
-- join DATAZO.hecho_operador o on o.id_operador = r.id_operador
-- join DATAZO.hecho_persona p on p.id_persona = o.id_persona
-- join DATAZO.dimension_rango_etario re on re.id_rango = p.id_rango
-- group by tr.descripcion, re.rango_etario
-- go
  
/*Monto mensual generado en cupones a partir de reclamos.*/

-- CREATE VIEW DATAZO.monto_mensual_cupones_por_reclamos (Monto, Mes)
-- AS
-- SELECT SUM(monto) as 'Monsto Mensual Generado Por Cupones', t.mes
-- FROM DATAZO.hecho_cupon_x_reclamo AS cxr JOIN DATAZO.hecho_cupon_de_descuento AS c ON c.id_cupon = cxr.id_cupon
-- join DATAZO.dimension_tiempo t on t.id_tiempo = c.tiempo_alta 
-- GROUP BY t.mes
-- GO
