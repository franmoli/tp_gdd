

/* DELETE FROM TABLES */

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

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_persona') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_persona
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_operador') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_operador
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_usuario') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_usuario
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_repartidor') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_repartidor
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_pedido_productos') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_pedido_productos
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_envio_de_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_envio_de_mensajeria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_de_descuento') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_de_descuento
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_x_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.hecho_cupon_x_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.hecho_cupon_x_reclamo
GO

--Create de las dimensiones
CREATE TABLE DATAZO.dimension_tiempo(id_tiempo INT NOT NULL IDENTITY(1,1), anio INT, mes INT)

ALTER TABLE DATAZO.dimension_tiempo
	ADD CONSTRAINT pk_dimension_tiempo PRIMARY KEY (id_tiempo)
GO

CREATE TABLE DATAZO.dimension_local_(id_local INT NOT NULL IDENTITY(1,1), nombre varchar(50))

ALTER TABLE DATAZO.dimension_local_
	ADD CONSTRAINT pk_dimension_local PRIMARY KEY (id_local)
GO

CREATE TABLE DATAZO.dimension_categoria_tipo_local(id_categoria_tipo_local INT NOT NULL IDENTITY(1,1), 
categoria varchar(15), tipo varchar(15))

ALTER TABLE DATAZO.dimension_categoria_tipo_local
	ADD CONSTRAINT pk_dimension_categoria_tipo_local PRIMARY KEY (id_categoria_tipo_local)
GO

CREATE TABLE DATAZO.dimension_rango_horario(id_rango_horario INT NOT NULL IDENTITY(1,1), horaInicial INT, horaFinal INT)

ALTER TABLE DATAZO.dimension_rango_horario
	ADD CONSTRAINT pk_dimension_rango_horario PRIMARY KEY (id_rango_horario)
GO

CREATE TABLE DATAZO.dimension_estado_reclamo(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_estado_reclamo
	ADD CONSTRAINT pk_dimension_estado_reclamo PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_tipo_reclamo
	ADD CONSTRAINT pk_dimension_tipo_reclamo PRIMARY KEY (id_tipo)
GO

CREATE TABLE DATAZO.dimension_rango_etario(id_rango INT NOT NULL IDENTITY(1,1), edadInicial INT, edadFinal INT)

ALTER TABLE DATAZO.dimension_rango_etario
	ADD CONSTRAINT pk_dimension_rango_etario PRIMARY KEY (id_rango)
GO

CREATE TABLE DATAZO.dimension_tipo_movilidad(id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_tipo_movilidad
	ADD CONSTRAINT pk_dimension_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO

CREATE TABLE DATAZO.dimension_dia(id_dia INT NOT NULL IDENTITY(1,1), descripcion CHAR)

ALTER TABLE DATAZO.dimension_dia
	ADD CONSTRAINT pk_dimension_dia PRIMARY KEY (id_dia)
GO

CREATE TABLE DATAZO.dimension_tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo VARCHAR(20))

ALTER TABLE DATAZO.dimension_tipo_paquete
	ADD CONSTRAINT pk_dimension_tipo_paquete PRIMARY KEY (id_tipo)
GO

CREATE TABLE DATAZO.dimension_estado_mensajeria(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_estado_mensajeria
	ADD CONSTRAINT pk_dimension_estado_mensajeria PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_tipo_medio_pago
	ADD CONSTRAINT pk_dimension_tipo_medio_pago PRIMARY KEY (id_tipo_medio_pago)
GO


CREATE TABLE DATAZO.dimension_estado_pedido(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))

ALTER TABLE DATAZO.dimension_estado_pedido
	ADD CONSTRAINT pk_dimension_estado_pedido PRIMARY KEY (id_estado)
GO

CREATE TABLE DATAZO.dimension_provincia_localidad(id_provincia_localidad INT NOT NULL IDENTITY(1,1), provincia VARCHAR(30),
localidad VARCHAR (30))

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

CREATE TABLE DATAZO.hecho_operador(id_operador INT NOT NULL IDENTITY(1,1), id_persona INT)

ALTER TABLE DATAZO.hecho_operador
	ADD CONSTRAINT pk_hecho_operador PRIMARY KEY (id_operador),
	CONSTRAINT fk_hecho_operador_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona)
