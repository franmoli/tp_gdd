

/* DELETE FROM TABLES */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio_de_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_x_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_x_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_pedido_productos') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_de_descuento') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_de_descuento
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_usuario') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_usuario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_repartidor') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_repartidor
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_operador') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_operador
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_persona') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_persona
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

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_estado_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_medio_pago') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_estado_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_provincia_localidad') AND type in (N'U'))
	DELETE FROM DATAZO.dimension_provincia_localidad
GO








-- DROPS
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio_de_mensajeria') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_cupon_x_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_cupon_x_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_pedido_productos') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_de_descuento') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_cupon_de_descuento
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_usuario') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_usuario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_repartidor') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_repartidor
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_operador') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_operador
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_persona') AND type in (N'U'))
	DROP TABLE DATAZO.hecho_persona
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

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_mensajeria') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_estado_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_tipo_medio_pago') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_tipo_medio_pago
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_estado_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_estado_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dimension_provincia_localidad') AND type in (N'U'))
	DROP TABLE DATAZO.dimension_provincia_localidad
GO

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
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_movilidad')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_movilidad
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_dia')
	DROP PROCEDURE DATAZO.migrar_dim_dia
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_paquete')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_paquete
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_estado_mensajeria')
	DROP PROCEDURE DATAZO.migrar_dim_estado_mensajeria
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_tipo_medio_pago')
	DROP PROCEDURE DATAZO.migrar_dim_tipo_medio_pago
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_estado_pedido')
	DROP PROCEDURE DATAZO.migrar_dim_estado_pedido
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dim_provincia_localidad')
	DROP PROCEDURE DATAZO.migrar_dim_provincia_localidad
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_hecho_repartidor')
	DROP PROCEDURE DATAZO.migrar_hecho_repartidor
GO

--DROP FUNCTIONS 
IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'convertir_a_rango_horario')
	DROP FUNCTION DATAZO.convertir_a_rango_horario
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

CREATE TABLE DATAZO.dimension_rango_etario(id_rango INT NOT NULL IDENTITY(1,1), edadInicial INT, edadFinal INT)

ALTER TABLE DATAZO.dimension_rango_etario
	ADD CONSTRAINT pk_dimension_rango_etario PRIMARY KEY (id_rango)
GO

CREATE TABLE DATAZO.dimension_tipo_movilidad(id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_movilidad
	ADD CONSTRAINT pk_dimension_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO

CREATE TABLE DATAZO.dimension_dia(id_dia INT NOT NULL IDENTITY(1,1), descripcion CHAR)

ALTER TABLE DATAZO.dimension_dia
	ADD CONSTRAINT pk_dimension_dia PRIMARY KEY (id_dia)
GO

CREATE TABLE DATAZO.dimension_tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_paquete
	ADD CONSTRAINT pk_dimension_tipo_paquete PRIMARY KEY (id_tipo)
GO

CREATE TABLE DATAZO.dimension_estado_mensajeria(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_estado_mensajeria
	ADD CONSTRAINT pk_dimension_estado_mensajeria PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_tipo_medio_pago
	ADD CONSTRAINT pk_dimension_tipo_medio_pago PRIMARY KEY (id_tipo_medio_pago)
GO


CREATE TABLE DATAZO.dimension_estado_pedido(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(255))

ALTER TABLE DATAZO.dimension_estado_pedido
	ADD CONSTRAINT pk_dimension_estado_pedido PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_provincia_localidad(id_provincia_localidad INT NOT NULL IDENTITY(1,1), provincia VARCHAR(255),
localidad VARCHAR (255))

ALTER TABLE DATAZO.dimension_provincia_localidad
	ADD CONSTRAINT pk_dimension_provincia_localidad PRIMARY KEY (id_provincia_localidad)
GO

--Create de hechos

CREATE TABLE DATAZO.hecho_persona(id_persona INT NOT NULL IDENTITY(1,1), dia_nac INT, tiempo_nac INT)

ALTER TABLE DATAZO.hecho_persona
	ADD CONSTRAINT pk_hecho_persona PRIMARY KEY (id_persona),
	CONSTRAINT fk_hecho_persona_dia FOREIGN KEY (dia_nac) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_persona_tiempo FOREIGN KEY (tiempo_nac) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_operador(id_operador INT NOT NULL, id_persona INT)

ALTER TABLE DATAZO.hecho_operador
	ADD CONSTRAINT pk_hecho_operador PRIMARY KEY (id_operador),
	CONSTRAINT fk_hecho_operador_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona)
GO

CREATE TABLE DATAZO.hecho_usuario(id_usuario INT NOT NULL, id_persona INT, dia_registro INT, tiempo_registro INT)

ALTER TABLE DATAZO.hecho_usuario
	ADD CONSTRAINT pk_hecho_usuario PRIMARY KEY (id_usuario),
	CONSTRAINT fk_hecho_usuario_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona),
	CONSTRAINT fk_hecho_usuario_dia FOREIGN KEY (dia_registro) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_usuario_tiempo FOREIGN KEY (tiempo_registro) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_repartidor(id_repartidor INT NOT NULL, id_persona INT, tipo_movilidad INT, localidad_activa INT)

