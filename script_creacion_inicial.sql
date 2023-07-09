
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

-- DROP PROCEDURES
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_personas')
	DROP PROCEDURE DATAZO.migrar_personas
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_productos')
	DROP PROCEDURE DATAZO.migrar_productos
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_reclamo')
	DROP PROCEDURE DATAZO.migrar_tipo_reclamo
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_medio_pago')
	DROP PROCEDURE DATAZO.migrar_tipo_medio_pago
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_de_paquete')
	DROP PROCEDURE DATAZO.migrar_tipo_de_paquete
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_estado')
	DROP PROCEDURE DATAZO.migrar_estado
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_de_local')
	DROP PROCEDURE DATAZO.migrar_tipos_de_local
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_provincias')
	DROP PROCEDURE DATAZO.migrar_provincias
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipo_movilidad')
	DROP PROCEDURE DATAZO.migrar_tipo_movilidad
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_dia')
	DROP PROCEDURE DATAZO.migrar_dia
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_operadores')
	DROP PROCEDURE DATAZO.migrar_operadores
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_usuarios')
	DROP PROCEDURE DATAZO.migrar_usuarios
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_repartidores')
	DROP PROCEDURE DATAZO.migrar_repartidores
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_medios_de_pago')
	DROP PROCEDURE DATAZO.migrar_medios_de_pago
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_cupones_de_descuento')
	DROP PROCEDURE DATAZO.migrar_cupones_de_descuento
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_localidades')
	DROP PROCEDURE DATAZO.migrar_localidades
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_direcciones')
	DROP PROCEDURE DATAZO.migrar_direcciones
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_direcciones_por_persona')
	DROP PROCEDURE DATAZO.migrar_direcciones_por_persona
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_envios_de_mensajeria')
	DROP PROCEDURE DATAZO.migrar_envios_de_mensajeria
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_locales')
	DROP PROCEDURE DATAZO.migrar_locales
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_pedidos_de_productos')
	DROP PROCEDURE DATAZO.migrar_pedidos_de_productos
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_producto_por_local')
	DROP PROCEDURE DATAZO.migrar_producto_por_local
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_horario')
	DROP PROCEDURE DATAZO.migrar_horario
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_reclamo')
	DROP PROCEDURE DATAZO.migrar_reclamo
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_cupon_por_pedido')
	DROP PROCEDURE DATAZO.migrar_cupon_por_pedido
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_producto_por_pedido')
	DROP PROCEDURE DATAZO.migrar_producto_por_pedido
GO
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_cupones_descuento_por_reclamo')
	DROP PROCEDURE DATAZO.migrar_cupones_descuento_por_reclamo
GO

-- SCHEMA
-- IF EXISTS (SELECT * FROM sys.schemas WHERE [name] = 'DATAZO')
-- 	DROP SCHEMA DATAZO
-- GO

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

--operador
ALTER TABLE DATAZO.operador 
	ADD CONSTRAINT pk_operador PRIMARY KEY (id_operador),
	CONSTRAINT fk_operador_persona FOREIGN KEY (id_persona) REFERENCES DATAZO.persona(id_persona)
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
CREATE TABLE DATAZO.cupon_descuento ( id_cupon INT IDENTITY(1,1) NOT NULL, nro DECIMAL(18,0) NOT NULL, id_usuario INT NOT NULL, monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50));
CREATE TABLE DATAZO.categoria (id_categoria INT IDENTITY(1,1) NOT NULL, id_tipo INT NOT NULL, descripcion VARCHAR(255));
CREATE TABLE DATAZO.envio (id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_tipo_movilidad INT NULL, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
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
	ADD CONSTRAINT pk_cupon_descuento PRIMARY KEY (id_cupon),
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
	CONSTRAINT fk_envio_tipo_movilidad FOREIGN KEY (id_tipo_movilidad) REFERENCES DATAZO.tipo_movilidad(id_tipo_movilidad),
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
CREATE TABLE DATAZO.horario (id_horario INT NOT NULL IDENTITY(1,1), id_local INT, hora_apertuta DECIMAL(18,0), hora_cierre DECIMAL(18,0), id_dia INT);
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

CREATE TABLE DATAZO.reclamo (nro_reclamo decimal(18,0) NOT NULL, id_pedido int, tipo_reclamo int, fecha datetime, descripcion nvarchar(255), fecha_solucion datetime, estado nvarchar(50), solucion nvarchar(255), calificacion decimal(18,0), id_usuario int, id_operador int);
CREATE TABLE DATAZO.producto_por_pedido ( id_productoXpedido INT IDENTITY(1,1),id_pedido int NOT NULL, codigo_producto nvarchar(50) NOT NULL, id_local INT NOT NULL, cantidad decimal(18,0), total_producto decimal(18,2));
CREATE TABLE DATAZO.cupon_por_pedido(nro_cupon decimal(18,0) NOT NULL, id_pedido INT, id_cupon INT)

ALTER TABLE DATAZO.reclamo
	ADD CONSTRAINT pk_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido),
	CONSTRAINT fk_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES DATAZO.tipo_reclamo(id_tipo),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES DATAZO.usuario(id_usuario),
	CONSTRAINT fk_operador FOREIGN KEY (id_operador) REFERENCES DATAZO.operador(id_operador)
