
/* DELETE FROM TABLES */

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_por_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.cupon_por_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto_por_pedido') AND type in (N'U'))
	DELETE FROM DATAZO.producto_por_pedido
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_por_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.cupon_por_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.reclamo
GO
 IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.pedido_productos') AND type in (N'U'))
	DELETE FROM DATAZO.pedido_productos
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.envio_de_mensajeria') AND type in (N'U'))
	DELETE FROM DATAZO.envio_de_mensajeria
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.envio') AND type in (N'U'))
	DELETE FROM DATAZO.envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto_por_local') AND type in (N'U'))
	DELETE FROM DATAZO.producto_por_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.horario') AND type in (N'U'))
	DELETE FROM DATAZO.horario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.local_') AND type in (N'U'))
	DELETE FROM DATAZO.local_
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccionesXpersona') AND type in (N'U'))
	DELETE FROM DATAZO.direccionesXpersona
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccion') AND type in (N'U'))
	DELETE FROM DATAZO.direccion
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.medio_de_pago') AND type in (N'U'))
	DELETE FROM DATAZO.medio_de_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_descuento') AND type in (N'U'))
	DELETE FROM DATAZO.cupon_descuento
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.categoria') AND type in (N'U'))
	DELETE FROM DATAZO.categoria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_movilidad') AND type in (N'U'))
	DELETE FROM DATAZO.tipo_movilidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.localidad') AND type in (N'U'))
	DELETE FROM DATAZO.localidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.operador') AND type in (N'U'))
	DELETE FROM DATAZO.operador
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.usuario') AND type in (N'U'))
	DELETE FROM DATAZO.usuario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.repartidor') AND type in (N'U'))
	DELETE FROM DATAZO.repartidor
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.persona') AND type in (N'U'))
	DELETE FROM DATAZO.persona
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto') AND type in (N'U'))
	DELETE FROM DATAZO.producto
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_reclamo') AND type in (N'U'))
	DELETE FROM DATAZO.tipo_reclamo
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_medio_pago') AND type in (N'U'))
	DELETE FROM DATAZO.tipo_medio_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_paquete') AND type in (N'U'))
	DELETE FROM DATAZO.tipo_paquete
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.estado') AND type in (N'U'))
	DELETE FROM DATAZO.estado
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_local') AND type in (N'U'))
	DELETE FROM DATAZO.tipo_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.provincia') AND type in (N'U'))
	DELETE FROM DATAZO.provincia
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dia') AND type in (N'U'))
	DELETE FROM DATAZO.dia
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccionesXpersona') AND type in (N'U'))
	DELETE FROM DATAZO.direccionesXpersona
GO


/* DROP TABLES */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_por_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.cupon_por_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto_por_pedido') AND type in (N'U'))
	DROP TABLE DATAZO.producto_por_pedido
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_por_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.cupon_por_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.reclamo
GO
 IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.pedido_productos') AND type in (N'U'))
	DROP TABLE DATAZO.pedido_productos
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.envio_de_mensajeria') AND type in (N'U'))
	DROP TABLE DATAZO.envio_de_mensajeria
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.envio') AND type in (N'U'))
	PRINT 'DELETE ENVIO';
	DROP TABLE DATAZO.envio
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto_por_local') AND type in (N'U'))
	DROP TABLE DATAZO.producto_por_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.horario') AND type in (N'U'))
	DROP TABLE DATAZO.horario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.local_') AND type in (N'U'))
	DROP TABLE DATAZO.local_
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccionesXpersona') AND type in (N'U'))
	DROP TABLE DATAZO.direccionesXpersona
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccion') AND type in (N'U'))
	DROP TABLE DATAZO.direccion
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.medio_de_pago') AND type in (N'U'))
	DROP TABLE DATAZO.medio_de_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.cupon_descuento') AND type in (N'U'))
	DROP TABLE DATAZO.cupon_descuento
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.categoria') AND type in (N'U'))
	DROP TABLE DATAZO.categoria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_movilidad') AND type in (N'U'))
	DROP TABLE DATAZO.tipo_movilidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.localidad') AND type in (N'U'))
	DROP TABLE DATAZO.localidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.operador') AND type in (N'U'))
	DROP TABLE DATAZO.operador
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.usuario') AND type in (N'U'))
	DROP TABLE DATAZO.usuario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.repartidor') AND type in (N'U'))
	DROP TABLE DATAZO.repartidor
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.persona') AND type in (N'U'))
	DROP TABLE DATAZO.persona
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.producto') AND type in (N'U'))
	DROP TABLE DATAZO.producto
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_reclamo') AND type in (N'U'))
	DROP TABLE DATAZO.tipo_reclamo
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_medio_pago') AND type in (N'U'))
	DROP TABLE DATAZO.tipo_medio_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_paquete') AND type in (N'U'))
	DROP TABLE DATAZO.tipo_paquete
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.estado') AND type in (N'U'))
	DROP TABLE DATAZO.estado
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.tipo_local') AND type in (N'U'))
	DROP TABLE DATAZO.tipo_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.provincia') AND type in (N'U'))
	DROP TABLE DATAZO.provincia
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.dia') AND type in (N'U'))
	DROP TABLE DATAZO.dia
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DATAZO.direccionesXpersona') AND type in (N'U'))
	DROP TABLE DATAZO.direccionesXpersona