ALTER TABLE DATAZO.hecho_repartidor
	ADD CONSTRAINT pk_hecho_repartidor PRIMARY KEY (id_repartidor),
	CONSTRAINT fk_hecho_repartidor_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona),
	CONSTRAINT fk_hecho_repartidor_tipo_movilidad FOREIGN KEY (tipo_movilidad) REFERENCES DATAZO.dimension_tipo_movilidad (id_tipo_movilidad),
	CONSTRAINT fk_hecho_repartidor_localidad FOREIGN KEY (localidad_activa) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad)
GO

CREATE TABLE DATAZO.hecho_envio(id_envio INT NOT NULL, id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2),
					fecha_pedido DATETIME, dia_pedido INT, tiempo_pedido INT, id_rango_horario_pedido INT, fecha_entrega DATETIME,
					dia_entrega INT, tiempo_entrega INT, id_rango_horario_entrega INT, tiempo_estimado_entrega DATETIME, calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT)

ALTER TABLE DATAZO.hecho_envio
	ADD CONSTRAINT pk_hecho_envio PRIMARY KEY (id_envio),
	CONSTRAINT fk_hecho_envio_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario(id_usuario),
	CONSTRAINT fk_hecho_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES DATAZO.hecho_repartidor(id_repartidor),
	CONSTRAINT fk_hecho_envio_medioPago FOREIGN KEY (id_medioPago) REFERENCES DATAZO.dimension_tipo_medio_pago (id_tipo_medio_pago),
	CONSTRAINT fk_hecho_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_hecho_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_hecho_envio_rango_horario_pedido FOREIGN KEY (id_rango_horario_pedido) REFERENCES DATAZO.dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_envio_rango_horario_entrega FOREIGN KEY (id_rango_horario_entrega) REFERENCES DATAZO.dimension_rango_horario(id_rango_horario),
	CONSTRAINT fk_hecho_envio_dia_pedido FOREIGN KEY (dia_pedido) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_envio_tiempo_pedido FOREIGN KEY (tiempo_pedido) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_envio_dia_entrega FOREIGN KEY (dia_entrega) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_envio_tiempo_entrega FOREIGN KEY (tiempo_entrega) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO


CREATE TABLE DATAZO.hecho_pedido_productos(id_pedido INT NOT NULL, id_envio INT, id_local INT,
					id_estado_pedido INT, tarifa_servicio INT, total_pedido DECIMAL(18,2))

ALTER TABLE DATAZO.hecho_pedido_productos
	ADD CONSTRAINT pk_hecho_pedido PRIMARY KEY (id_pedido),
	CONSTRAINT fk_hecho_pedido_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.hecho_envio(id_envio),
	CONSTRAINT fk_hecho_pedido_local FOREIGN KEY (id_local) REFERENCES DATAZO.dimension_local_(id_local),
	CONSTRAINT fk_hecho_pedido_estado_pedido FOREIGN KEY (id_estado_pedido) REFERENCES DATAZO.dimension_estado_pedido(id_estado)
GO

CREATE TABLE DATAZO.hecho_envio_de_mensajeria(id_envio INT, id_envio_mensajeria DECIMAL(18,0) NOT NULL IDENTITY(1,1), 
					id_estado_envio INT, tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),)

ALTER TABLE DATAZO.hecho_envio_de_mensajeria
	ADD CONSTRAINT pk_hecho_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria),
	CONSTRAINT fk_hecho_envio_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.hecho_envio(id_envio),
	CONSTRAINT fk_hecho_pedido_estado_mensajeria FOREIGN KEY (id_estado_envio) REFERENCES DATAZO.dimension_estado_mensajeria(id_estado),
	CONSTRAINT fk_hecho_pedido_tipo_paquete FOREIGN KEY (tipo_paquete) REFERENCES DATAZO.dimension_tipo_paquete(id_tipo)
GO

CREATE TABLE DATAZO.hecho_reclamo(nro_reclamo DECIMAL(18,0) NOT NULL, id_pedido INT, tipo_reclamo INT, dia_inicio INT, tiempo_inicio INT,
					dia_solucion INT, tiempo_solucion INT, id_usuario INT, id_operador INT, id_estado INT, horario_inicio DATETIME, horario_solucion DATETIME)