GO

ALTER TABLE DATAZO.producto_por_pedido
	ADD CONSTRAINT pk_pedido PRIMARY KEY (id_productoXpedido),
	CONSTRAINT fk_pedido_ppp FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido),
	CONSTRAINT fk_producto_ppp FOREIGN KEY (codigo_producto, id_local) REFERENCES DATAZO.producto_por_local(codigo_producto, id_local)
GO

ALTER TABLE DATAZO.cupon_por_pedido
	ADD CONSTRAINT pk_cuponXpedido_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXpedidon_cupon_id_pedido FOREIGN KEY (id_pedido) REFERENCES DATAZO.pedido_productos(id_pedido);
GO

/*Parte 6*/

CREATE TABLE DATAZO.cupon_por_reclamo( id_cupon INT NOT NULL, nro_cupon decimal(18,0) NOT NULL, id_usuario INT NOT NULL, nro_reclamo decimal(18,0))

ALTER TABLE DATAZO.cupon_por_reclamo
	ADD CONSTRAINT pk_cuponXreclamo_nro_cupon PRIMARY KEY (id_cupon),
	CONSTRAINT fk_cuponXreclamo_nro_cupon FOREIGN KEY (id_cupon) REFERENCES DATAZO.cupon_descuento(id_cupon),
	CONSTRAINT fk_cuponXreclamo_nro_reclamo FOREIGN KEY (nro_reclamo) REFERENCES DATAZO.reclamo(nro_reclamo);
GO

--Migracion

/*Parte 1*/


--PERSONA
CREATE PROCEDURE DATAZO.migrar_personas
AS
BEGIN
	INSERT INTO DATAZO.persona (nombre, apellido, DNI, telefono, mail, fecha_nac)
	SELECT DISTINCT USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_DNI, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC 
	FROM gd_esquema.Maestra WHERE USUARIO_DNI IS NOT NULL
	UNION
	SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE, OPERADOR_RECLAMO_APELLIDO, OPERADOR_RECLAMO_DNI, OPERADOR_RECLAMO_TELEFONO, OPERADOR_RECLAMO_MAIL, OPERADOR_RECLAMO_FECHA_NAC 
	FROM gd_esquema.Maestra WHERE OPERADOR_RECLAMO_DNI IS NOT NULL
	UNION
	SELECT DISTINCT REPARTIDOR_NOMBRE, REPARTIDOR_APELLIDO, REPARTIDOR_DNI, REPARTIDOR_TELEFONO, REPARTIDOR_EMAIL, REPARTIDOR_FECHA_NAC
	FROM gd_esquema.Maestra WHERE REPARTIDOR_DNI IS NOT NULL

	PRINT 'Personas migradas'
END
GO

--PRODUCTO

CREATE PROCEDURE DATAZO.migrar_productos
AS
BEGIN
	INSERT INTO DATAZO.producto (codigo, nombre, descripcion) 
	SELECT DISTINCT PRODUCTO_LOCAL_CODIGO, PRODUCTO_LOCAL_NOMBRE, PRODUCTO_LOCAL_DESCRIPCION
	FROM gd_esquema.Maestra
	WHERE PRODUCTO_LOCAL_CODIGO IS NOT NULL
	PRINT 'productos migrados'
END
GO

--TIPO DE RECLAMO

CREATE PROCEDURE DATAZO.migrar_tipo_reclamo
AS
BEGIN
	INSERT INTO DATAZO.tipo_reclamo (descripcion) SELECT DISTINCT RECLAMO_TIPO FROM gd_esquema.Maestra WHERE RECLAMO_TIPO IS NOT NULL
	PRINT 'tipo reclamo migrado'
END
GO

--TIPO MEDIO DE PAGO

CREATE PROCEDURE DATAZO.migrar_tipo_medio_pago
AS
BEGIN
	INSERT INTO DATAZO.tipo_medio_pago (descripcion) SELECT DISTINCT MEDIO_PAGO_TIPO FROM gd_esquema.Maestra

	PRINT 'tipo medio pago migrado'
END
GO

--TIPO DE PAQUETE

CREATE PROCEDURE DATAZO.migrar_tipo_de_paquete
AS
BEGIN
	INSERT INTO DATAZO.tipo_paquete(tipo, alto_max, ancho_max, largo_max, peso_max, tipo_precio) 
	SELECT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO FROM gd_esquema.Maestra 
	WHERE PAQUETE_TIPO IS NOT NULL
	GROUP BY PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO

	PRINT 'tipo paquete migrado'
END
GO

-- ESTADO (ENVIO)