GO

--SCHEMA
IF  EXISTS (SELECT * FROM sys.schemas WHERE [name] = 'DATAZO')
	DROP SCHEMA  DATAZO
GO
CREATE SCHEMA DATAZO
GO


--Inicio de Creacion de Tablas

/*Parte 1*/

CREATE TABLE DATAZO.persona(id_persona INT NOT NULL IDENTITY(1,1), nombre NVARCHAR(255), apellido NVARCHAR(255), DNI DECIMAL(18,0), telefono DECIMAL(18,0), mail NVARCHAR(255), fecha_nac DATE)
CREATE TABLE DATAZO.producto(codigo NVARCHAR(50) NOT NULL, nombre NVARCHAR(50), descripcion NVARCHAR(255))
CREATE TABLE DATAZO.tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE DATAZO.tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE DATAZO.tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo NVARCHAR(50), alto_max DECIMAL(18,2), ancho_max DECIMAL(18,2), largo_max DECIMAL(18,2), peso_max DECIMAL(18,2), tipo_precio DECIMAL(18,2))
CREATE TABLE DATAZO.estado (id_estado INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE DATAZO.tipo_local(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE DATAZO.provincia (id_provincia INT NOT NULL IDENTITY(1,1), nombre_provincia NVARCHAR(255));
CREATE TABLE DATAZO.dia (id_dia INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))

ALTER TABLE DATAZO.persona
	ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)
GO

ALTER TABLE DATAZO.producto
	ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codigo)
GO

ALTER TABLE DATAZO.tipo_reclamo
	ADD CONSTRAINT pk_tipo_reclamo PRIMARY KEY (id_tipo)
GO
	
ALTER TABLE DATAZO.tipo_medio_Pago
	ADD CONSTRAINT pk_tipo_medioPago PRIMARY KEY (id_tipo_medio_pago)
GO
	
ALTER TABLE DATAZO.tipo_paquete
	ADD CONSTRAINT pk_tipo_paquete PRIMARY KEY (id_tipo)
GO

ALTER TABLE DATAZO.estado
	ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado)
GO

ALTER TABLE DATAZO.tipo_local
	ADD CONSTRAINT pk_tipo_local PRIMARY KEY (id_tipo)
GO

ALTER TABLE DATAZO.provincia 
	ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia);
GO

ALTER TABLE DATAZO.dia
	ADD CONSTRAINT pk_dia PRIMARY KEY (id_dia)
GO
/*Parte 2*/

CREATE TABLE DATAZO.tipo_movilidad (id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion_movilidad NVARCHAR(255));
CREATE TABLE DATAZO.localidad (id_localidad INT NOT NULL IDENTITY(1,1), id_provincia INT, nombre_localidad NVARCHAR(255));
CREATE TABLE DATAZO.operador (id_operador INT NOT NULL IDENTITY(1,1), id_persona INT);
CREATE TABLE DATAZO.usuario (id_usuario INT NOT NULL IDENTITY(1,1), id_persona INT, fecha_registro DATETIME2(3));
CREATE TABLE DATAZO.repartidor (id_repartidor INT NOT NULL IDENTITY(1,1), id_persona INT, tipo_movilidad INT, localidad_activa INT);

--usuario
ALTER TABLE DATAZO.usuario 
	ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),
	CONSTRAINT fk_usuario_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.persona(id_persona)
GO
	
--repartidor
ALTER TABLE DATAZO.repartidor 
	ADD CONSTRAINT pk_repartidor PRIMARY KEY (id_repartidor),
	CONSTRAINT fk_repartidor_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.persona(id_persona)
GO

	
--Localidad
ALTER TABLE DATAZO.localidad
	ADD CONSTRAINT pk_localidad PRIMARY KEY (id_localidad),
	CONSTRAINT fk_localidad FOREIGN KEY (id_provincia) REFERENCES DATAZO.provincia(id_provincia)
GO

--Tipo movilidad
ALTER TABLE DATAZO.tipo_movilidad 
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO


/*Parte 3*/

CREATE TABLE DATAZO.direccion (id_direccion INT IDENTITY(1,1) NOT NULL, direccion NVARCHAR(255), localidad INT);
CREATE TABLE DATAZO.medio_de_pago (id_medioPago INT IDENTITY(1,1), id_usuario INT, id_tipo_medio_pago INT, nro_tarjeta NVARCHAR(50), marca_tarjeta NVARCHAR(100));
CREATE TABLE DATAZO.cupon_descuento (nro DECIMAL(18,2) NOT NULL, id_usuario INT NOT NULL, monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50), usado TINYINT);
CREATE TABLE DATAZO.categoria (id_categoria INT IDENTITY(1,1) NOT NULL, id_tipo INT NOT NULL, descripcion VARCHAR(255));
CREATE TABLE DATAZO.envio (id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
					fecha_pedido DATETIME, fecha_entrega DATETIME, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);
