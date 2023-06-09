

/* DELETE FROM TABLES */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_envio_de_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.BI_hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.BI_hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_pedido_productos') AND type in (N'U'))
	DELETE FROM DATAZO.BI_hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_envio') AND type in (N'U'))
	DELETE FROM DATAZO.BI_hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tiempo') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_tiempo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_local_') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_local_
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_categoria_tipo_local') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_categoria_tipo_local
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_rango_horario') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_rango_horario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_estado_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_estado_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_tipo_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_rango_etario') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_rango_etario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_movilidad') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_tipo_movilidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_dia') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_dia
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_paquete') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_tipo_paquete
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_medio_pago') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_provincia_localidad') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_provincia_localidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_estado_mensajeria_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.BI_dimension_estado_mensajeria_pedido
GO







-- DROPS
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_envio_de_mensajeria') AND type in (N'U'))
	DROP TABLE DATAZO.BI_hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.BI_hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_pedido_productos') AND type in (N'U'))
	DROP TABLE DATAZO.BI_hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_hecho_envio') AND type in (N'U'))
	DROP TABLE DATAZO.BI_hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tiempo') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_tiempo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_local_') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_local_
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_categoria_tipo_local') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_categoria_tipo_local
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_rango_horario') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_rango_horario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_estado_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_estado_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_tipo_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_rango_etario') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_rango_etario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_movilidad') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_tipo_movilidad
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_dia') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_dia
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_paquete') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_tipo_paquete
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_estado_mensajeria_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_estado_mensajeria_pedido

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_tipo_medio_pago') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.BI_dimension_provincia_localidad') AND type in (N'U'))
	DROP TABLE DATAZO.BI_dimension_provincia_localidad
GO
	
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
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_hecho_envio')
	DROP PROCEDURE DATAZO.migrar_BI_hecho_envio
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_hecho_pedido_productos')
	DROP PROCEDURE DATAZO.migrar_BI_hecho_pedido_productos
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_hecho_envio_de_mensajeria')
	DROP PROCEDURE DATAZO.migrar_BI_hecho_envio_de_mensajeria
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_hecho_reclamo')
	DROP PROCEDURE DATAZO.migrar_BI_hecho_reclamo
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
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'calcular_procentaje_de_envios')
	DROP FUNCTION DATAZO.calcular_procentaje_de_envios
GO	
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'calcular_desvio')
	DROP FUNCTION DATAZO.calcular_desvio
GO	
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'calcular_promedio_VA')
	DROP FUNCTION DATAZO.calcular_promedio_VA
GO	
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'prom_resolucion_por_RE')
	DROP FUNCTION DATAZO.prom_resolucion_por_RE
GO
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'cantidad_reclamos')
	DROP FUNCTION DATAZO.cantidad_reclamos
GO
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'monto_mensual_cupones_reclamos')
	DROP FUNCTION DATAZO.monto_mensual_cupones_reclamos
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
CREATE TABLE DATAZO.BI_dimension_tiempo(id_tiempo INT NOT NULL IDENTITY(1,1), anio INT, mes INT)

ALTER TABLE DATAZO.BI_dimension_tiempo
	ADD CONSTRAINT pk_BI_dimension_tiempo PRIMARY KEY (id_tiempo)
GO

CREATE TABLE DATAZO.BI_dimension_local_(id_local INT NOT NULL IDENTITY(1,1), nombre varchar(50))

ALTER TABLE DATAZO.BI_dimension_local_
	ADD CONSTRAINT pk_dimension_local PRIMARY KEY (id_local)
GO

CREATE TABLE DATAZO.BI_dimension_categoria_tipo_local(id_categoria_tipo_local INT NOT NULL IDENTITY(1,1), 
categoria varchar(255), tipo varchar(255))

ALTER TABLE DATAZO.BI_dimension_categoria_tipo_local
	ADD CONSTRAINT pk_BI_dimension_categoria_tipo_local PRIMARY KEY (id_categoria_tipo_local)
GO

CREATE TABLE DATAZO.BI_dimension_rango_horario(id_rango_horario INT NOT NULL IDENTITY(1,1), rangoHorario NVARCHAR(13))

ALTER TABLE DATAZO.BI_dimension_rango_horario
	ADD CONSTRAINT pk_BI_dimension_rango_horario PRIMARY KEY (id_rango_horario)
GO