GO

CREATE TABLE DATAZO.hecho_usuario(id_usuario INT NOT NULL IDENTITY(1,1), id_persona INT, dia_registro INT, tiempo_registro INT)

ALTER TABLE DATAZO.hecho_usuario
	ADD CONSTRAINT pk_hecho_usuario PRIMARY KEY (id_usuario),
	CONSTRAINT fk_hecho_usuario_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona),
	CONSTRAINT fk_hecho_usuario_dia FOREIGN KEY (dia_registro) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_usuario_tiempo FOREIGN KEY (tiempo_registro) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_repartidor(id_repartidor INT NOT NULL IDENTITY(1,1), id_persona INT, tipo_movilidad INT, localidad_activa INT)

ALTER TABLE DATAZO.hecho_repartidor
	ADD CONSTRAINT pk_hecho_repartidor PRIMARY KEY (id_repartidor),
	CONSTRAINT fk_hecho_repartidor_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.hecho_persona(id_persona),
	CONSTRAINT fk_hecho_repartidor_tipo_movilidad FOREIGN KEY (tipo_movilidad) REFERENCES DATAZO.dimension_tipo_movilidad (id_tipo_movilidad),
	CONSTRAINT fk_hecho_repartidor_localidad FOREIGN KEY (localidad_activa) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad)
GO

CREATE TABLE DATAZO.hecho_envio(id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2),
					dia_pedido INT, tiempo_pedido INT, dia_entrega INT, tiempo_entrega INT, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT)

ALTER TABLE DATAZO.hecho_envio
	ADD CONSTRAINT pk_hecho_envio PRIMARY KEY (id_envio),
	CONSTRAINT fk_hecho_envio_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario(id_usuario),
	CONSTRAINT fk_hecho_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES DATAZO.hecho_repartidor(id_repartidor),
	CONSTRAINT fk_hecho_envio_medioPago FOREIGN KEY (id_medioPago) REFERENCES DATAZO.dimension_tipo_medio_pago (id_medioPago),
	CONSTRAINT fk_hecho_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_hecho_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES DATAZO.dimension_provincia_localidad (id_provincia_localidad),
	CONSTRAINT fk_hecho_envio_dia_pedido FOREIGN KEY (dia_pedido) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_envio_tiempo_pedido FOREIGN KEY (tiempo_pedido) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_envio_dia_entrega FOREIGN KEY (dia_entrega) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_envio_tiempo_entrega FOREIGN KEY (tiempo_entrega) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO


CREATE TABLE DATAZO.hecho_pedido_productos(id_pedido INT NOT NULL IDENTITY(1,1), id_envio INT, id_local INT,
					id_estado_pedido INT, tarifa_servicio INT, total_pedido DECIMAL(18,2))

ALTER TABLE DATAZO.hecho_pedido_productos
	ADD CONSTRAINT pk_hecho_pedido PRIMARY KEY (id_pedido),
	CONSTRAINT fk_hecho_pedido_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.hecho_envio(id_envio),
	CONSTRAINT fk_hecho_pedido_local FOREIGN KEY (id_local) REFERENCES DATAZO.dimension_local_(id_local),
	CONSTRAINT fk_hecho_pedido_estado_pedido FOREIGN KEY (id_estado_pedido) REFERENCES DATAZO.dimension_estado_pedido(id_estado_pedido)
GO

CREATE TABLE DATAZO.hecho_envio_de_mensajeria(id_envio INT, id_envio_mensajeria DECIMAL(18,0) NOT NULL IDENTITY(1,1), 
					id_estado_envio INT, tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),)