CREATE PROCEDURE DATAZO.migrar_estado
AS
BEGIN
	INSERT INTO DATAZO.estado (descripcion)
	SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
	FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
	UNION 
	SELECT DISTINCT PEDIDO_ESTADO FROM gd_esquema.Maestra WHERE PEDIDO_ESTADO IS NOT NULL

	PRINT 'estado migrado'
END
GO
--TIPO DE LOCAL

CREATE PROCEDURE DATAZO.migrar_tipos_de_local
AS
BEGIN
	INSERT INTO DATAZO.tipo_local (descripcion)
	SELECT DISTINCT LOCAL_TIPO
	FROM gd_esquema.Maestra WHERE LOCAL_TIPO IS NOT NULL
	PRINT 'tipos de local migrado'
END	
GO	


--PROVINCIA

CREATE PROCEDURE DATAZO.migrar_provincias
AS
BEGIN
	INSERT INTO DATAZO.provincia (nombre_provincia)
	SELECT DISTINCT DIRECCION_USUARIO_PROVINCIA  FROM gd_esquema.Maestra WHERE DIRECCION_USUARIO_PROVINCIA IS NOT NULL
	UNION SELECT DISTINCT LOCAL_PROVINCIA  FROM gd_esquema.Maestra WHERE LOCAL_PROVINCIA IS NOT NULL
	UNION SELECT DISTINCT ENVIO_MENSAJERIA_PROVINCIA FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_PROVINCIA IS NOT NULL

	PRINT 'provincias migradas'
END
GO


-- TIPO DE MOVILIDAD

CREATE PROCEDURE DATAZO.migrar_tipo_movilidad
AS
BEGIN
	INSERT INTO DATAZO.tipo_movilidad (descripcion_movilidad)
	SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
	FROM gd_esquema.Maestra

	PRINT 'tipo de movilidad migrado'
END
GO


-- DIA (LOCAL)

CREATE PROCEDURE DATAZO.migrar_dia
AS
BEGIN
	INSERT INTO DATAZO.dia (descripcion)
	SELECT DISTINCT HORARIO_LOCAL_DIA
	FROM gd_esquema.Maestra
	WHERE HORARIO_LOCAL_DIA IS NOT NULL

	PRINT 'dia migrado'
END
GO


/*Parte 2*/

--OPERADOR

CREATE PROCEDURE DATAZO.migrar_operadores
AS
BEGIN
	INSERT INTO DATAZO.operador (id_persona)
	SELECT p.id_persona 
	FROM DATAZO.persona p
	WHERE p.DNI IN (SELECT DISTINCT OPERADOR_RECLAMO_DNI FROM gd_esquema.Maestra)
	
	PRINT 'operadores migrados'
END
GO


--USUARIO

CREATE PROCEDURE DATAZO.migrar_usuarios
AS
BEGIN
	INSERT INTO DATAZO.usuario ( id_persona, fecha_registro)
	SELECT DISTINCT  p.id_persona, m.USUARIO_FECHA_REGISTRO
	FROM DATAZO.persona p JOIN gd_esquema.Maestra m ON p.DNI = m.USUARIO_DNI

	PRINT 'usuarios migrados'
END
GO


--REPARTIDOR 

GO