CREATE TABLE DATAZO.local_ (id_local INT IDENTITY(1,1), id_direccion INT, nombre NVARCHAR(100), descripcion NVARCHAR(255), tipo INT, categoria INT);
	
--Direccion
ALTER TABLE DATAZO.direccion 
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion),
	CONSTRAINT fk_direccion_localidad FOREIGN KEY (localidad) REFERENCES DATAZO.localidad(id_localidad)
GO

--Medio de Pago
ALTER TABLE DATAZO.medio_de_pago 
	ADD CONSTRAINT pk_medio_de_pago PRIMARY KEY (id_medioPago),
	CONSTRAINT fk_medio_de_pago_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.usuario(id_usuario),
	CONSTRAINT fk_medio_de_pago_tipo FOREIGN KEY (id_tipo_medio_pago) REFERENCES DATAZO.tipo_medio_pago(id_tipo_medio_pago)
GO

--Cupon desc
ALTER TABLE DATAZO.cupon_descuento
	ADD CONSTRAINT pk_cupon_descuento PRIMARY KEY (nro, id_usuario),
	CONSTRAINT fk_cupon_descuento_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.usuario(id_usuario)
GO

--Categoria
ALTER TABLE DATAZO.categoria 
	ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria, id_tipo)
GO

--Envio
ALTER TABLE DATAZO.envio 
	ADD CONSTRAINT pk_envio PRIMARY KEY (id_envio), 
	CONSTRAINT fk_envio_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.usuario(id_usuario),
	CONSTRAINT fk_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES DATAZO.repartidor(id_repartidor),
	CONSTRAINT fk_envio_estado FOREIGN KEY (id_estado) REFERENCES DATAZO.estado(id_estado),
	CONSTRAINT fk_envio_medio_pago FOREIGN KEY (id_medioPago) REFERENCES DATAZO.medio_de_pago(id_medioPago),
	-- CONSTRAINT fk_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES direccion(id_direccion),
	CONSTRAINT fk_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES DATAZO.direccion(id_direccion)
GO

--Local
ALTER TABLE DATAZO.local_ 
	ADD CONSTRAINT pk_local_ PRIMARY KEY (id_local),
	CONSTRAINT fk_local_dir FOREIGN KEY (id_direccion) REFERENCES DATAZO.direccion(id_direccion),
	CONSTRAINT fk_local_cat FOREIGN KEY (categoria, tipo) REFERENCES DATAZO.categoria(id_categoria, id_tipo),
	CONSTRAINT fk_local_tipo FOREIGN KEY (tipo) REFERENCES DATAZO.tipo_local(id_tipo)
GO


/*Parte 4*/

CREATE TABLE DATAZO.envio_de_mensajeria(id_envio INT, id_envio_mensajeria DECIMAL(18,0) NOT NULL, km DECIMAL(18,2), tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),
				total_envio_mensajeria decimal(18,2));
CREATE TABLE DATAZO.pedido_productos(id_pedido INT NOT NULL, id_envio INT, id_local INT, tarifa_servicio INT, total_pedido DECIMAL(18,2), pedido_total_cupones DECIMAL(18,2))
CREATE TABLE DATAZO.producto_por_local(codigo_producto NVARCHAR(50) NOT NULL, id_local INT NOT NULL, precio DECIMAL(18,2))
CREATE TABLE DATAZO.horario (id_horario INT NOT NULL, id_local INT, hora_apertuta DECIMAL(18,0), hora_cierre DECIMAL(18,0), id_dia INT);
CREATE TABLE DATAZO.direccionesXpersona (id_persona INT NOT NULL, id_direccion INT NOT NULL)

ALTER TABLE DATAZO.envio_de_mensajeria
	ADD CONSTRAINT pk_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria);
GO
ALTER TABLE DATAZO.envio_de_mensajeria
	ADD CONSTRAINT fK_envio_de_mensajeria_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.envio(id_envio);
GO
ALTER TABLE DATAZO.envio_de_mensajeria
	ADD CONSTRAINT fk_envio_de_mensajria_tipo FOREIGN KEY (tipo_paquete) REFERENCES DATAZO.tipo_paquete(id_tipo)
GO
ALTER TABLE DATAZO.pedido_productos
	ADD CONSTRAINT pk_pedido_productos PRIMARY KEY (id_pedido),
	CONSTRAINT fk_pedido_productos_envio FOREIGN KEY (id_envio) REFERENCES DATAZO.envio(id_envio),
	CONSTRAINT fk_pedido_productos_local FOREIGN KEY (id_local) REFERENCES DATAZO.local_(id_local)
GO
ALTER TABLE DATAZO.producto_por_local
	ADD CONSTRAINT pk_producto_por_local PRIMARY KEY (codigo_producto, id_local),
	CONSTRAINT fk_producto_por_local_producto FOREIGN KEY (codigo_producto) REFERENCES DATAZO.producto(codigo),
	CONSTRAINT fk_producto_por_local_local FOREIGN KEY (id_local) REFERENCES DATAZO.local_(id_local)
