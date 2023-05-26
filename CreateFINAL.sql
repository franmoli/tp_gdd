USE GD1C2023
GO

--CREATE SCHEMA delivery
--drop schema delivery
--GO
 
 
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[cupon_por_pedido]') AND type in (N'U'))
	DROP TABLE cupon_por_pedido
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[producto_por_pedido]') AND type in (N'U'))
	DROP TABLE producto_por_pedido
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[cupon_por_reclamo]') AND type in (N'U'))
	DROP TABLE cupon_por_reclamo
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[reclamo]') AND type in (N'U'))
	DROP TABLE reclamo
GO
 IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[pedido_productos]') AND type in (N'U'))
	DROP TABLE pedido_productos
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[envio_de_mensajeria]') AND type in (N'U'))
	DROP TABLE envio_de_mensajeria
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[envio]') AND type in (N'U'))
	DROP TABLE envio
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[producto_por_local]') AND type in (N'U'))
	DROP TABLE producto_por_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[horario]') AND type in (N'U'))
	DROP TABLE horario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[local_]') AND type in (N'U'))
	DROP TABLE local_
GO	
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[direccion]') AND type in (N'U'))
	DROP TABLE direccion
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[medio_de_pago]') AND type in (N'U'))
	DROP TABLE medio_de_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[cupon_descuento]') AND type in (N'U'))
	DROP TABLE cupon_descuento
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[categoria]') AND type in (N'U'))
	DROP TABLE categoria
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tipo_movilidad]') AND type in (N'U'))
	DROP TABLE tipo_movilidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[localidad]') AND type in (N'U'))
	DROP TABLE localidad
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[operador]') AND type in (N'U'))
	DROP TABLE operador
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[usuario]') AND type in (N'U'))
	DROP TABLE usuario
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[repartidor]') AND type in (N'U'))
	DROP TABLE repartidor
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[persona]') AND type in (N'U'))
	DROP TABLE persona
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[producto]') AND type in (N'U'))
	DROP TABLE producto
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tipo_reclamo]') AND type in (N'U'))
	DROP TABLE tipo_reclamo
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tipo_medio_pago]') AND type in (N'U'))
	DROP TABLE tipo_medio_pago
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tipo_paquete]') AND type in (N'U'))
	DROP TABLE tipo_paquete
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[estado]') AND type in (N'U'))
	DROP TABLE estado
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tipo_local]') AND type in (N'U'))
	DROP TABLE tipo_local
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[provincia]') AND type in (N'U'))
	DROP TABLE provincia
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dia]') AND type in (N'U'))
	DROP TABLE dia
GO
/*Parte 1*/

CREATE TABLE persona(id_persona INT NOT NULL IDENTITY(1,1), nombre NVARCHAR(255), apellido NVARCHAR(255), DNI DECIMAL(18,0), telefono DECIMAL(18,0), mail NVARCHAR(255), fecha_nac DATE)
CREATE TABLE producto(codigo NVARCHAR(50) NOT NULL, nombre NVARCHAR(50), descripcion NVARCHAR(255))
CREATE TABLE tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo NVARCHAR(50), alto_max DECIMAL(18,2), ancho_max DECIMAL(18,2), largo_max DECIMAL(18,2), peso_max DECIMAL(18,2), tipo_precio DECIMAL(18,2))
CREATE TABLE estado (id_estado INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_local(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE provincia (id_provincia INT NOT NULL IDENTITY(1,1), nombre_provincia NVARCHAR(255));
CREATE TABLE dia (id_dia INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))

ALTER TABLE persona
	ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)
GO

ALTER TABLE producto
	ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codigo)
GO

ALTER TABLE tipo_reclamo
	ADD CONSTRAINT pk_tipo_reclamo PRIMARY KEY (id_tipo)
GO
	
ALTER TABLE tipo_medio_Pago
	ADD CONSTRAINT pk_tipo_medioPago PRIMARY KEY (id_tipo_medio_pago)
GO
	
ALTER TABLE tipo_paquete
	ADD CONSTRAINT pk_tipo_paquete PRIMARY KEY (id_tipo)
GO

ALTER TABLE estado
	ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado)
GO

ALTER TABLE tipo_local
	ADD CONSTRAINT pk_tipo_local PRIMARY KEY (id_tipo)
GO

ALTER TABLE provincia 
	ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia);
GO