CREATE TABLE DATAZO.BI_dimension_estado_reclamo(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_estado_reclamo
	ADD CONSTRAINT pk_BI_dimension_estado_reclamo PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.BI_dimension_tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_tipo_reclamo
	ADD CONSTRAINT pk_BI_dimension_tipo_reclamo PRIMARY KEY (id_tipo)
GO

CREATE TABLE DATAZO.BI_dimension_rango_etario(id_rango INT NOT NULL IDENTITY(1,1), rango_etario VARCHAR(7))

ALTER TABLE DATAZO.BI_dimension_rango_etario
	ADD CONSTRAINT pk_BI_dimension_rango_etario PRIMARY KEY (id_rango)
GO

CREATE TABLE DATAZO.BI_dimension_tipo_movilidad(id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_tipo_movilidad
	ADD CONSTRAINT pk_BI_dimension_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO

CREATE TABLE DATAZO.BI_dimension_dia(id_dia INT NOT NULL, descripcion CHAR)

ALTER TABLE DATAZO.BI_dimension_dia
	ADD CONSTRAINT pk_BI_dimension_dia PRIMARY KEY (id_dia)
GO

CREATE TABLE DATAZO.BI_dimension_tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_tipo_paquete
	ADD CONSTRAINT pk_BI_dimension_tipo_paquete PRIMARY KEY (id_tipo)
GO


CREATE TABLE DATAZO.BI_dimension_tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_tipo_medio_pago
	ADD CONSTRAINT pk_BI_dimension_tipo_medio_pago PRIMARY KEY (id_tipo_medio_pago)
GO

CREATE TABLE DATAZO.BI_dimension_estado_mensajeria_pedido(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.BI_dimension_estado_mensajeria_pedido
	ADD CONSTRAINT pk_BI_dimension_estado_mensajeria_pedido PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.BI_dimension_provincia_localidad(id_provincia_localidad INT NOT NULL IDENTITY(1,1), provincia VARCHAR(255),localidad VARCHAR (255))

ALTER TABLE DATAZO.BI_dimension_provincia_localidad
	ADD CONSTRAINT pk_BI_dimension_provincia_localidad PRIMARY KEY (id_provincia_localidad)
GO

--Create de hechos

CREATE TABLE DATAZO.BI_hecho_envio(id_envio INT NOT NULL IDENTITY (1,1), mes INT,
					rango_etario_repartidor INT,
					id_rango_horario_entrega INT, prov_localidad INT,
					id_dia INT, cantidad_entregados INT,
					desvio DECIMAL(18,2),
					id_tipo_movilidad INT
					)

ALTER TABLE DATAZO.BI_hecho_envio
	ADD CONSTRAINT pk_BI_hecho_envio PRIMARY KEY (id_envio),
	CONSTRAINT fk_BI_hecho_envio_rango_etario FOREIGN KEY (rango_etario_repartidor) REFERENCES DATAZO.BI_dimension_rango_etario(id_rango),
	CONSTRAINT fk_BI_hecho_envio_rango_horario_entrega FOREIGN KEY (id_rango_horario_entrega) REFERENCES DATAZO.BI_dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_BI_hecho_envio_prov_localidad FOREIGN KEY (prov_localidad) REFERENCES DATAZO.BI_dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_BI_hecho_envio_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.BI_dimension_dia(id_dia),
	CONSTRAINT fk_BI_hecho_envio_tipo_movilidad FOREIGN KEY (id_tipo_movilidad) REFERENCES DATAZO.BI_dimension_tipo_movilidad(id_tipo_movilidad)
GO


CREATE TABLE DATAZO.BI_hecho_pedido_productos(id_pedido INT NOT NULL IDENTITY(1,1), id_dia INT,  id_local INT, id_categoria_tipo INT,
									id_prov_localidad INT, id_rango_horario INT, id_tiempo INT, 
									id_rango_etario_usr INT, id_estado INT,cantidad_pedidos INT,
									total_cupones DECIMAL(18,2), total_envio_pedidos DECIMAL(18,2), total_pedidos DECIMAL(18,2),
									calificacion_local DECIMAL(18,2)
									)
ALTER TABLE DATAZO.BI_hecho_pedido_productos
	ADD CONSTRAINT pk_hecho_pedido PRIMARY KEY (id_pedido),
	CONSTRAINT fk_hecho_pedido_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.BI_dimension_dia(id_dia),
	CONSTRAINT fk_hecho_pedido_local FOREIGN KEY (id_local) REFERENCES DATAZO.BI_dimension_local_(id_local),
	CONSTRAINT fk_hecho_pedido_categoria FOREIGN KEY (id_categoria_tipo) REFERENCES DATAZO.BI_dimension_categoria_tipo_local,
	CONSTRAINT fk_hecho_pedido_prov_loc FOREIGN KEY (id_prov_localidad) REFERENCES DATAZO.BI_dimension_provincia_localidad,
	CONSTRAINT fk_hecho_pedido_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.BI_dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_pedido_rango_horario FOREIGN KEY (id_rango_horario) REFERENCES DATAZO.BI_dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_pedido_rango_etario_usr FOREIGN KEY (id_rango_etario_usr) REFERENCES DATAZO.BI_dimension_rango_etario(id_rango),
	CONSTRAINT fk_hecho_pedido_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.BI_dimension_estado_mensajeria_pedido(id_estado)
GO

CREATE TABLE DATAZO.BI_hecho_envio_de_mensajeria(id_envio_mensajeria INT NOT NULL IDENTITY(1,1), 
									id_tiempo INT, id_tipo_paquete INT, 
									prom_valor_asegurado decimal(18,2))

ALTER TABLE DATAZO.BI_hecho_envio_de_mensajeria
	ADD CONSTRAINT pk_BI_hecho_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria),
	CONSTRAINT fk_BI_hecho_envio_tipo_paquete FOREIGN KEY (id_tipo_paquete) REFERENCES DATAZO.BI_dimension_tipo_paquete(id_tipo),
	CONSTRAINT fk_BI_hecho_envio_de_mens_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.BI_dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.BI_hecho_reclamo(id_reclamo INT NOT NULL IDENTITY(1,1), id_local INT,
					tipo_reclamo INT, id_dia INT, id_tiempo INT, id_estado INT,
					id_rango_horario INT, id_rango_etario_op INT,
					prom_resolucion_por_RE DECIMAL(18,2), monto_mensual_cupones DECIMAL(18,2),
					cantidad_reclamos INT)

ALTER TABLE DATAZO.BI_hecho_reclamo
	ADD CONSTRAINT pk_BI_hecho_reclamo PRIMARY KEY (id_reclamo),
	CONSTRAINT fk_BI_hecho_reclamo_local FOREIGN KEY (id_local) REFERENCES DATAZO.BI_dimension_local_(id_local),
	CONSTRAINT fk_BI_hecho_reclamo_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.BI_dimension_tipo_reclamo (id_tipo),
	CONSTRAINT fk_BI_hecho_reclamo_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.BI_dimension_dia(id_dia),
	CONSTRAINT fk_BI_hecho_reclamo_tiempo FOREIGN KEY (id_tiempo) REFERENCES DATAZO.BI_dimension_tiempo(id_tiempo),
	CONSTRAINT fk_BI_hecho_reclamo_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.BI_dimension_estado_reclamo(id_estado),
	CONSTRAINT fk_hecho_rango_horario FOREIGN KEY (id_rango_horario) REFERENCES DATAZO.BI_dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_rango_etario FOREIGN KEY (id_rango_etario_op) REFERENCES DATAZO.BI_dimension_rango_etario(id_rango)
GO


--migrar  dimensiones

--Local
CREATE PROCEDURE DATAZO.migrar_dim_tiempo
AS
BEGIN
	INSERT INTO DATAZO.BI_dimension_tiempo(anio, mes)
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
	INSERT INTO DATAZO.BI_dimension_local_ (nombre)
	SELECT  DISTINCT nombre
	from DATAZO.local_
	where nombre IS NOT NULL
	PRINT 'dim_local migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_categoria_tipo_local
AS
BEGIN
	
	INSERT INTO DATAZO.BI_dimension_categoria_tipo_local (tipo, categoria)
	SELECT  DISTINCT tl.descripcion, (
									CASE
										WHEN c.descripcion is NULL THEN 'No definida'
										WHEN c.descripcion is not NULL THEN c.descripcion
										END
									)
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

CREATE PROCEDURE DATAZO.migrar_dim_rango_horario
AS
BEGIN
	INSERT INTO DATAZO.BI_dimension_rango_horario values ('00:00 - 02:00'),('02:00 - 04:00'),
	('04:00 - 06:00'), ('06:00 - 08:00'), ('08:00 - 10:00'), ('10:00 - 12:00'),
	('12:00 - 14:00'), ('14:00 - 16:00'), ('16:00 - 18:00'), ('18:00 - 20:00'),
	('20:00 - 22:00'), ('22:00 - 00:00')
	PRINT 'dim_rango_horario migrada'
END
GO


CREATE PROCEDURE DATAZO.migrar_dim_estado_reclamo
AS
BEGIN
	INSERT INTO DATAZO.BI_dimension_estado_reclamo (descripcion )
	SELECT  DISTINCT estado
	from DATAZO.reclamo
	where estado  IS NOT NULL 

	PRINT 'dim_estado_reclamo_migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_tipo_reclamo
AS
BEGIN
	INSERT INTO DATAZO.BI_dimension_tipo_reclamo (descripcion)
	SELECT  DISTINCT descripcion
	from DATAZO.tipo_reclamo

	PRINT 'dim_tipo_reclamo_migrada'
END
GO
CREATE PROCEDURE DATAZO.migrar_dim_rango_etario
AS
BEGIN
	INSERT INTO DATAZO.BI_dimension_rango_etario values ('<25'),('25 - 35'),
	('35 - 55'), ('>55')
	PRINT 'dim_rango_etario migrada'
END
GO




CREATE PROCEDURE DATAZO.migrar_dim_tipo_movilidad
AS
BEGIN
	--BI_dimension_tipo_movilidad
	INSERT INTO DATAZO.BI_dimension_tipo_movilidad (descripcion )
	SELECT  DISTINCT descripcion_movilidad
	from DATAZO.tipo_movilidad
	where descripcion_movilidad  IS NOT NULL 
	PRINT 'dim_tipo_movilidad migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_dia
AS 
BEGIN 
	--BI_dimension_dia
	INSERT INTO DATAZO.BI_dimension_dia (id_dia, descripcion )
	SELECT (
		CASE
			WHEN descripcion = 'Domingo' THEN 1
			WHEN descripcion = 'Lunes' THEN 2
			WHEN descripcion = 'Martes' THEN 3
			WHEN descripcion = 'Miercoles' THEN 4
			WHEN descripcion = 'Jueves' THEN 5
			WHEN descripcion = 'Viernes' THEN 6
			WHEN descripcion = 'Sabado' THEN 7
		END
	), left(dia.descripcion, 1) from DATAZO.dia

	PRINT 'dim_dia migrada'
END 
GO

CREATE PROCEDURE DATAZO.migrar_dim_tipo_paquete
AS
BEGIN
	--BI_dimension_tipo_paquete
	INSERT INTO DATAZO.BI_dimension_tipo_paquete (tipo)
	SELECT  DISTINCT tipo
	from DATAZO.tipo_paquete
	PRINT 'dim_tipo_paquete_migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_tipo_medio_pago
AS
BEGIN
	--BI_dimension_tipo_medio_pago
	INSERT INTO DATAZO.BI_dimension_tipo_medio_pago (descripcion )
	SELECT  DISTINCT descripcion
	from DATAZO.tipo_medio_pago
	PRINT 'dim_tipo_medio_pago migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_estado_mensajeria_pedido
AS
BEGIN
	--dimension_estado_pedido
	INSERT INTO DATAZO.BI_dimension_estado_mensajeria_pedido (descripcion )
	SELECT  DISTINCT descripcion
	from DATAZO.estado 
	PRINT 'dim_estado_pedido migrada'
END
GO



CREATE PROCEDURE DATAZO.migrar_dim_provincia_localidad
AS
BEGIN
	--BI_dimension_provincia_localidad
	INSERT INTO DATAZO.BI_dimension_provincia_localidad (provincia , localidad )
	SELECT DISTINCT PROV.nombre_provincia, LOC.nombre_localidad FROM DATAZO.provincia PROV 
	JOIN DATAZO.localidad LOC ON LOC.id_provincia = PROV.id_provincia
	PRINT 'dim_provincia_localidad migrada'
END
GO


	
CREATE FUNCTION DATAZO.calcular_desvio ( @fecha_pedido DATETIME, @fecha_entrega DATETIME, @tiempo_estimado INT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @desvio FLOAT

	SET @desvio = DATEDIFF(MINUTE, @fecha_pedido, @fecha_entrega) - @tiempo_estimado

	RETURN @desvio
END
GO


CREATE PROCEDURE DATAZO.migrar_BI_hecho_envio
AS
BEGIN

	INSERT INTO DATAZO.BI_hecho_envio (mes, id_dia,
	id_rango_horario_entrega, rango_etario_repartidor, id_tipo_movilidad, prov_localidad,
	desvio, cantidad_entregados)

	-- agrupar por tipo de movilidad, dia de la semana, franja horaria, rango etario, localidad, estado, mes
	select 
	tm.mes mes,
	DATEPART(WEEKDAY, env.fecha_pedido) dia,
	rh.id_rango_horario franja_horaria,
	re.id_rango rango_etario, 
	dim_t_mov.id_tipo_movilidad tipo_movilidad_repartidor,
	prov_loc.id_provincia_localidad localidad,
	-- desvio promedio en tiempo de entrega, calculado con la formula del enunciado
	avg(datazo.calcular_desvio(env.fecha_pedido, env.fecha_entrega, env.tiempo_estimado_entrega)) desvio_promedio_entrega,
	-- la cantidad de pedidos que se entregaron en este rango horario, etario localidad etc
	-- count(CASE WHEN dim_est.descripcion = 'Estado Mensajeria Entregado' THEN 1 ELSE NULL END) cantidad_entregados
	count(env.id_envio) cantidad_entregados
	from datazo.envio env
	join datazo.BI_dimension_tiempo tm on tm.anio = DATEPART(YEAR, env.fecha_pedido) and tm.mes = DATEPART(MONTH, env.fecha_pedido)
	JOIN DATAZO.BI_dimension_rango_horario rh on rh.rangoHorario = DATAZO.convertir_a_rango_horario(env.fecha_entrega)
	join datazo.tipo_movilidad t_mov on t_mov.id_tipo_movilidad = env.id_tipo_movilidad
	join datazo.BI_dimension_tipo_movilidad dim_t_mov on dim_t_mov.descripcion = t_mov.descripcion_movilidad 
	join datazo.repartidor rep on rep.id_repartidor = env.id_repartidor
	join datazo.persona pers on pers.id_persona = rep.id_persona
	join datazo.BI_dimension_rango_etario re on re.rango_etario = datazo.convertir_a_rango_etario(datazo.calcular_edad(DATEPART(YEAR, pers.fecha_nac)))
	join datazo.direccion dir on dir.id_direccion = env.dir_origen
	join datazo.localidad loc on loc.id_localidad = dir.localidad
	join datazo.provincia prov on loc.id_provincia = prov.id_provincia
	join datazo.BI_dimension_provincia_localidad prov_loc on prov_loc.localidad = loc.nombre_localidad and prov_loc.provincia = prov.nombre_provincia
	join datazo.estado est on est.id_estado = env.id_estado
	join datazo.BI_dimension_estado_mensajeria_pedido dim_est on dim_est.descripcion = est.descripcion
	where dim_est.descripcion = 'Estado Mensajeria Entregado'
	group by tm.mes, DATEPART(WEEKDAY, env.fecha_pedido), rh.id_rango_horario, dim_t_mov.id_tipo_movilidad,
						re.id_rango, prov_loc.id_provincia_localidad

END
GO

CREATE PROCEDURE DATAZO.migrar_BI_hecho_pedido_productos
AS
BEGIN

	INSERT INTO DATAZO.BI_hecho_pedido_productos ( 
	id_dia,
	id_local,
	id_rango_horario,
	id_categoria_tipo,
	id_prov_localidad,
	id_tiempo,
	id_rango_etario_usr, 
	id_estado, 
	cantidad_pedidos,
	total_cupones, 
	total_envio_pedidos, 
	total_pedidos, 
	calificacion_local)
	-- para tal franja horaria de tal dia de la semana, todos los pedidos y cosas que hubieron en ese mes de ese año
			-- dia de la semana del mes de un anio
	select DATEPART(WEEKDAY, e.fecha_pedido) id_dia,
	-- el id a nombre de local
	local_.id_local local_,
	-- se va a agrupar por rango horario todo / rango horario de un dia de la semana de un mes de un año
	rh.id_rango_horario rango_horario,
	-- categoria de cada local individual
	ctl.id_categoria_tipo_local categoria_tipo,
	-- provincia y localidad de cada local individual 
	prov_loc.id_provincia_localidad provincia_localidad,
	-- anio y mes de los pedidos de tal franja horaria
	tm.id_tiempo anio_mes,
	-- rango etario de todos los que compraron ese dia de la semana y en ese rango horario en tal mes y año
	re.id_rango rango_etario,
	-- estado de todos los pedidos en tal franja horaria tal dia de la semana / mes / año
	dim_est.id_estado estado,
	-- cantidad de todos los pedidos cancelados o entregados que pasaron en tal franja horaria / dia de la semana / mes / año
	count(ped.id_pedido) cantidad_pedidos,
	-- suma de todos los cupones que se usaron en tal franja horaria / dia de la semana / mes / año
	sum(c.monto) total_cupones,
	-- promedio del precio de los envios de pedidos
	avg(e.precio_envio)  total_envio_de_pedidos,
	--  monto total de los pedidos en tal franja horaria / dia de la semana / mes / año
	sum(ped.total_pedido) total_pedidos,
	-- calificacion promedio del local tal franja horaria / dia de la semana / mes / año
	avg(e.calificacion)  calificacion_local
	from DATAZO.pedido_productos ped
	join DATAZO.envio e on ped.id_envio = e.id_envio
	JOIN DATAZO.BI_dimension_rango_horario rh on rh.rangoHorario = DATAZO.convertir_a_rango_horario(e.fecha_pedido)
	join datazo.local_ l on ped.id_local = l.id_local
	join datazo.BI_dimension_local_ local_ on local_.nombre = l.nombre
	JOIN datazo.tipo_local tl on l.tipo = tl.id_tipo
	join datazo.BI_dimension_categoria_tipo_local ctl on tl.descripcion = ctl.tipo 
	join datazo.direccion dir on dir.id_direccion = l.id_direccion
	join datazo.localidad loc on loc.id_localidad = dir.localidad
	join datazo.provincia prov on loc.id_provincia = prov.id_provincia
	join datazo.BI_dimension_provincia_localidad prov_loc on prov_loc.localidad = loc.nombre_localidad and prov_loc.provincia = prov.nombre_provincia
	join datazo.BI_dimension_tiempo tm on tm.anio = DATEPART(YEAR, e.fecha_pedido) and tm.mes = DATEPART(MONTH, e.fecha_pedido)
	join datazo.usuario usr on usr.id_usuario = e.id_usuario
	join datazo.persona pers on pers.id_persona = usr.id_persona
	join datazo.BI_dimension_rango_etario re on re.rango_etario = datazo.convertir_a_rango_etario(datazo.calcular_edad(DATEPART(YEAR, pers.fecha_nac)))
	join datazo.estado est on est.id_estado = e.id_estado
	join datazo.BI_dimension_estado_mensajeria_pedido dim_est on dim_est.descripcion = est.descripcion
	left join datazo.cupon_por_pedido c_x_p on c_x_p.id_pedido = ped.id_pedido
	left join datazo.cupon_descuento c on c.id_cupon = c_x_p.id_cupon
	GROUP by rh.id_rango_horario, DATEPART(WEEKDAY, e.fecha_pedido), tm.id_tiempo, re.id_rango, dim_est.id_estado, ctl.id_categoria_tipo_local, prov_loc.id_provincia_localidad, local_.id_local


END
GO






CREATE PROCEDURE DATAZO.migrar_BI_hecho_envio_de_mensajeria
AS
BEGIN

	INSERT INTO DATAZO.BI_hecho_envio_de_mensajeria (id_tiempo,
	id_tipo_paquete, prom_valor_asegurado)
	select tm.mes,
	dim_tp.id_tipo,
	avg(msj.valor_asegurado)
	from datazo.envio_de_mensajeria msj
	join datazo.envio env on env.id_envio = msj.id_envio
	join datazo.BI_dimension_tiempo tm on tm.anio = DATEPART(YEAR, env.fecha_pedido) and tm.mes = DATEPART(MONTH, env.fecha_pedido)
	join datazo.tipo_paquete tp on tp.id_tipo = msj.tipo_paquete
	join datazo.BI_dimension_tipo_paquete dim_tp on dim_tp.tipo = tp.tipo 
	group by tm.mes, dim_tp.id_tipo
	
		PRINT 'BI_hecho_envio_mensajeria migrado'
END
GO


CREATE PROCEDURE DATAZO.migrar_BI_hecho_reclamo
AS
BEGIN

	INSERT INTO DATAZO.BI_hecho_reclamo (id_local, tipo_reclamo, id_dia, id_tiempo,
	id_estado, id_rango_horario, id_rango_etario_op, 
	prom_resolucion_por_RE, monto_mensual_cupones, cantidad_reclamos)
	select
		-- agrupa por todo esto 
		dl.id_local id_local,
		dtr.id_tipo tipo_reclamo,
			-- dia en que se recibio el reclamo
		DATEPART(WEEKDAY, rec.fecha) id_dia,
			-- año y mes en que se recibio el reclamo
		dtmr.id_tiempo id_tiempo,
		der.id_estado id_estado_reclamo,
			-- rango horario en que se recibio el reclamo
		drh.id_rango_horario id_rango_horario,
		re.id_rango id_rango_etario_op,

		-- datos calculados
		AVG(DATEDIFF(MINUTE, rec.fecha, rec.fecha_solucion)) tiempo_resolucion_promedio,
		SUM(cd.monto) monto_cupones,
		count(rec.nro_reclamo) cantidad_reclamos
	from datazo.reclamo rec
	JOIN DATAZO.pedido_productos as p ON p.id_pedido = rec.id_pedido
	JOIN DATAZO.local_ as l ON l.id_local = p.id_local
	JOIN DATAZO.BI_dimension_local_ as dl ON dl.nombre = l.nombre
	JOIN DATAZO.tipo_reclamo as tr ON tr.id_tipo = rec.tipo_reclamo
	JOIN DATAZO.BI_dimension_tipo_reclamo as dtr ON dtr.descripcion = tr.descripcion
	join datazo.BI_dimension_tiempo dtmr on dtmr.anio = DATEPART(YEAR, rec.fecha) and dtmr.mes = DATEPART(MONTH, rec.fecha)
	join datazo.BI_dimension_tiempo dtms on dtms.anio = DATEPART(YEAR, rec.fecha_solucion) and dtms.mes = DATEPART(MONTH, rec.fecha_solucion)
	JOIN DATAZO.BI_dimension_estado_reclamo AS der ON der.descripcion = rec.estado
	JOIN DATAZO.BI_dimension_rango_horario drh on drh.rangoHorario = DATAZO.convertir_a_rango_horario(rec.fecha)
	JOIN DATAZO.operador as o ON o.id_operador = rec.id_operador
	JOIN DATAZO.persona as per ON per.id_persona = o.id_persona
	join datazo.BI_dimension_rango_etario re on re.rango_etario = datazo.convertir_a_rango_etario(datazo.calcular_edad(DATEPART(YEAR, per.fecha_nac)))
	join DATAZO.cupon_por_reclamo cr on cr.nro_reclamo = rec.nro_reclamo
	join DATAZO.cupon_descuento cd on cd.id_cupon = cr.id_cupon
	group by dl.id_local, dtr.id_tipo, DATEPART(WEEKDAY, rec.fecha), dtmr.id_tiempo, der.id_estado, drh.id_rango_horario, re.id_rango


	PRINT 'BI_hecho_reclamo migrado'
END
GO

BEGIN TRANSACTION
 BEGIN TRY
 	-- SELECT 1
	EXECUTE DATAZO.migrar_dim_tiempo
	EXECUTE DATAZO.migrar_dim_local
	EXECUTE DATAZO.migrar_dim_categoria_tipo_local
	EXECUTE DATAZO.migrar_dim_rango_horario
	EXECUTE DATAZO.migrar_dim_rango_etario
	EXECUTE DATAZO.migrar_dim_estado_reclamo
	EXECUTE DATAZO.migrar_dim_tipo_movilidad
	EXECUTE DATAZO.migrar_dim_dia
	EXECUTE DATAZO.migrar_dim_tipo_paquete
	EXECUTE DATAZO.migrar_dim_tipo_medio_pago
	EXECUTE DATAZO.migrar_dim_estado_mensajeria_pedido
	EXECUTE DATAZO.migrar_dim_provincia_localidad
	EXECUTE DATAZO.migrar_BI_hecho_pedido_productos
	EXECUTE DATAZO.migrar_BI_hecho_envio
	EXECUTE DATAZO.migrar_BI_hecho_envio_de_mensajeria
	EXECUTE DATAZO.migrar_dim_tipo_reclamo
	EXECUTE DATAZO.migrar_BI_hecho_reclamo
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vac�as o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

   IF (EXISTS (SELECT 1 FROM DATAZO.BI_hecho_envio_de_mensajeria)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_hecho_reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_hecho_pedido_productos)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_hecho_envio)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_tiempo)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_local_)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_categoria_tipo_local)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_rango_horario)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_estado_reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_tipo_reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_rango_etario)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_tipo_movilidad)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_dia)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_tipo_paquete)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_tipo_medio_pago)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_provincia_localidad)
   AND EXISTS (SELECT 1 FROM DATAZO.BI_dimension_estado_mensajeria_pedido))
	-- IF(1 = 1)
   
   BEGIN
	PRINT 'Tablas migradas correctamente.';
	COMMIT TRANSACTION;
   END
	 ELSE
   BEGIN
    ROLLBACK TRANSACTION;
	THROW 50002, 'Hubo un error al migrar una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
   END
   