GO
ALTER TABLE DATAZO.horario
	ADD CONSTRAINT pk_horario PRIMARY KEY (id_horario),
	CONSTRAINT fk_local FOREIGN KEY (id_local) REFERENCES DATAZO.local_(id_local),
	CONSTRAINT fk_dia FOREIGN KEY (id_dia) REFERENCES DATAZO.dia(id_dia)
GO
ALTER TABLE DATAZO.direccionesXpersona
	ADD CONSTRAINT pk_direcxpersona PRIMARY KEY (id_persona, id_direccion),
	CONSTRAINT fk_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.persona(id_persona),
	CONSTRAINT fk_direccion FOREIGN KEY (id_direccion) REFERENCES DATAZO.direccion(id_direccion)
GO

/*Parte 5*/

CREATE TABLE DATAZO.reclamo (nro_reclamo decimal(18,0) IDENTITY(1,1), id_pedido int, tipo_reclamo int, fecha datetime, descripcion nvarchar(255), fecha_solucion datetime, estado nvarchar(50), solucion nvarchar(255), calificacion decimal(18,0), id_usuario int);
CREATE TABLE DATAZO.producto_por_pedido (id_pedido int NOT NULL, codigo_producto nvarchar(50) NOT NULL, id_local INT NOT NULL, cantidad decimal(18,0), total_producto decimal(18,2));
CREATE TABLE DATAZO.cupon_por_pedido(nro_cupon decimal(18,2) NOT NULL, id_usuario INT NOT NULL, id_pedido INT)

ALTER TABLE DATAZO.reclamo
	ADD CONSTRAINT pk_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido),
	CONSTRAINT fk_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.tipo_reclamo(id_tipo),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.usuario(id_usuario)
GO

ALTER TABLE DATAZO.producto_por_pedido
	ADD CONSTRAINT pk_pedido PRIMARY KEY (id_pedido, codigo_producto),
	CONSTRAINT fk_pedido_ppp FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido),
	CONSTRAINT fk_producto_ppp FOREIGN KEY (codigo_producto, id_local) REFERENCES DATAZO.producto_por_local(codigo_producto, id_local)
GO

ALTER TABLE DATAZO.cupon_por_pedido
	ADD CONSTRAINT pk_cuponXpedido_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXpedidon_cupon_nro_cupon FOREIGN KEY (nro_cupon, id_usuario) REFERENCES DATAZO.cupon_descuento(nro, id_usuario),
	CONSTRAINT fk_cuponXpedidon_cupon_id_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido);
GO

/*Parte 6*/

CREATE TABLE DATAZO.cupon_por_reclamo(nro_cupon decimal(18,2) NOT NULL, id_usuario INT NOT NULL, nro_reclamo decimal(18,0))

ALTER TABLE DATAZO.cupon_por_reclamo
	ADD CONSTRAINT pk_cuponXreclamo_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXreclamo_nro_cupon FOREIGN KEY (nro_cupon, id_usuario) REFERENCES DATAZO.cupon_descuento(nro, id_usuario),
	CONSTRAINT fk_cuponXreclamo_nro_reclamo FOREIGN KEY (nro_reclamo) REFERENCES DATAZO.reclamo(nro_reclamo);
GO

--Migracion

/*Parte 1*/

--PERSONA
INSERT INTO DATAZO.persona (nombre, apellido, DNI, telefono, mail, fecha_nac)
SELECT DISTINCT USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_DNI, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC 
FROM gd_esquema.Maestra WHERE USUARIO_DNI IS NOT NULL
UNION
SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE, OPERADOR_RECLAMO_APELLIDO, OPERADOR_RECLAMO_DNI, OPERADOR_RECLAMO_TELEFONO, OPERADOR_RECLAMO_MAIL, OPERADOR_RECLAMO_FECHA_NAC 
FROM gd_esquema.Maestra WHERE OPERADOR_RECLAMO_DNI IS NOT NULL
UNION
SELECT DISTINCT REPARTIDOR_NOMBRE, REPARTIDOR_APELLIDO, REPARTIDOR_DNI, REPARTIDOR_TELEFONO, REPARTIDOR_EMAIL, REPARTIDOR_FECHA_NAC
FROM gd_esquema.Maestra WHERE REPARTIDOR_DNI IS NOT NULL

--PRODUCTO
INSERT INTO DATAZO.producto (codigo, nombre, descripcion) 
SELECT DISTINCT PRODUCTO_LOCAL_CODIGO, PRODUCTO_LOCAL_NOMBRE, PRODUCTO_LOCAL_DESCRIPCION
FROM gd_esquema.Maestra
WHERE PRODUCTO_LOCAL_CODIGO IS NOT NULL

--TIPO DE RECLAMO
INSERT INTO DATAZO.tipo_reclamo (descripcion) SELECT DISTINCT RECLAMO_TIPO FROM gd_esquema.Maestra WHERE RECLAMO_TIPO IS NOT NULL