ALTER TABLE dia
	ADD CONSTRAINT pk_dia PRIMARY KEY (id_dia);

/*Parte 2*/

CREATE TABLE tipo_movilidad (id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion_movilidad NVARCHAR(255));
CREATE TABLE localidad (id_localidad INT NOT NULL IDENTITY(1,1), id_provincia INT, nombre_localidad NVARCHAR(255));
CREATE TABLE operador (id_operador INT NOT NULL IDENTITY(1,1), id_persona INT);
CREATE TABLE usuario (id_usuario INT NOT NULL IDENTITY(1,1), id_persona INT, fecha_registro DATETIME2(3));
CREATE TABLE repartidor (id_repartidor INT NOT NULL IDENTITY(1,1), id_persona INT, tipo_movilidad INT, localidad_activa INT);

--usuario
ALTER TABLE usuario 
	ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),
	CONSTRAINT fk_usuario_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
GO
	
--repartidor
ALTER TABLE repartidor 
	ADD CONSTRAINT pk_repartidor PRIMARY KEY (id_repartidor),
	CONSTRAINT fk_repartidor_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
GO

	
--Localidad
ALTER TABLE localidad
	ADD CONSTRAINT pk_localidad PRIMARY KEY (id_localidad),
	CONSTRAINT fk_localidad FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)
GO

--Tipo movilidad
ALTER TABLE tipo_movilidad 
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_tipo_movilidad);



/*Parte 3*/

CREATE TABLE direccion (id_direccion INT IDENTITY(1,1) NOT NULL, id_persona INT, direccion NVARCHAR(255), localidad INT);
CREATE TABLE medio_de_pago (id_medioPago INT IDENTITY(1,1), id_usuario INT, id_tipo_medio_pago INT, nro_tarjeta NVARCHAR(50), tipo NVARCHAR(50), marca_tarjeta NVARCHAR(100));
CREATE TABLE cupon_descuento (nro DECIMAL(18,2) NOT NULL, id_usuario INT, monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50), usado TINYINT);
CREATE TABLE categoria (id_categoria INT IDENTITY(1,1) NOT NULL, id_tipo INT NOT NULL, descripcion VARCHAR(255));
CREATE TABLE envio (id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
					fecha_pedido DATE, fecha_entrega DATE, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);
CREATE TABLE local_ (id_local INT IDENTITY(1,1), id_direccion INT, nombre NVARCHAR(100), descripcion NVARCHAR(255), tipo INT, categoria INT);


--Direccion
ALTER TABLE direccion 
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_localidad FOREIGN KEY (localidad) REFERENCES localidad(id_localidad);

--Medio de Pago
ALTER TABLE medio_de_pago 
	ADD CONSTRAINT pk_medio_de_pago PRIMARY KEY (id_medioPago),
	CONSTRAINT fk_medio_de_pago_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	CONSTRAINT fk_medio_de_pago_tipo FOREIGN KEY (id_tipo_medio_pago) REFERENCES tipo_medio_pago(id_tipo_medio_pago)
GO

--Cupon desc
ALTER TABLE cupon_descuento
	ADD CONSTRAINT pk_cupon_descuento PRIMARY KEY (nro),
	CONSTRAINT fk_cupon_descuento_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
GO

--Categoria
ALTER TABLE categoria 
	ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria, id_tipo)
GO

--Envio
ALTER TABLE envio 
	ADD CONSTRAINT pk_envio PRIMARY KEY (id_envio), 
	CONSTRAINT fk_envio_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor),
	CONSTRAINT fk_envio_estado FOREIGN KEY (id_estado) REFERENCES estado(id_estado),
	CONSTRAINT fk_envio_medio_pago FOREIGN KEY (id_medioPago) REFERENCES medio_de_pago(id_medioPago),
	CONSTRAINT fk_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES direccion(id_direccion),
	CONSTRAINT fk_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES direccion(id_direccion)

--Local
ALTER TABLE local_ 
	ADD CONSTRAINT pk_local_ PRIMARY KEY (id_local),
	CONSTRAINT fk_local_dir FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
	CONSTRAINT fk_local_cat FOREIGN KEY (categoria, tipo) REFERENCES categoria(id_categoria, id_tipo),
	CONSTRAINT fk_local_tipo FOREIGN KEY (tipo) REFERENCES tipo_local(id_tipo);


--Parte 4