GO

--Vistas

/*Día de la semana y franja horaria con mayor cantidad de pedidos según la
localidad y categoría del local, para cada mes de cada año.*/

CREATE VIEW DATAZO.dia_y_horario_con_mas_pedidos (dia, franja_horaria, localidad, categoria_local,
mes, anio)
AS 

	select dia, franja_horaria, localidad, categoria_local, mes, anio from (
	SELECT sum(fact.cantidad_pedidos) cant_pedidos,dia.descripcion dia, rh.rangoHorario franja_horaria,
			prov_loc.localidad localidad, cat_tipo.categoria categoria_local
			, tiempo.mes mes, tiempo.anio anio,
			ROW_NUMBER() OVER (PARTITION BY prov_loc.localidad, cat_tipo.categoria, tiempo.mes, tiempo.anio 
								ORDER BY sum(fact.cantidad_pedidos) DESC) row_num

	FROM DATAZO.BI_hecho_pedido_productos fact
	JOIN datazo.BI_dimension_dia dia on dia.id_dia = fact.id_dia
	join datazo.BI_dimension_rango_horario rh on rh.id_rango_horario = fact.id_rango_horario
	join datazo.BI_dimension_provincia_localidad prov_loc on prov_loc.id_provincia_localidad = fact.id_prov_localidad
	join datazo.BI_dimension_categoria_tipo_local cat_tipo on  cat_tipo.id_categoria_tipo_local = fact.id_categoria_tipo
	join datazo.BI_dimension_tiempo tiempo on tiempo.id_tiempo = fact.id_tiempo
	group by dia.descripcion,dia.id_dia, rh.rangoHorario, prov_loc.localidad, cat_tipo.categoria, tiempo.mes, tiempo.anio
	) aux
	where row_num = 1