--TIPO MEDIO DE PAGO
INSERT INTO DATAZO.tipo_medio_pago (descripcion) SELECT DISTINCT MEDIO_PAGO_TIPO FROM gd_esquema.Maestra

--TIPO DE PAQUETE
INSERT INTO DATAZO.tipo_paquete(tipo, alto_max, ancho_max, largo_max, peso_max, tipo_precio) 
SELECT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO FROM gd_esquema.Maestra 
WHERE PAQUETE_TIPO IS NOT NULL
GROUP BY PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO

-- ESTADO (ENVIO)
INSERT INTO DATAZO.estado (descripcion)
SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
UNION 
SELECT DISTINCT PEDIDO_ESTADO FROM gd_esquema.Maestra WHERE PEDIDO_ESTADO IS NOT NULL

--TIPO DE LOCAL
INSERT INTO DATAZO.tipo_local (descripcion)
SELECT DISTINCT LOCAL_TIPO
FROM gd_esquema.Maestra WHERE LOCAL_TIPO IS NOT NULL


--PROVINCIA

INSERT INTO DATAZO.provincia (nombre_provincia)
SELECT DISTINCT DIRECCION_USUARIO_PROVINCIA  FROM gd_esquema.Maestra WHERE DIRECCION_USUARIO_PROVINCIA IS NOT NULL
UNION SELECT DISTINCT LOCAL_PROVINCIA  FROM gd_esquema.Maestra WHERE LOCAL_PROVINCIA IS NOT NULL
UNION SELECT DISTINCT ENVIO_MENSAJERIA_PROVINCIA FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_PROVINCIA IS NOT NULL

-- TIPO DE MOVILIDAD
INSERT INTO DATAZO.tipo_movilidad (descripcion_movilidad)
SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
FROM gd_esquema.Maestra

-- DIA (LOCAL)
INSERT INTO DATAZO.dia (descripcion)
SELECT DISTINCT HORARIO_LOCAL_DIA
FROM gd_esquema.Maestra
WHERE HORARIO_LOCAL_DIA IS NOT NULL


/*Parte 2*/

--OPERADOR
INSERT INTO DATAZO.operador (id_persona)
SELECT p.id_persona 
FROM DATAZO.persona p
WHERE p.DNI IN (SELECT DISTINCT OPERADOR_RECLAMO_DNI FROM gd_esquema.Maestra)

--USUARIO
INSERT INTO DATAZO.usuario ( id_persona, fecha_registro)
SELECT DISTINCT  p.id_persona, m.USUARIO_FECHA_REGISTRO
FROM DATAZO.persona p JOIN gd_esquema.Maestra m ON p.DNI = m.USUARIO_DNI

--REPARTIDOR 
-- TODO: PONERLE LA LOCALIDAD ACTIVA Y TIPO MOVILIDAD
INSERT INTO DATAZO.repartidor (id_persona)
SELECT DISTINCT p.id_persona
FROM DATAZO.persona p
WHERE p.DNI IN (SELECT DISTINCT REPARTIDOR_DNI FROM gd_esquema.Maestra)

--MEDIOS DE PAGO
INSERT INTO DATAZO.medio_de_pago (id_usuario, id_tipo_medio_pago, nro_tarjeta, marca_tarjeta)
SELECT  u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA
FROM gd_esquema.Maestra m
JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
JOIN DATAZO.usuario u ON u.id_persona = p.id_persona
JOIN DATAZO.tipo_medio_pago tmp ON tmp.descripcion = m.MEDIO_PAGO_TIPO
group by u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA


--CUPONES DE DESCUENTO
INSERT INTO DATAZO.cupon_descuento (nro, id_usuario, monto, fecha_alta, fecha_vencimiento, tipo, usado)
SELECT m.CUPON_NRO, u.id_usuario, CUPON_MONTO, CUPON_FECHA_ALTA, CUPON_FECHA_VENCIMIENTO, CUPON_TIPO, 0
FROM gd_esquema.Maestra m
JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
JOIN DATAZO.usuario u ON u.id_persona = p.id_persona
WHERE CUPON_NRO IS NOT NULL
order BY CUPON_NRO
GO


--LOCALIDADES

INSERT INTO DATAZO.localidad(id_provincia, nombre_localidad)
SELECT DISTINCT p.id_provincia, ENVIO_MENSAJERIA_LOCALIDAD FROM gd_esquema.Maestra m
JOIN DATAZO.provincia p ON m.ENVIO_MENSAJERIA_PROVINCIA = p.nombre_provincia
UNION
SELECT DISTINCT p.id_provincia, DIRECCION_USUARIO_LOCALIDAD FROM gd_esquema.Maestra m
JOIN DATAZO.provincia p ON m.DIRECCION_USUARIO_PROVINCIA = p.nombre_provincia
UNION
SELECT DISTINCT p.id_provincia, LOCAL_LOCALIDAD FROM gd_esquema.Maestra m
JOIN DATAZO.provincia p ON m.LOCAL_PROVINCIA = p.nombre_provincia