ALTER TABLE DATAZO.hecho_reclamo
	ADD CONSTRAINT pk_hecho_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_hecho_reclamo_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.hecho_pedido_productos (id_pedido),
	CONSTRAINT fk_hecho_reclamo_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.dimension_tipo_reclamo (id_tipo),
	CONSTRAINT fk_hecho_reclamo_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario (id_usuario),
	CONSTRAINT fk_hecho_reclamo_operador FOREIGN KEY (id_operador) REFERENCES DATAZO.hecho_operador (id_operador),
	CONSTRAINT fk_hecho_reclamo_dia_inicio FOREIGN KEY (dia_inicio) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_reclamo_tiempo_inicio FOREIGN KEY (tiempo_inicio) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_reclamo_dia_solucion FOREIGN KEY (dia_solucion) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_reclamo_tiempo_solucion FOREIGN KEY (tiempo_solucion) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_reclamo_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.dimension_estado_reclamo(id_estado)
GO

CREATE TABLE DATAZO.hecho_cupon_de_descuento(id_cupon INT NOT NULL, nro DECIMAL(18,2) NOT NULL, id_usuario INT NOT NULL, 
					monto DECIMAL(18,2), dia_alta INT, tiempo_alta INT, dia_vencimiento INT, tiempo_vencimiento INT)

ALTER TABLE datazo.hecho_cupon_de_descuento
	ADD CONSTRAINT pk_hecho_cupon_descuento PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario (id_usuario),
	CONSTRAINT fk_hecho_cupon_dia_alta FOREIGN KEY (dia_alta) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_cupon_tiempo_alta FOREIGN KEY (tiempo_alta) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_cupon_dia_vencimiento FOREIGN KEY (dia_vencimiento) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_cupon_tiempo_vencimiento FOREIGN KEY (tiempo_vencimiento) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_cupon_x_pedido(id_cupon INT NOT NULL, nro_cupon INT, id_pedido INT)

ALTER TABLE datazo.hecho_cupon_x_pedido
	ADD CONSTRAINT pk_hecho_cupon_pedido PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.hecho_pedido_productos (id_pedido)
GO

CREATE TABLE DATAZO.hecho_cupon_x_reclamo(id_cupon INT NOT NULL, nro_cupon decimal(18,2) NOT NULL, nro_reclamo decimal(18,0))

ALTER TABLE datazo.hecho_cupon_x_reclamo
	ADD CONSTRAINT pk_hecho_cupon_reclamo PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_reclamo FOREIGN KEY (nro_reclamo) REFERENCES DATAZO.hecho_reclamo (nro_reclamo)
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
	-- categ tipo local // la categoria es la desc?????
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

CREATE PROCEDURE DATAZO.migrar_dim_rango_horario
AS
BEGIN
	--dimension_rango_horario/ pasar a decimal?
	INSERT INTO DATAZO.dimension_rango_horario values ('00:00 - 02:00'),('02:00 - 04:00'),
	('04:00 - 06:00'), ('06:00 - 08:00'), ('08:00 - 10:00'), ('10:00 - 12:00'),
	('12:00 - 14:00'), ('14:00 - 16:00'), ('16:00 - 18:00'), ('18:00 - 20:00'),
	('20:00 - 22:00'), ('22:00 - 00:00')
	PRINT 'dim_rango_horario migrada'
END
GO


CREATE PROCEDURE DATAZO.migrar_dim_estado_reclamo
AS
BEGIN
	--dimension_estado_reclamo / solo aparece uno otro en null con distinct
	INSERT INTO DATAZO.dimension_estado_reclamo (descripcion )
	SELECT  DISTINCT estado
	from DATAZO.reclamo
	where estado  IS NOT NULL 

	PRINT 'dim_estado_reclamo_migrada'
END
GO

-- dim_tipo_reclamo

--dimension_rango_etario

--INSERT INTO DATAZO.dimension_rango_etario (edadInicial INT, edadFinal INT)
--SELECT  DISTINCT RECLAMO_ESTADO
--from gd_esquema.Maestra
--where RECLAMO_ESTADO  IS NOT NULL 

CREATE PROCEDURE DATAZO.migrar_dim_tipo_movilidad
AS
BEGIN
	--dimension_tipo_movilidad
	INSERT INTO DATAZO.dimension_tipo_movilidad (descripcion )
	SELECT  DISTINCT descripcion_movilidad
	from DATAZO.tipo_movilidad
	where descripcion_movilidad  IS NOT NULL 
	PRINT 'dim_tipo_movilidad migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_dia
AS 
BEGIN 
	--dimension_dia
	INSERT INTO DATAZO.dimension_dia (descripcion )
	SELECT left(dia.descripcion, 1) from DATAZO.dia
	ORDER BY (
		CASE
			WHEN descripcion = 'Lunes' THEN 1
			WHEN descripcion = 'Martes' THEN 2
			WHEN descripcion = 'Miercoles' THEN 3
			WHEN descripcion = 'Jueves' THEN 4
			WHEN descripcion = 'Viernes' THEN 5
			WHEN descripcion = 'Sabado' THEN 6
			WHEN descripcion = 'Domingo' THEN 7
		END
	)

	PRINT 'dim_dia migrada'