GO

-- /*Monto total no cobrado por cada local en función de los pedidos
-- cancelados según el día de la semana y la franja horaria (cuentan como
-- pedidos cancelados tanto los que cancela el usuario como el local).*/

CREATE VIEW DATAZO.total_no_cobrado_por_local  (dia, franja_horaria, localidad, total_pedidos, local_)
AS

	select dia.descripcion dia, rh.rangoHorario, loc.localidad, sum(ped.total_pedidos) total, local_.nombre local_
	from datazo.BI_hecho_pedido_productos ped
	join datazo.BI_dimension_estado_mensajeria_pedido est on est.id_estado = ped.id_estado
	join datazo.BI_dimension_dia dia on dia.id_dia = ped.id_dia
	join datazo.BI_dimension_rango_horario rh on rh.id_rango_horario = ped.id_rango_horario
	join datazo.BI_dimension_provincia_localidad loc on loc.id_provincia_localidad = ped.id_prov_localidad
	join datazo.BI_dimension_local_ local_ on local_.id_local = ped.id_local
	where est.descripcion = 'Estado Mensajeria Cancelado'
	group by dia.descripcion, dia.id_dia, rh.rangoHorario, loc.localidad, local_.nombre
	

GO



-- /*Valor promedio mensual que tienen los envíos de pedidos en cada
-- localidad.*/