INSERT INTO DATAZO.direccion (direccion, localidad)
SELECT  m.ENVIO_MENSAJERIA_DIR_DEST, L.id_localidad FROM gd_esquema.Maestra m
JOIN DATAZO.localidad l ON l.nombre_localidad = m.ENVIO_MENSAJERIA_LOCALIDAD
WHERE ENVIO_MENSAJERIA_DIR_DEST IS NOT NULL
UNION
SELECT  m.ENVIO_MENSAJERIA_DIR_ORIG, L.id_localidad FROM gd_esquema.Maestra m
JOIN DATAZO.localidad l ON l.nombre_localidad = m.ENVIO_MENSAJERIA_LOCALIDAD
WHERE ENVIO_MENSAJERIA_DIR_ORIG IS NOT NULL
UNION
SELECT  m.LOCAL_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m
JOIN DATAZO.localidad l ON l.nombre_localidad = m.LOCAL_LOCALIDAD
WHERE LOCAL_DIRECCION IS NOT NULL
UNION 
SELECT  m.DIRECCION_USUARIO_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m 
JOIN DATAZO.localidad l ON l.nombre_localidad = m.DIRECCION_USUARIO_LOCALIDAD
WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
UNION 
SELECT  m.REPARTIDOR_DIRECION, 1 FROM gd_esquema.Maestra m
WHERE REPARTIDOR_DIRECION IS NOT NULL
-- TODO: PONERLE LA LOCALIDAD AL REPARTIDOR


INSERT INTO DATAZO.direccionesXpersona (id_persona, id_direccion)
SELECT DISTINCT P.id_persona, D.id_direccion FROM gd_esquema.Maestra m
JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
JOIN DATAZO.direccion d ON d.direccion = m.DIRECCION_USUARIO_DIRECCION
WHERE m.USUARIO_DNI IS NOT NULL
GO

/*Parte 3 */

--insert de envio de mensajes
/*TABLA TEMPORAL PARA INSERTAR ENVIOS DE MENSAJERIA*/

SELECT 
 	MASTR.ENVIO_MENSAJERIA_NRO envio_nro,USR.id_usuario [user] , REP.id_repartidor repartidor, EST.id_estado estado, MP.id_medioPago medioPago, MASTR.ENVIO_MENSAJERIA_PRECIO_ENVIO precioEnvio,
	MASTR.ENVIO_MENSAJERIA_PROPINA propina, MASTR.ENVIO_MENSAJERIA_OBSERV observacion, MASTR.ENVIO_MENSAJERIA_FECHA fecha_envio, MASTR.ENVIO_MENSAJERIA_FECHA_ENTREGA fecha_entrega,
	MASTR.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO t_estimado, MASTR.ENVIO_MENSAJERIA_CALIFICACION calificacion, DIR_O.id_direccion dir_origen, DIR_D.id_direccion dir_destino,
	MASTR.ENVIO_MENSAJERIA_KM km, TP.id_tipo tipo_paquete, MASTR.ENVIO_MENSAJERIA_VALOR_ASEGURADO asegurado, MASTR.ENVIO_MENSAJERIA_PRECIO_SEGURO precio_seguro,
	MASTR.ENVIO_MENSAJERIA_TOTAL total_env_msj