CREATE TABLE envio_de_mensajeria(id_envio INT, id_envio_mensajeria INT NOT NULL, km DECIMAL(18,2), tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),
				total_envio_mensajeria decimal(18,2));
CREATE TABLE pedido_productos(id_pedido INT NOT NULL, id_envio INT, id_local INT, tarifa_servicio INT, total_pedido DECIMAL(18,2), pedido_total_cupones DECIMAL(18,2))
CREATE TABLE producto_por_local(codigo_producto NVARCHAR(50) NOT NULL, id_local INT NOT NULL, precio DECIMAL(18,2))
CREATE TABLE horario (id_horario INT NOT NULL, id_local INT, hora_apertuta DECIMAL(18,0), hora_cierre DECIMAL(18,0), id_dia INT);
	
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT pk_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria);
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fK_envio_de_mensajeria_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio);
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fk_envio_de_mensajria_tipo FOREIGN KEY (tipo_paquete) REFERENCES tipo_paquete(id_tipo)
ALTER TABLE pedido_productos
	ADD CONSTRAINT pk_pedido_productos PRIMARY KEY (id_pedido),
	CONSTRAINT fk_pedido_productos_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio),
	CONSTRAINT fk_pedido_productos_local FOREIGN KEY (id_local) REFERENCES local_(id_local) 
ALTER TABLE producto_por_local
	ADD CONSTRAINT pk_producto_por_local PRIMARY KEY (codigo_producto, id_local),
	CONSTRAINT fk_producto_por_local_producto FOREIGN KEY (codigo_producto) REFERENCES producto(codigo),
	CONSTRAINT fk_producto_por_local_local FOREIGN KEY (id_local) REFERENCES local_(id_local)	
ALTER TABLE horario
	ADD CONSTRAINT pk_horario PRIMARY KEY (id_horario),
	CONSTRAINT fk_local FOREIGN KEY (id_local) REFERENCES local_(id_local),
	CONSTRAINT fk_dia FOREIGN KEY (id_dia) REFERENCES Dia(id_dia)
GO

/*Parte 5*/

CREATE TABLE reclamo (nro_reclamo decimal(18,0) IDENTITY(1,1), id_pedido int, tipo_reclamo int, fecha datetime, descripcion nvarchar(255), fecha_solucion datetime, estado nvarchar(50), solucion nvarchar(255), calificacion decimal(18,0), id_usuario int);
CREATE TABLE producto_por_pedido (id_pedido int NOT NULL, codigo_producto nvarchar(50) NOT NULL, id_local INT NOT NULL, cantidad decimal(18,0), total_producto decimal(18,2));
CREATE TABLE cupon_por_pedido(nro_cupon decimal(18,2) NOT NULL, id_pedido INT)

ALTER TABLE reclamo
	ADD CONSTRAINT pk_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES pedido_productos(id_pedido),
	CONSTRAINT fk_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES tipo_reclamo(id_tipo),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
GO

ALTER TABLE producto_por_pedido
	ADD CONSTRAINT pk_pedido PRIMARY KEY (id_pedido, codigo_producto),
	CONSTRAINT fk_pedido_ppp FOREIGN KEY (id_pedido) REFERENCES pedido_productos(id_pedido),
	CONSTRAINT fk_producto_ppp FOREIGN KEY (codigo_producto, id_local) REFERENCES producto_por_local(codigo_producto, id_local)
GO

ALTER TABLE cupon_por_pedido
	ADD CONSTRAINT pk_cuponXpedido_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXpedidon_cupon_nro_cupon FOREIGN KEY (nro_cupon) REFERENCES cupon_descuento(nro),
	CONSTRAINT fk_cuponXpedidon_cupon_id_pedido FOREIGN KEY (id_pedido) REFERENCES pedido_productos(id_pedido);
GO

/*Parte 6*/

CREATE TABLE cupon_por_reclamo(nro_cupon decimal(18,2) NOT NULL, nro_reclamo decimal(18,0))

ALTER TABLE cupon_por_reclamo
	ADD CONSTRAINT pk_cuponXreclamo_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXreclamo_nro_cupon FOREIGN KEY (nro_cupon) REFERENCES cupon_descuento(nro),
	CONSTRAINT fk_cuponXreclamo_nro_reclamo FOREIGN KEY (nro_reclamo) REFERENCES reclamo(nro_reclamo);
GO