CREATE VIEW DATAZO.promedio_mensual_envios (promedio, mes, localidad)
AS

	select FORMAT(avg(ped.total_envio_pedidos), 'N2') promedio, mes.mes, loc.localidad
	from datazo.BI_hecho_pedido_productos ped
	join datazo.BI_dimension_tiempo mes on mes.id_tiempo = ped.id_tiempo
	join datazo.BI_dimension_provincia_localidad loc on loc.id_provincia_localidad = ped.id_prov_localidad
	group by mes.mes, loc.localidad

GO

-- /*Desvío promedio en tiempo de entrega según el tipo de movilidad, el día
-- de la semana y la franja horaria.
-- El desvío debe calcularse en minutos y representa la diferencia entre la
-- fecha/hora en que se realizó el pedido y la fecha/hora que se entregó en
-- comparación con los minutos de tiempo estimados.
-- Este indicador debe tener en cuenta todos los envíos, es decir, sumar tanto
-- los envíos de pedidos como los de mensajería.*/


CREATE VIEW DATAZO.desvio_promedio_de_entrega (tipo_movilidad, dia, franja_horaria, desvio)
AS 

	select 
	tm.descripcion,
	dia.descripcion,
	h.rangoHorario,
	avg(fact.desvio) desvio
	from datazo.BI_hecho_envio fact
	join datazo.BI_dimension_tipo_movilidad tm on tm.id_tipo_movilidad = fact.id_tipo_movilidad
	join datazo.BI_dimension_dia dia on dia.id_dia = fact.id_dia
	join datazo.BI_dimension_rango_horario h on h.id_rango_horario = fact.id_rango_horario_entrega
	group by tm.descripcion, dia.descripcion, dia.id_dia, h.rangoHorario