INTO DATAZO.[#temporal_envios_msj] 
FROM gd_esquema.Maestra MASTR 
JOIN DATAZO.persona P_USR ON P_USR.DNI = MASTR.USUARIO_DNI
JOIN DATAZO.usuario USR ON USR.id_persona = P_USR.id_persona
JOIN DATAZO.persona P_REP ON P_REP.DNI = MASTR.REPARTIDOR_DNI 
JOIN DATAZO.repartidor REP ON REP.id_persona = P_REP.id_persona
JOIN DATAZO.estado EST ON EST.descripcion = MASTR.ENVIO_MENSAJERIA_ESTADO 
JOIN DATAZO.medio_de_pago MP ON MP.nro_tarjeta = MASTR.MEDIO_PAGO_NRO_TARJETA 
JOIN DATAZO.provincia PROV ON PROV.nombre_provincia = MASTR.ENVIO_MENSAJERIA_PROVINCIA
JOIN DATAZO.localidad LOC ON LOC.nombre_localidad = MASTR.ENVIO_MENSAJERIA_LOCALIDAD AND PROV.id_provincia = LOC.id_provincia
JOIN DATAZO.direccion DIR_O ON DIR_O.direccion = MASTR.ENVIO_MENSAJERIA_DIR_ORIG AND DIR_O.localidad = LOC.id_localidad
JOIN DATAZO.direccion DIR_D ON DIR_D.direccion = MASTR.ENVIO_MENSAJERIA_DIR_DEST AND DIR_D.localidad = LOC.id_localidad
JOIN DATAZO.tipo_paquete TP ON TP.tipo = MASTR.PAQUETE_TIPO
WHERE MASTR.ENVIO_MENSAJERIA_NRO IS NOT NULL


/*ENVIO (MSJ)*/
INSERT INTO DATAZO.envio(id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
									fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
SELECT tmp.[user], tmp.repartidor, tmp.estado, tmp.medioPago, tmp.precioEnvio, tmp.propina, tmp.observacion, tmp.fecha_envio, tmp.fecha_entrega, tmp.t_estimado, tmp.calificacion, tmp.dir_origen, tmp.dir_destino  FROM DATAZO.[#temporal_envios_msj] tmp


/*ENVIO DE MENSAJERIA*/
INSERT INTO DATAZO.envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria) 
SELECT tmp.[envio_nro], env.id_envio, tmp.km, tmp.tipo_paquete, tmp.asegurado, tmp.precio_seguro, tmp.total_env_msj  FROM DATAZO.[#temporal_envios_msj] tmp
JOIN DATAZO.envio env ON env.id_usuario = tmp.[user] AND env.id_repartidor = tmp.repartidor AND env.dir_origen = tmp.dir_origen AND tmp.dir_destino = env.dir_destino

drop table DATAZO.[#temporal_envios_msj];


/*LOCALES*/
INSERT INTO DATAZO.local_(id_direccion, nombre, descripcion, tipo)
SELECT DISTINCT DIR.id_direccion, MASTR.LOCAL_NOMBRE, MASTR.LOCAL_DESCRIPCION, TP.id_tipo
FROM gd_esquema.Maestra MASTR
JOIN DATAZO.tipo_local TP ON TP.descripcion = MASTR.LOCAL_TIPO
JOIN DATAZO.provincia PROV ON PROV.nombre_provincia = MASTR.LOCAL_PROVINCIA
JOIN DATAZO.localidad LOCALI ON LOCALI.nombre_localidad = MASTR.LOCAL_LOCALIDAD AND PROV.id_provincia = LOCALI.id_provincia
JOIN DATAZO.direccion DIR ON DIR.direccion = MASTR.LOCAL_DIRECCION AND DIR.localidad = LOCALI.id_localidad
WHERE MASTR.LOCAL_NOMBRE IS NOT NULL


--insert de pedidos de productos

SELECT DISTINCT
 	USR.id_usuario [user], REP.id_repartidor repartidor, EST.id_estado estado, MP.id_medioPago medioPago, MASTR.PEDIDO_PRECIO_ENVIO precioEnvio,
	MASTR.PEDIDO_PROPINA propina, MASTR.PEDIDO_OBSERV observacion, MASTR.PEDIDO_FECHA fecha_pedido, MASTR.PEDIDO_FECHA_ENTREGA fecha_entrega,
	MASTR.PEDIDO_TIEMPO_ESTIMADO_ENTREGA t_estimado, MASTR.PEDIDO_CALIFICACION calificacion, LOC.id_direccion direccion_orig, DIR.id_direccion direccion_dest,
	MASTR.PEDIDO_NRO pedido_nro, LOC.id_local localId, MASTR.PEDIDO_TARIFA_SERVICIO tarifa, 
	(MASTR.PEDIDO_TOTAL_PRODUCTOS + MASTR.PEDIDO_PRECIO_ENVIO + MASTR.PEDIDO_PROPINA + MASTR.PEDIDO_TARIFA_SERVICIO - MASTR.PEDIDO_TOTAL_CUPONES ) totalPedido,
	MASTR.PEDIDO_TOTAL_CUPONES cupones
INTO DATAZO.[#temporal_pedido_productos] 
FROM gd_esquema.Maestra MASTR 
-- usuario
JOIN DATAZO.persona P_USR ON P_USR.DNI = MASTR.USUARIO_DNI
JOIN DATAZO.usuario USR ON USR.id_persona = P_USR.id_persona
-- repartidor
JOIN DATAZO.persona P_REP ON P_REP.DNI = MASTR.REPARTIDOR_DNI 
JOIN DATAZO.repartidor REP ON REP.id_persona = P_REP.id_persona
-- otros datos
JOIN DATAZO.estado EST ON EST.descripcion = MASTR.PEDIDO_ESTADO 
JOIN DATAZO.medio_de_pago MP ON MP.nro_tarjeta = MASTR.MEDIO_PAGO_NRO_TARJETA 
-- direccion origen
JOIN DATAZO.local_ LOC ON LOC.nombre = MASTR.LOCAL_NOMBRE
-- direccion destino
JOIN DATAZO.provincia PROV ON PROV.nombre_provincia = MASTR.DIRECCION_USUARIO_PROVINCIA
JOIN DATAZO.localidad LOCALI ON LOCALI.nombre_localidad = MASTR.DIRECCION_USUARIO_LOCALIDAD AND PROV.id_provincia = LOCALI.id_provincia
JOIN DATAZO.direccion DIR ON DIR.direccion = MASTR.DIRECCION_USUARIO_DIRECCION AND DIR.localidad = LOCALI.id_localidad
WHERE MASTR.PEDIDO_NRO IS NOT NULL;

-- SELECT * from DATAZO.[#temporal_pedido_productos] ;
-- insert de envio
INSERT INTO DATAZO.envio(id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
									fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
SELECT DISTINCT TMP.[user], TMP.repartidor, TMP.estado, TMP.medioPago, TMP.precioEnvio, TMP.propina, TMP.observacion, TMP.fecha_pedido,
		TMP.fecha_entrega, TMP.t_estimado, TMP.calificacion, TMP.direccion_orig, TMP.direccion_dest
FROM DATAZO.[#temporal_pedido_productos] TMP;

-- insert de producto
INSERT INTO DATAZO.pedido_productos (id_pedido, id_envio, id_local, tarifa_servicio, total_pedido, pedido_total_cupones)
SELECT DISTINCT TMP.pedido_nro, ENV.id_envio, TMP.localId, TMP.tarifa, TMP.totalPedido, TMP.cupones  FROM DATAZO.[#temporal_pedido_productos] TMP
JOIN DATAZO.envio ENV ON  ENV.fecha_pedido = TMP.fecha_pedido AND ENV.id_usuario = TMP.[user] AND ENV.id_repartidor = TMP.repartidor
;

-- select * from DATAZO.envio

-- SELECT TMP.pedido_nro,count(env.id_envio), TMP.fecha_pedido FROM DATAZO.[#temporal_pedido_productos] TMP
-- JOIN DATAZO.envio ENV ON  ENV.fecha_pedido = TMP.fecha_pedido AND ENV.id_usuario = TMP.[user] AND ENV.id_repartidor = TMP.repartidor
-- GROUP BY TMP.pedido_nro, TMP.fecha_pedido ORDER BY 2 DESC


-- select * from DATAZO.[#temporal_pedido_productos] WHERE pedido_nro = 42628
-- SELECT * FROM DATAZO.envio WHERE fecha_pedido = '2023-10-08 19:00:00.960'

-- SELECT fecha_pedido, COUNT(id_envio) FROM DATAZO.envio GROUP BY fecha_pedido ORDER BY 2 DESC



DROP TABLE DATAZO.[#temporal_pedido_productos] 


/*Parte 4*/
 /*
INSERT INTO DATAZO.producto_por_local (codigo_producto, id_local, precio)
SELECT  p.codigo,l.id_local, PRODUCTO_LOCAL_PRECIO
FROM gd_esquema.Maestra
JOIN DATAZO.producto p ON p.codigo =  PRODUCTO_LOCAL_CODIGO
JOIN DATAZO.local_ l ON l.nombre =  LOCAL_NOMBRE

INSERT INTO DATAZO.horario ( id_local, hora_apertuta, hora_cierre, id_dia)
SELECT  l.id_local, HORARIO_LOCAL_HORA_APERTURA, HORARIO_LOCAL_HORA_CIERRE, d.id_dia
FROM gd_esquema.Maestra
JOIN DATAZO.local_ l ON l.nombre =  LOCAL_NOMBRE
JOIN DATAZO.dia d ON d.descripcion =  HORARIO_LOCAL_DIA*/

/*Parte 5*/
/*
INSERT INTO DATAZO.reclamo (nro_reclamo, id_pedido, tipo_reclamo, fecha, descripcion, fecha_solucion, estado, solucion, calificacion, id_usuario)
SELECT RECLAMO_NRO, pp.id_pedido, tr.id_tipo, RECLAMO_FECHA, RECLAMO_DESCRIPCION, RECLAMO_FECHA_SOLUCION, RECLAMO_ESTADO, RECLAMO_SOLUCION, RECLAMO_CALIFICACION, u.id_usuario
FROM gd_esquema.Maestra
JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO -- no se si esta bien este
JOIN DATAZO.tipo_reclamo as tr ON tr.descripcion = RECLAMO_TIPO
JOIN DATAZO.persona as p ON  p.nombre = USUARIO_NOMBRE 
JOIN DATAZO.usuario as u ON u.id_usuario = p.id_persona

INSERT INTO DATAZO.cupon_por_pedido (nro_cupon, id_pedido)
SELECT cd.nro, pp.id_pedido
FROM gd_esquema.Maestra
JOIN DATAZO.cupon_descuento cd ON cd.nro =  CUPON_NRO 
JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO

INSERT INTO DATAZO.producto_por_pedido (id_pedido, codigo_producto, id_local, cantidad, total_producto)
SELECT  pp.id_pedido, p.codigo, l.id_local, PRODUCTO_CANTIDAD, PRODUCTO_LOCAL_PRECIO --no se si esta bien todo esto en gral, mas puntualmente el ultimo
FROM gd_esquema.Maestra
JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO
JOIN DATAZO.producto p ON p.codigo =  PRODUCTO_LOCAL_CODIGO
JOIN DATAZO.local_ l ON l.nombre =  LOCAL_NOMBRE
*/
/*Parte 6*/
/*
INSERT INTO DATAZO.cupon_por_reclamo (nro_cupon, nro_reclamo)
SELECT cd.nro, r.nro_reclamo
FROM gd_esquema.Maestra
JOIN DATAZO.cupon_descuento cd ON cd.nro =  CUPON_NRO 
JOIN DATAZO.reclamo r ON r.nro_reclamo = RECLAMO_NRO -- o seria CUPON_NRO o CUPON_RECLAMO_NRO?*/