CREATE PROCEDURE DATAZO.migrar_repartidores
AS
BEGIN

	SELECT *
	-- de la union de ambos le agrego el row_number segun la fecha para despues obtener la ultima de entre las dos
		,ROW_NUMBER() OVER ( PARTITION BY ultima_localidad.REPARTIDOR_DNI ORDER BY ultima_localidad.FECHA DESC) AS row_num
		INTO DATAZO.#ULTIMOS_ENVIOS_Y_PEDIDOS
		FROM(
			-- selecciono todos los ultimos pedidos de mercaderia para cada repartidor
			select MASTR.REPARTIDOR_DNI, MASTR.LOCAL_LOCALIDAD LOCALIDAD, MASTR.LOCAL_PROVINCIA PROVINCIA, MASTR.PEDIDO_FECHA FECHA, MASTR.REPARTIDOR_TIPO_MOVILIDAD MOVILIDAD
			FROM gd_esquema.Maestra MASTR 
			join (
				-- selecciono el ultimo pedido de cada repartidor y la joineo por fecha y dni
				SELECT
					MAX(PEDIDO_FECHA) max_fecha, REPARTIDOR_DNI
				FROM gd_esquema.Maestra
				group BY REPARTIDOR_DNI
			) ultimos_pedidos
			ON ultimos_pedidos.max_fecha = PEDIDO_FECHA AND ultimos_pedidos.REPARTIDOR_DNI = mastr.REPARTIDOR_DNI
			UNION
			-- selecciono todos los ultimos envios de mensajeria para cada repartidor
			SELECT MASTR.REPARTIDOR_DNI, MASTR.ENVIO_MENSAJERIA_LOCALIDAD LOCALIDAD, MASTR.ENVIO_MENSAJERIA_PROVINCIA PROVINCIA, MASTR.ENVIO_MENSAJERIA_FECHA FECHA, MASTR.REPARTIDOR_TIPO_MOVILIDAD MOVILIDAD
			FROM gd_esquema.Maestra MASTR 
			JOIN (
				-- selecciono el ultimo pedido de cada repartidor y la joineo por fecha y dni
				SELECT
					MAX(ENVIO_MENSAJERIA_FECHA) max_fecha, REPARTIDOR_DNI
				FROM gd_esquema.Maestra
				GROUP BY REPARTIDOR_DNI
			) ultimos_envios
			ON ultimos_envios.max_fecha = ENVIO_MENSAJERIA_FECHA AND ultimos_envios.REPARTIDOR_DNI = mastr.REPARTIDOR_DNI
		) ultima_localidad
	

	INSERT INTO DATAZO.repartidor (id_persona, tipo_movilidad, localidad_activa )
	SELECT DISTINCT  P.id_persona, TM.id_tipo_movilidad, LOC.id_localidad
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.persona p ON p.DNI = MASTR.REPARTIDOR_DNI
	JOIN DATAZO.#ULTIMOS_ENVIOS_Y_PEDIDOS  TMP ON TMP.REPARTIDOR_DNI = MASTR.REPARTIDOR_DNI
	JOIN DATAZO.provincia PR ON PR.nombre_provincia = TMP.PROVINCIA
	JOIN DATAZO.localidad LOC ON LOC.id_provincia = PR.id_provincia AND LOC.nombre_localidad = TMP.LOCALIDAD
	JOIN DATAZO.tipo_movilidad TM ON TM.descripcion_movilidad = TMP.MOVILIDAD
	WHERE TMP.row_num = 1
	

	DROP TABLE DATAZO.#ULTIMOS_ENVIOS_Y_PEDIDOS
	PRINT 'repartidores migrados'
END
GO


--MEDIOS DE PAGO

CREATE PROCEDURE DATAZO.migrar_medios_de_pago
AS
BEGIN

	INSERT INTO DATAZO.medio_de_pago (id_usuario, id_tipo_medio_pago, nro_tarjeta, marca_tarjeta)
	SELECT  u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA
	FROM gd_esquema.Maestra m
	JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
	JOIN DATAZO.usuario u ON u.id_persona = p.id_persona
	JOIN DATAZO.tipo_medio_pago tmp ON tmp.descripcion = m.MEDIO_PAGO_TIPO
	GROUP BY u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA
	PRINT 'medios de pago migrados'
END
GO


--CUPONES DE DESCUENTO

CREATE PROCEDURE DATAZO.migrar_cupones_de_descuento
AS
BEGIN
	INSERT INTO DATAZO.cupon_descuento (nro, id_usuario, monto, fecha_alta, fecha_vencimiento, tipo)
	SELECT m.CUPON_NRO, u.id_usuario, CUPON_MONTO, CUPON_FECHA_ALTA, CUPON_FECHA_VENCIMIENTO, CUPON_TIPO
	FROM gd_esquema.Maestra m
	JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
	JOIN DATAZO.usuario u ON u.id_persona = p.id_persona
	WHERE CUPON_NRO IS NOT NULL
	PRINT 'cupones de descuento migrados'
END
GO


--LOCALIDADES


CREATE PROCEDURE DATAZO.migrar_localidades
AS
BEGIN

	INSERT INTO DATAZO.localidad(id_provincia, nombre_localidad)(
	SELECT DISTINCT p.id_provincia, ENVIO_MENSAJERIA_LOCALIDAD FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON m.ENVIO_MENSAJERIA_PROVINCIA = p.nombre_provincia
	UNION
	SELECT DISTINCT p.id_provincia, DIRECCION_USUARIO_LOCALIDAD FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON m.DIRECCION_USUARIO_PROVINCIA = p.nombre_provincia
	UNION
	SELECT DISTINCT p.id_provincia, LOCAL_LOCALIDAD FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON m.LOCAL_PROVINCIA = p.nombre_provincia)
	PRINT 'localidades migradas'
END
GO