GO


-- /*Monto total de los cupones utilizados por mes en función del rango etario
-- de los usuarios.*/

CREATE VIEW DATAZO.total_cupones_utilizados_por_mes_por_edad (mes, rango_etario, total_cupones)
AS

	select mes.mes, re.rango_etario, sum(ped.total_cupones) monto
	from datazo.BI_hecho_pedido_productos ped
	join datazo.BI_dimension_rango_etario re on re.id_rango = ped.id_rango_etario_usr
	join datazo.BI_dimension_tiempo mes on mes.id_tiempo = ped.id_tiempo
	group by mes.mes, re.rango_etario



GO

-- /*Promedio de calificación mensual por local.*/

CREATE VIEW DATAZO.promedio_calificacion_mensual (mes, prom_calificacion, local_)
AS


	select mes.mes, AVG(ped.calificacion_local) promedio, local_.nombre
	from datazo.BI_hecho_pedido_productos ped
	join datazo.BI_dimension_tiempo mes on mes.id_tiempo = ped.id_tiempo
	join datazo.BI_dimension_local_ local_ on local_.id_local = ped.id_local
	group by mes.mes, local_.nombre



GO

-- /*Porcentaje de pedidos y mensajería entregados mensualmente según el
-- rango etario de los repartidores y la localidad.
-- Este indicador se debe tener en cuenta y sumar tanto los envíos de pedidos
-- como los de mensajería.
-- El porcentaje se calcula en función del total general de pedidos y envíos
-- mensuales entregados.*/