ALTER TABLE DATAZO.hecho_envio_de_mensajeria
	ADD CONSTRAINT pk_hecho_envio PRIMARY KEY (id_envio_mensajeria),
	CONSTRAINT fk_hecho_envio_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.hecho_envio(id_envio),
	CONSTRAINT fk_hecho_pedido_estado_mensajeria FOREIGN KEY (id_estado_envio) REFERENCES DATAZO.dimension_estado_mensajeria(id_estado_mensajeria),
	CONSTRAINT fk_hecho_pedido_tipo_paquete FOREIGN KEY (tipo_paquete) REFERENCES DATAZO.dimension_tipo_paquete(id_tipo)
GO

CREATE TABLE DATAZO.hecho_reclamo(nro_reclamo DECIMAL(18,0) NOT NULL IDENTITY(1,1), id_pedido INT, tipo_reclamo INT, dia_fecha INT, tiempo_fecha INT,
					dia_solucion INT, tiempo_solucion INT, id_usuario INT, id_operador INT)

ALTER TABLE DATAZO.hecho_reclamo
	ADD CONSTRAINT pk_hecho_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_hecho_reclamo_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.hecho_pedido_productos (id_pedido),
	CONSTRAINT fk_hecho_reclamo_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.dimension_tipo_reclamo (id_tipo),
	CONSTRAINT fk_hecho_reclamo_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario (id_usuario),
	CONSTRAINT fk_hecho_reclamo_operador FOREIGN KEY (id_operador) REFERENCES DATAZO.hecho_operador (id_operador),
	CONSTRAINT fk_hecho_reclamo_dia_fecha FOREIGN KEY (dia_fecha) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_reclamo_tiempo_fecha FOREIGN KEY (tiempo_fecha) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_reclamo_dia_solucion FOREIGN KEY (dia_solucion) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_reclamo_tiempo_solucion FOREIGN KEY (tiempo_solucion) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_cupon_de_descuento(id_cupon INT IDENTITY(1,1) NOT NULL, nro DECIMAL(18,2) NOT NULL, id_usuario INT NOT NULL, 
					monto DECIMAL(18,2), dia_alta INT, tiempo_alta INT, dia_vencimiento INT, tiempo_vencimiento INT)

ALTER TABLE datazo.hecho_cupon_de_descuento
	ADD CONSTRAINT pk_hecho_cupon_descuento PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.hecho_usuario (id_usuario),
	CONSTRAINT fk_hecho_cupon_dia_alta FOREIGN KEY (dia_alta) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_cupon_tiempo_alta FOREIGN KEY (tiempo_alta) REFERENCES DATAZO.dimension_tiempo(id_tiempo),
	CONSTRAINT fk_hecho_cupon_dia_vencimiento FOREIGN KEY (dia_vencimiento) REFERENCES DATAZO.dimension_dia(id_dia),
	CONSTRAINT fk_hecho_cupon_tiempo_vencimiento FOREIGN KEY (tiempo_vencimiento) REFERENCES DATAZO.dimension_tiempo(id_tiempo)
GO

CREATE TABLE DATAZO.hecho_cupon_x_pedido(id_cupon INT NOT NULL IDENTITY(1,1), nro_cupon INT, id_pedido INT)

ALTER TABLE datazo.hecho_cupon_x_pedido
	ADD CONSTRAINT pk_hecho_cupon_pedido PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.hecho_pedido_productos (id_pedido)
GO

CREATE TABLE DATAZO.hecho_cupon_x_reclamo(id_cupon INT NOT NULL IDENTITY(1,1), nro_cupon decimal(18,2) NOT NULL, nro_reclamo decimal(18,0))

ALTER TABLE datazo.hecho_cupon_x_reclamo
	ADD CONSTRAINT pk_hecho_cupon_reclamo PRIMARY KEY (id_cupon),
	CONSTRAINT fk_hecho_cupon_reclamo FOREIGN KEY (nro_reclamo) REFERENCES DATAZO.hecho_reclamo (nro_reclamo)
GO