go
CREATE PROCEDURE DATAZO.migrar_direcciones
AS
BEGIN



	INSERT INTO DATAZO.direccion (direccion, localidad)
	SELECT DISTINCT  m.ENVIO_MENSAJERIA_DIR_DEST, L.id_localidad FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON p.nombre_provincia = ENVIO_MENSAJERIA_PROVINCIA
	JOIN DATAZO.localidad l ON l.nombre_localidad = m.ENVIO_MENSAJERIA_LOCALIDAD AND l.id_provincia = P.id_provincia
	WHERE ENVIO_MENSAJERIA_DIR_DEST IS NOT NULL
	UNION
	SELECT DISTINCT  m.ENVIO_MENSAJERIA_DIR_ORIG, L.id_localidad FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON p.nombre_provincia = ENVIO_MENSAJERIA_PROVINCIA
	JOIN DATAZO.localidad l ON l.nombre_localidad = m.ENVIO_MENSAJERIA_LOCALIDAD AND l.id_provincia = P.id_provincia
	WHERE ENVIO_MENSAJERIA_DIR_ORIG IS NOT NULL
	UNION
	SELECT DISTINCT  m.LOCAL_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m
	JOIN DATAZO.provincia p ON p.nombre_provincia = LOCAL_PROVINCIA
	JOIN DATAZO.localidad l ON l.nombre_localidad = m.LOCAL_LOCALIDAD AND l.id_provincia = P.id_provincia
	WHERE LOCAL_DIRECCION IS NOT NULL
	UNION 
	SELECT DISTINCT  m.DIRECCION_USUARIO_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m 
	JOIN DATAZO.provincia p ON p.nombre_provincia = DIRECCION_USUARIO_PROVINCIA
	JOIN DATAZO.localidad l ON l.nombre_localidad = m.DIRECCION_USUARIO_LOCALIDAD AND l.id_provincia = P.id_provincia
	WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
	UNION 
	SELECT DISTINCT m.REPARTIDOR_DIRECION, NULL FROM gd_esquema.Maestra m
	WHERE REPARTIDOR_DIRECION IS NOT NULL


	
	PRINT 'direcciones migradas'
END
GO




CREATE PROCEDURE DATAZO.migrar_direcciones_por_persona
AS
BEGIN
	INSERT INTO DATAZO.direccionesXpersona (id_persona, id_direccion)
	SELECT DISTINCT P.id_persona, D.id_direccion FROM gd_esquema.Maestra m
	JOIN DATAZO.persona p ON p.DNI = m.USUARIO_DNI
	JOIN DATAZO.direccion d ON d.direccion = m.DIRECCION_USUARIO_DIRECCION
	WHERE m.USUARIO_DNI IS NOT NULL
	PRINT 'direcciones por persona migradas'
	
END
GO



/*Parte 3 */

--insert de envio de mensajes

CREATE PROCEDURE DATAZO.migrar_envios_de_mensajeria
AS
BEGIN
	/*TABLA TEMPORAL PARA INSERTAR ENVIOS DE MENSAJERIA*/

	SELECT 
		MASTR.ENVIO_MENSAJERIA_NRO envio_nro,USR.id_usuario [user] , REP.id_repartidor repartidor, EST.id_estado estado, MP.id_medioPago medioPago, MASTR.ENVIO_MENSAJERIA_PRECIO_ENVIO precioEnvio,
		MASTR.ENVIO_MENSAJERIA_PROPINA propina, MASTR.ENVIO_MENSAJERIA_OBSERV observacion, MASTR.ENVIO_MENSAJERIA_FECHA fecha_envio, MASTR.ENVIO_MENSAJERIA_FECHA_ENTREGA fecha_entrega,
		MASTR.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO t_estimado, MASTR.ENVIO_MENSAJERIA_CALIFICACION calificacion, DIR_O.id_direccion dir_origen, DIR_D.id_direccion dir_destino,
		MASTR.ENVIO_MENSAJERIA_KM km, TP.id_tipo tipo_paquete, MASTR.ENVIO_MENSAJERIA_VALOR_ASEGURADO asegurado, MASTR.ENVIO_MENSAJERIA_PRECIO_SEGURO precio_seguro,
		MASTR.ENVIO_MENSAJERIA_TOTAL total_env_msj, TM.id_tipo_movilidad tipo_movilidad
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
	JOIN DATAZO.tipo_movilidad TM ON TM.descripcion_movilidad = MASTR.REPARTIDOR_TIPO_MOVILIDAD
	WHERE MASTR.ENVIO_MENSAJERIA_NRO IS NOT NULL
	