CREATE VIEW DATAZO.porcentaje_entregas_rango_etario (rango_etario, localidad, mes, porcentaje_de_envios)
AS

	select 
	re.rango_etario,
	loc.localidad,
	fact.mes,
	(convert(decimal(10,2), sum(fact.cantidad_entregados) * 100) / convert(decimal(10,2), SUM(DISTINCT totales_mensuales.total_mensual)))  porcentaje
	-- sum(fact.cantidad_entregados),
	-- SUM(DISTINCT totales_mensuales.total_mensual)
	from datazo.BI_hecho_envio fact
	join datazo.BI_dimension_rango_etario re on re.id_rango = fact.rango_etario_repartidor
	join datazo.BI_dimension_provincia_localidad loc on loc.id_provincia_localidad = fact.prov_localidad
	join (
		select sum(env.cantidad_entregados) total_mensual, env.mes from datazo.BI_hecho_envio env
		group by env.mes
	) totales_mensuales on totales_mensuales.mes = fact.mes
	group by re.rango_etario, loc.localidad, fact.mes

GO



/*Promedio mensual del valor asegurado (valor declarado por el usuario) de
los paquetes enviados a través del servicio de mensajería en función del
tipo de paquete.*/

CREATE VIEW DATAZO.promedio_mensual_valor_asegurado (mes, tipo_paquete , promedio)
AS
	SELECT t.mes, tp.tipo, em.prom_valor_asegurado
	FROM  DATAZO.BI_hecho_envio_de_mensajeria em 
	JOIN DATAZO.BI_dimension_tipo_paquete tp on tp.id_tipo = em.id_tipo_paquete
	JOIN DATAZO.BI_dimension_tiempo t on t.id_tiempo = em.id_tiempo