END 
GO

CREATE PROCEDURE DATAZO.migrar_dim_tipo_paquete
AS
BEGIN
	--dimension_tipo_paquete
	INSERT INTO DATAZO.dimension_tipo_paquete (tipo)
	SELECT  DISTINCT tipo
	from DATAZO.tipo_paquete
	PRINT 'dim_tipo_paquete_migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_estado_mensajeria
AS
BEGIN
	--dimension_estado_mensajeria
	INSERT INTO DATAZO.dimension_estado_mensajeria (descripcion )
	SELECT  DISTINCT ENVIO_MENSAJERIA_ESTADO
	from gd_esquema.Maestra
	where ENVIO_MENSAJERIA_ESTADO  IS NOT NULL 
	PRINT 'dim_estado_mensajeria migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_tipo_medio_pago
AS
BEGIN
	--dimension_tipo_medio_pago
	INSERT INTO DATAZO.dimension_tipo_medio_pago (descripcion )
	SELECT  DISTINCT descripcion
	from DATAZO.tipo_medio_pago
	PRINT 'dim_tipo_medio_pago migrada'
END
GO

CREATE PROCEDURE DATAZO.migrar_dim_estado_pedido
AS
BEGIN
	--dimension_estado_pedido
	INSERT INTO DATAZO.dimension_estado_pedido (descripcion )
	SELECT  DISTINCT descripcion
	from DATAZO.estado 
	PRINT 'dim_estado_pedido migrada'
END
GO



CREATE PROCEDURE DATAZO.migrar_dim_provincia_localidad
AS
BEGIN
	--dimension_provincia_localidad
	INSERT INTO DATAZO.dimension_provincia_localidad (provincia , localidad )
	SELECT DISTINCT PROV.nombre_provincia, LOC.nombre_localidad FROM DATAZO.provincia PROV 
	JOIN DATAZO.localidad LOC ON LOC.id_provincia = PROV.id_provincia
	PRINT 'dim_provincia_localidad migrada'
END
GO

--CREATE TABLE DATAZO.hecho_repartidor(id_repartidor INT NOT NULL IDENTITY(1,1),
-- id_persona INT, tipo_movilidad INT, localidad_activa INT)

CREATE PROCEDURE DATAZO.migrar_hecho_repartidor
AS
BEGIN
	INSERT INTO DATAZO.hecho_repartidor (id_repartidor, id_persona, tipo_movilidad, localidad_activa)
		SELECT r.id_repartidor, pe.id_persona, dtm.id_tipo_movilidad, dpl.id_provincia_localidad
		FROM DATAZO.repartidor as r
		LEFT JOIN DATAZO.hecho_persona as pe ON pe.id_persona = r.id_persona 
		LEFT JOIN DATAZO.tipo_movilidad as tm ON id_tipo_movilidad = tipo_movilidad
		LEFT JOIN DATAZO.localidad as l ON id_localidad = localidad_activa
		LEFT JOIN DATAZO.provincia as p ON p.id_provincia = l.id_provincia
		LEFT JOIN DATAZO.dimension_tipo_movilidad as dtm ON dtm.descripcion = tm.descripcion_movilidad
		LEFT JOIN DATAZO.dimension_provincia_localidad as dpl ON
		provincia = p.nombre_provincia AND localidad = l.nombre_localidad
		PRINT 'hecho_repartidor migrado'
END
GO


BEGIN TRANSACTION
 BEGIN TRY
 	-- SELECT 1
	EXECUTE DATAZO.migrar_dim_tiempo
	EXECUTE DATAZO.migrar_dim_local
	EXECUTE DATAZO.migrar_dim_categoria_tipo_local
	EXECUTE DATAZO.migrar_dim_rango_horario
	EXECUTE DATAZO.migrar_dim_estado_reclamo
	EXECUTE DATAZO.migrar_dim_tipo_movilidad
	EXECUTE DATAZO.migrar_dim_dia
	EXECUTE DATAZO.migrar_dim_tipo_paquete
	EXECUTE DATAZO.migrar_dim_estado_mensajeria
	EXECUTE DATAZO.migrar_dim_tipo_medio_pago
	EXECUTE DATAZO.migrar_dim_estado_pedido
	EXECUTE DATAZO.migrar_dim_provincia_localidad
	EXECUTE DATAZO.migrar_hecho_repartidor
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vac�as o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

--    IF (EXISTS (SELECT 1 FROM DATAZO.envio)
--    AND EXISTS (SELECT 1 FROM DATAZO.usuario)
--    )
	IF(1 = 1)
   
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