-- (37147
	/*ENVIO (MSJ)*/
	INSERT INTO DATAZO.envio(id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
										fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino, id_tipo_movilidad)
	SELECT tmp.[user], tmp.repartidor, tmp.estado, tmp.medioPago, tmp.precioEnvio, tmp.propina, tmp.observacion, tmp.fecha_envio, 
	tmp.fecha_entrega, tmp.t_estimado, tmp.calificacion, tmp.dir_origen, tmp.dir_destino, tmp.tipo_movilidad 
	FROM DATAZO.[#temporal_envios_msj] tmp

	/*ENVIO DE MENSAJERIA*/
	INSERT INTO DATAZO.envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria) 
	SELECT tmp.[envio_nro], env.id_envio, tmp.km, tmp.tipo_paquete, tmp.asegurado, tmp.precio_seguro, tmp.total_env_msj  FROM DATAZO.[#temporal_envios_msj] tmp
	JOIN DATAZO.envio env ON env.id_usuario = tmp.[user] AND env.id_repartidor = tmp.repartidor AND env.dir_origen = tmp.dir_origen AND tmp.dir_destino = env.dir_destino
	drop table DATAZO.[#temporal_envios_msj];

	PRINT 'envio de mensajeria migrados'
END
GO



/*LOCALES*/

CREATE PROCEDURE DATAZO.migrar_locales
AS
BEGIN
	INSERT INTO DATAZO.local_(id_direccion, nombre, descripcion, tipo)
	SELECT DISTINCT DIR.id_direccion, MASTR.LOCAL_NOMBRE, MASTR.LOCAL_DESCRIPCION, TP.id_tipo
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.tipo_local TP ON TP.descripcion = MASTR.LOCAL_TIPO
	JOIN DATAZO.provincia PROV ON PROV.nombre_provincia = MASTR.LOCAL_PROVINCIA
	JOIN DATAZO.localidad LOCALI ON LOCALI.nombre_localidad = MASTR.LOCAL_LOCALIDAD AND PROV.id_provincia = LOCALI.id_provincia
	JOIN DATAZO.direccion DIR ON DIR.direccion = MASTR.LOCAL_DIRECCION AND DIR.localidad = LOCALI.id_localidad
	WHERE MASTR.LOCAL_NOMBRE IS NOT NULL
	PRINT 'locales migrados'
END
GO


--insert de pedidos de productos


CREATE PROCEDURE DATAZO.migrar_pedidos_de_productos
AS
BEGIN
	SELECT DISTINCT
		USR.id_usuario [user], REP.id_repartidor repartidor, EST.id_estado estado, MP.id_medioPago medioPago, MASTR.PEDIDO_PRECIO_ENVIO precioEnvio,
		MASTR.PEDIDO_PROPINA propina, MASTR.PEDIDO_OBSERV observacion, MASTR.PEDIDO_FECHA fecha_pedido, MASTR.PEDIDO_FECHA_ENTREGA fecha_entrega,
		MASTR.PEDIDO_TIEMPO_ESTIMADO_ENTREGA t_estimado, MASTR.PEDIDO_CALIFICACION calificacion, LOC.id_direccion direccion_orig, DIR.id_direccion direccion_dest,
		MASTR.PEDIDO_NRO pedido_nro, LOC.id_local localId, MASTR.PEDIDO_TARIFA_SERVICIO tarifa, 
		(MASTR.PEDIDO_TOTAL_PRODUCTOS + MASTR.PEDIDO_PRECIO_ENVIO + MASTR.PEDIDO_PROPINA + MASTR.PEDIDO_TARIFA_SERVICIO - MASTR.PEDIDO_TOTAL_CUPONES ) totalPedido,
		MASTR.PEDIDO_TOTAL_CUPONES cupones,
		TM.id_tipo_movilidad tipo_movilidad
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
	JOIN DATAZO.tipo_movilidad TM ON TM.descripcion_movilidad = MASTR.REPARTIDOR_TIPO_MOVILIDAD
	WHERE MASTR.PEDIDO_NRO IS NOT NULL;

-- (61257
	-- insert de envio
	INSERT INTO DATAZO.envio(id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
										fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino, id_tipo_movilidad)
	SELECT DISTINCT TMP.[user], TMP.repartidor, TMP.estado, TMP.medioPago, TMP.precioEnvio, TMP.propina, TMP.observacion, TMP.fecha_pedido,
			TMP.fecha_entrega, TMP.t_estimado, TMP.calificacion, TMP.direccion_orig, TMP.direccion_dest, TMP.tipo_movilidad
	FROM DATAZO.[#temporal_pedido_productos] TMP;

	-- insert de pedido producto
	INSERT INTO DATAZO.pedido_productos (id_pedido, id_envio, id_local, tarifa_servicio, total_pedido, pedido_total_cupones)
	SELECT DISTINCT TMP.pedido_nro, ENV.id_envio, TMP.localId, TMP.tarifa, TMP.totalPedido, TMP.cupones  FROM DATAZO.[#temporal_pedido_productos] TMP
	JOIN DATAZO.envio ENV ON  ENV.fecha_pedido = TMP.fecha_pedido AND ENV.id_usuario = TMP.[user] AND ENV.id_repartidor = TMP.repartidor
	;

	DROP TABLE DATAZO.[#temporal_pedido_productos] 
	PRINT 'pedidos de producto migrados'
END
GO





/*Parte 4*/
 

CREATE PROCEDURE DATAZO.migrar_producto_por_local
AS
BEGIN
	INSERT INTO DATAZO.producto_por_local (codigo_producto, id_local, precio)
	SELECT  DISTINCT p.codigo,l.id_local, MASTR.PRODUCTO_LOCAL_PRECIO
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.producto p ON p.codigo =  MASTR.PRODUCTO_LOCAL_CODIGO
	JOIN DATAZO.local_ l ON l.nombre =  MASTR.LOCAL_NOMBRE
	PRINT 'producto por local migrado'
END
GO




CREATE PROCEDURE DATAZO.migrar_horario
AS
BEGIN
	INSERT INTO DATAZO.horario ( id_local, hora_apertuta, hora_cierre, id_dia)
	SELECT DISTINCT l.id_local, HORARIO_LOCAL_HORA_APERTURA, HORARIO_LOCAL_HORA_CIERRE, d.id_dia
	FROM gd_esquema.Maestra
	JOIN DATAZO.local_ l ON l.nombre =  LOCAL_NOMBRE
	JOIN DATAZO.dia d ON d.descripcion =  HORARIO_LOCAL_DIA
	PRINT 'horario migrado'
END
GO



/*Parte 5*/

CREATE PROCEDURE DATAZO.migrar_reclamo
AS
BEGIN
	INSERT INTO DATAZO.reclamo (nro_reclamo, id_pedido, tipo_reclamo, fecha, descripcion, fecha_solucion, estado, solucion, calificacion, id_usuario, id_operador)
	SELECT MASTR.RECLAMO_NRO, pp.id_pedido, tr.id_tipo, MASTR.RECLAMO_FECHA, MASTR.RECLAMO_DESCRIPCION, MASTR.RECLAMO_FECHA_SOLUCION, MASTR.RECLAMO_ESTADO, MASTR.RECLAMO_SOLUCION, MASTR.RECLAMO_CALIFICACION, u.id_usuario, u_o.id_operador
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = MASTR.PEDIDO_NRO 
	JOIN DATAZO.tipo_reclamo as tr ON tr.descripcion = MASTR.RECLAMO_TIPO
	JOIN DATAZO.persona as p ON  p.DNI = MASTR.USUARIO_DNI 
	JOIN DATAZO.usuario as u ON u.id_persona = p.id_persona
	JOIN DATAZO.persona as p_o ON  p_o.DNI = MASTR.OPERADOR_RECLAMO_DNI  AND p_o.nombre = MASTR.OPERADOR_RECLAMO_NOMBRE
	JOIN DATAZO.operador as u_o ON u_o.id_persona = p_o.id_persona
	WHERE MASTR.RECLAMO_NRO IS NOT NULL

	PRINT 'reclamo migrado'
END
GO



-- MATCHEAR CON CNUMERO DE CUPON MATCHEARIA CON LOS QUE ESTAN POR RECLAMO Y CON LOS GENERADOS PORQUE SI ACA CREO QUE FUNCIONA POR MIGRAr primero una cosa y despues la otra

CREATE PROCEDURE DATAZO.migrar_cupon_por_pedido
AS
BEGIN
	INSERT INTO DATAZO.cupon_por_pedido (nro_cupon, id_pedido, id_cupon)
	SELECT cd.nro, pp.id_pedido, cd.id_cupon
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.cupon_descuento cd ON cd.nro =  MASTR.CUPON_NRO 
	JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = MASTR.PEDIDO_NRO
	WHERE MASTR.CUPON_NRO IS NOT NULL
	PRINT 'cupon por pedido migrado'
END
GO



CREATE PROCEDURE DATAZO.migrar_producto_por_pedido
AS
BEGIN
	INSERT INTO DATAZO.producto_por_pedido (id_pedido, codigo_producto, id_local, cantidad, total_producto)
	SELECT  pp.id_pedido, p.codigo, l.id_local, MASTR.PRODUCTO_CANTIDAD, MASTR.PRODUCTO_LOCAL_PRECIO * MASTR.PRODUCTO_CANTIDAD 
	FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.pedido_productos as pp ON pp.id_pedido = MASTR.PEDIDO_NRO
	JOIN DATAZO.producto p ON p.codigo =  MASTR.PRODUCTO_LOCAL_CODIGO
	JOIN DATAZO.local_ l ON l.nombre =  MASTR.LOCAL_NOMBRE
	PRINT 'producto por pedido migrado'
END
GO



/*Parte 6*/
-- cupones por reclamo


CREATE PROCEDURE DATAZO.migrar_cupones_descuento_por_reclamo
AS
BEGIN
	SELECT MASTR.CUPON_RECLAMO_NRO, U.id_usuario, MASTR.RECLAMO_NRO, MASTR.CUPON_RECLAMO_MONTO, 
			MASTR.CUPON_RECLAMO_FECHA_ALTA, MASTR.CUPON_RECLAMO_FECHA_VENCIMIENTO, MASTR.CUPON_RECLAMO_TIPO
			INTO DATAZO.#temporalCuponesDesc 
			FROM gd_esquema.Maestra MASTR
	JOIN DATAZO.persona P ON  P.DNI = MASTR.USUARIO_DNI 
	JOIN DATAZO.usuario U ON U.id_persona = P.id_persona
	WHERE MASTR.CUPON_RECLAMO_NRO IS NOT NULL


	INSERT INTO DATAZO.cupon_descuento(nro, id_usuario, monto, fecha_alta,  fecha_vencimiento, tipo)
	SELECT CUPON_RECLAMO_NRO, id_usuario, CUPON_RECLAMO_MONTO, CUPON_RECLAMO_FECHA_ALTA, CUPON_RECLAMO_FECHA_VENCIMIENTO, CUPON_RECLAMO_TIPO
	FROM DATAZO.#temporalCuponesDesc

	INSERT INTO DATAZO.cupon_por_reclamo (id_cupon, nro_cupon, id_usuario, nro_reclamo)
	SELECT CD.id_cupon, TMP.CUPON_RECLAMO_NRO, TMP.id_usuario, TMP.RECLAMO_NRO
	FROM DATAZO.#temporalCuponesDesc TMP
	JOIN DATAZO.cupon_descuento CD ON CD.nro = TMP.CUPON_RECLAMO_NRO AND CD.id_usuario = TMP.id_usuario
	ORDER BY CUPON_RECLAMO_NRO
	

	DROP TABLE DATAZO.#temporalCuponesDesc

	PRINT 'cupones de descuento por reclamo migrado'
END
GO

-- select * from DATAZO.cupon_por_pedido

BEGIN TRANSACTION
 BEGIN TRY
	EXECUTE DATAZO.migrar_personas
	EXECUTE DATAZO.migrar_productos
	EXECUTE DATAZO.migrar_tipo_reclamo
	EXECUTE DATAZO.migrar_tipo_medio_pago
	EXECUTE DATAZO.migrar_tipo_de_paquete
	EXECUTE DATAZO.migrar_estado
	EXECUTE DATAZO.migrar_tipos_de_local
	EXECUTE DATAZO.migrar_provincias
	EXECUTE DATAZO.migrar_tipo_movilidad
	EXECUTE DATAZO.migrar_dia
	EXECUTE DATAZO.migrar_operadores
	EXECUTE DATAZO.migrar_usuarios
	EXECUTE DATAZO.migrar_localidades
	EXECUTE DATAZO.migrar_repartidores
	EXECUTE DATAZO.migrar_medios_de_pago
	EXECUTE DATAZO.migrar_cupones_de_descuento
	EXECUTE DATAZO.migrar_direcciones
	EXECUTE DATAZO.migrar_direcciones_por_persona
	EXECUTE DATAZO.migrar_envios_de_mensajeria
	EXECUTE DATAZO.migrar_locales
	EXECUTE DATAZO.migrar_pedidos_de_productos
	EXECUTE DATAZO.migrar_producto_por_local
	EXECUTE DATAZO.migrar_horario
	EXECUTE DATAZO.migrar_reclamo
	EXECUTE DATAZO.migrar_cupon_por_pedido
	EXECUTE DATAZO.migrar_producto_por_pedido
	EXECUTE DATAZO.migrar_cupones_descuento_por_reclamo
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vac�as o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

   IF (EXISTS (SELECT 1 FROM DATAZO.envio)
   AND EXISTS (SELECT 1 FROM DATAZO.cupon_descuento)
   AND EXISTS (SELECT 1 FROM DATAZO.cupon_por_pedido)
   AND EXISTS (SELECT 1 FROM DATAZO.cupon_por_reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.dia)
   AND EXISTS (SELECT 1 FROM DATAZO.direccion)
   AND EXISTS (SELECT 1 FROM DATAZO.direccionesXpersona)
   AND EXISTS (SELECT 1 FROM DATAZO.envio)
   AND EXISTS (SELECT 1 FROM DATAZO.envio_de_mensajeria)
   AND EXISTS (SELECT 1 FROM DATAZO.estado)
   AND EXISTS (SELECT 1 FROM DATAZO.horario)
   AND EXISTS (SELECT 1 FROM DATAZO.local_)
   AND EXISTS (SELECT 1 FROM DATAZO.localidad)
   AND EXISTS (SELECT 1 FROM DATAZO.medio_de_pago)
   AND EXISTS (SELECT 1 FROM DATAZO.operador)
   AND EXISTS (SELECT 1 FROM DATAZO.pedido_productos)
   AND EXISTS (SELECT 1 FROM DATAZO.persona)
   AND EXISTS (SELECT 1 FROM DATAZO.producto)
   AND EXISTS (SELECT 1 FROM DATAZO.producto_por_local)
   AND EXISTS (SELECT 1 FROM DATAZO.producto_por_pedido)
   AND EXISTS (SELECT 1 FROM DATAZO.provincia)
   AND EXISTS (SELECT 1 FROM DATAZO.reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.repartidor)
   AND EXISTS (SELECT 1 FROM DATAZO.tipo_local)
   AND EXISTS (SELECT 1 FROM DATAZO.tipo_medio_pago)
   AND EXISTS (SELECT 1 FROM DATAZO.tipo_movilidad)
   AND EXISTS (SELECT 1 FROM DATAZO.tipo_paquete)
   AND EXISTS (SELECT 1 FROM DATAZO.tipo_reclamo)
   AND EXISTS (SELECT 1 FROM DATAZO.usuario))
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