go

  
-- /*Cantidad de reclamos mensuales recibidos por cada local en función del
-- día de la semana y rango horario.*/

CREATE VIEW DATAZO.reclamos_mensuales_por_local (mes, dia, rango_horario, nombre_local, cant_reclamos)
AS
	SELECT t.mes ,
			d.descripcion,
			rh.rangoHorario,
			l.nombre,
			SUM(r.cantidad_reclamos)
	FROM  DATAZO.BI_hecho_reclamo as r
	JOIN DATAZO.BI_dimension_tiempo t on t.id_tiempo = r.id_tiempo
	JOIN DATAZO.BI_dimension_dia d on d.id_dia = r.id_dia
	JOIN DATAZO.BI_dimension_rango_horario rh on rh.id_rango_horario = r.id_rango_horario
	JOIN DATAZO.BI_dimension_local_ as l ON l.id_local = r.id_local
	group by t.mes, d.descripcion, rh.rangoHorario, l.nombre

go

  
/*Tiempo promedio de resolución de reclamos mensual según cada tipo de
reclamo y rango etario de los operadores.
El tiempo de resolución debe calcularse en minutos y representa la
diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora
que se resolvió.*/

CREATE VIEW DATAZO.tiempo_prom_resol_reclamo (tipo_reclamo, rango_etario_operado, tiempo_promedio_resolucion)
AS
	SELECT tr.descripcion,
			re.rango_etario,
			avg(r.prom_resolucion_por_RE)
	FROM DATAZO.BI_hecho_reclamo r 
	join DATAZO.BI_dimension_tipo_reclamo tr on tr.id_tipo = r.tipo_reclamo
	join DATAZO.BI_dimension_rango_etario re on re.id_rango = r.id_rango_etario_op
	group by tr.descripcion, re.rango_etario


go
  
/*Monto mensual generado en cupones a partir de reclamos.*/

CREATE VIEW DATAZO.monto_mensual_cupones_por_reclamos (mes, monto)
AS
	SELECT sum(r.monto_mensual_cupones), t.mes
	FROM DATAZO.BI_hecho_reclamo AS r 
	join DATAZO.BI_dimension_tiempo t on t.id_tiempo = r.id_tiempo
	group by t.mes
GO
