 use GD2015C1

/*Parte 1*/

CREATE TABLE persona(id_persona INT NOT NULL IDENTITY(1,1), nombre NVARCHAR(255), apellido NVARCHAR(255), DNI DECIMAL(18,0), telefono DECIMAL(18,0), mail NVARCHAR(255), fecha_nac DATE)
CREATE TABLE producto(codigo NVARCHAR(50), nombre NVARCHAR(50), descripcion NVARCHAR(255))
CREATE TABLE tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo NVARCHAR(50), alto_max DECIMAL(18,2), ancho_max DECIMAL(18,2), largo_max DECIMAL(18,2), peso_max DECIMAL(18,2), tipo_precio DECIMAL(18,2))
CREATE TABLE estado (id_estado INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE tipo_local(id_tipo INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))
CREATE TABLE provincia (id_provincia INT NOT NULL IDENTITY(1,1), nombre_provincia NVARCHAR(255));
CREATE TABLE tipo_movilidad (id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion_movilidad INT);
CREATE TABLE dia (id_dia INT NOT NULL IDENTITY(1,1), descripcion NVARCHAR(50))

ALTER TABLE persona
	ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)
GO

ALTER TABLE producto
	ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codigo_producto)
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

ALTER TABLE tipo_movilidad 
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_movilidad);
	
ALTER TABLE dia
	ADD CONSTRAINT pk_dia PRIMARY KEY (id_dia);

/*Parte 2*/

CREATE TABLE tipo_movilidad (id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion_movilidad NVARCHAR(50));
CREATE TABLE localidad (id_localidad INT NOT NULL IDENTITY(1,1), id_provincia INT, nombre_localidad NVARCHAR(255));
CREATE TABLE operador (id_operador INT NOT NULL IDENTITY(1,1), id_persona INT);
CREATE TABLE usuario (id_usuario INT NOT NULL IDENTITY(1,1), id_persona INT, fecha_registro DATETIME2(3));
CREATE TABLE repartidor (id_repartidor INT NOT NULL IDENTITY(1,1), id_persona INT, tipo_movilidad INT, localidad_activa INT);

--usuario
ALTER TABLE usuario 
	ADD CONSTRAINT pk PRIMARY KEY (id_usuario),
	CONSTRAINT fk_usuario_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
GO
	
--repartidor
ALTER TABLE repartidor 
	ADD CONSTRAINT pk PRIMARY KEY (id_repartidor),
	CONSTRAINT fk_repartidor_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
GO

--Medio de Pago
ALTER TABLE medio_de_pago 
	ADD CONSTRAINT pk_medio_de_pago PRIMARY KEY (id_medioPago),
	CONSTRAINT fk_medio_de_pago_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	CONSTRAINT fk_medio_de_pago_tipo FOREIGN KEY (tipo_medioPago) REFERENCES tipo_medio_pago(id_medioPago)
GO

--Cupon desc
ALTER TABLE cupon_descuento
	ADD CONSTRAINT pk_cupon_descuento PRIMARY KEY (nro),
	CONSTRAINT fk_cupon_descuento_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
GO

--Categoria
ALTER TABLE categoria 
	ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria),
	CONSTRAINT pk_categoria PRIMARY KEY (id_tipo)
GO
	
--Localidad
ALTER TABLE localidad
	ADD CONSTRAINT pk_localidad PRIMARY KEY (id_localidad),
	CONSTRAINT fk_localidad FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)
GO

/*Parte 3*/

CREATE TABLE direccion (id_direccion INT, id_persona INT, direccion NVARCHAR(255), localidad INT);
CREATE TABLE medio_de_pago (id_medioPago INT, id_usuario INT, tipo_medioPago INT, nro_tarjeta NVARCHAR(50), tipo NVARCHAR(50), marca_tarjeta NVARCHAR(100));
CREATE TABLE cupon_descuento (nro DECIMAL(18,2), id_usuario INT, monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50), usado TINYINT);
CREATE TABLE categoria (id_categoria INT, id_tipo INT, descripcion VARCHAR(255));
CREATE TABLE envio (id_envio INT, id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
					fecha_pedido DATE, fecha_entrega DATE, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);
CREATE TABLE local_ (id_local INT, id_direccion INT, nombre NVARCHAR(100), descripcion NVARCHAR(255), tipo NVARCHAR(55), categoria INT);


--Direccion
ALTER TABLE direccion 
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_localidad FOREIGN KEY (localidad) REFERENCES localidad(id_localidad);
--Envio

ALTER TABLE envio 
	ADD CONSTRAINT pk_envio PRIMARY KEY (id_envio), 
	CONSTRAINT fk_envio_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor);
ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_estado FOREIGN KEY (id_estado) REFERENCES estado(id_estado);
ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_medio_pago FOREIGN KEY (id_medioPago) REFERENCES medio_pago(id_medioPago);
ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES direccion(id_direccion);
ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES direccion(id_direccion);

--Local
ALTER TABLE local_ 
	ADD CONSTRAINT local_ PRIMARY KEY (id_local)
ALTER TABLE local_ 
	ADD CONSTRAINT fk_local_dir FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion);
ALTER TABLE local_ 
	ADD CONSTRAINT fk_local_cat FOREIGN KEY (categoria) REFERENCES categoria(id_categoria);

--Parte 4

CREATE TABLE envio_de_mensajeria(id_envio INT, id_envio_mensajeria INT, km DECIMAL(18,2), tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),
				total_envio_mensajeria decimal(18,2));
CREATE TABLE pedido_productos(id_pedido INT, id_envio INT, id_local INT, tarifa_servicio INT, total_pedido DECIMAL(18,2), pedido_total_cupones DECIMAL(18,2))
CREATE TABLE producto_por_local(codigo_producto INT, id_local INT, precio DECIMAL(18,2))
CREATE TABLE horario (id_horario INT, id_local INT, hora_apertuta DECIMAL(18,0), hora_cierre DECIMAL(18,0), id_dia INT);
	
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT pk_envio_de_mensajeria PRIMARY KEY (id_envio_de_mensajeria);
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fK_envio_de_mensajeria_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio);
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fk_envio_de_mensajria_tipo FOREIGN KEY (tipo_paquete) REFERENCES tipo_paquete(id_tipo)
ALTER TABLE pedido_productos
	ADD CONSTRAINT pk_pedido_productos PRIMARY KEY (id_pedido)
ALTER TABLE pedido_productos
	ADD CONSTRAINT fk_pedido_productos_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio) 
ALTER TABLE pedido_local
	ADD CONSTRAINT fk_pedido_productos_local FOREIGN KEY (id_local) REFERENCES local(id_local) 
ALTER TABLE producto_por_local
	ADD CONSTRAINT pk_producto_por_local PRIMARY KEY (codigo_producto)
ALTER TABLE producto_por_local
	ADD CONSTRAINT pk_producto_por_local PRIMARY KEY (id_local)
ALTER TABLE producto_por_local
	ADD CONSTRAINT fk_producto_por_local FOREIGN KEY (codigo_producto) REFERENCES producto(codigo_producto)
ALTER TABLE producto_por_local
	ADD CONSTRAINT fk_producto_por_local FOREIGN KEY (id_local) REFERENCES local(id_local)	
ALTER TABLE horario
	ADD CONSTRAINT pk_horario PRIMARY KEY (id_horario),
	CONSTRAINT fk_local FOREIGN KEY REFERENCES local_(id_local),
	CONSTRAINT fk_dia FOREIGN KEY REFERENCES Dia(id_dia)
GO

/*Parte 5*/

CREATE TABLE reclamo (nro_reclamo decimal(18,0) IDENTITY(1,1), id_pedido int, tipo_reclamo int, fecha datetime, descripcion nvarchar(255), fecha_solucion datetime, estado nvarchar(50), solucion nvarchar(255), calificacion decimal(18,0), id_usuario int);
CREATE TABLE producto_por_pedido (id_pedido int, codigo_producto nvarchar(50), cantidad decimal(18,0), total_producto decimal(18,2));
CREATE TABLE cupon_por_pedido(nro_cupon decimal(18,0), id_pedido INT)

ALTER TABLE reclamo
	ADD CONSTRAINT pk_reclamo PRIMARY KEY (nro_reclamo),
	CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES pedido_productos(id_pedido),
	CONSTRAINT pk_tipo_reclamo FOREIGN KEY (tipo_reclamo) REFERENCES tipo_reclamo(id_tipo),
	CONSTRAINT pk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
GO

ALTER TABLE producto_por_pedido
	ADD CONSTRAINT pk_pedido PRIMARY KEY (id_pedido),
	CONSTRAINT pk_producto PRIMARY KEY (codigo_producto),
	CONSTRAINT fk_pedido FOREIGN KEY REFERENCES pedido_productos(id_pedido),
	CONSTRAINT fk_producto FOREIGN KEY REFERENCES producto_por_local(codigo_producto)
GO

ALTER TABLE cupon_por_pedido
	ADD CONSTRAINT pk_cuponXpedido_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXpedidon_cupon_nro_cupon FOREIGN KEY (nro_cupon) REFERENCES cupon_descuento(nro),
	CONSTRAINT fk_cuponXpedidon_cupon_id_pedido FOREIGN KEY (id_pedido) REFERENCES pedido_productos(id_pedido);
GO

/*Parte 6*/

CREATE TABLE cupon_por_reclamo(nro_cupon decimal(18,0), nro_reclamo decimal(18,0))

ALTER TABLE cupon_por_reclamo
	ADD CONSTRAINT pk_cuponXreclamo_nro_cupon PRIMARY KEY (nro_cupon),
	CONSTRAINT fk_cuponXreclamo_nro_cupon FOREIGN KEY (nro_cupon) REFERENCES cupon_descuento(nro),
	CONSTRAINT fk_cuponXreclamo_nro_reclamo FOREIGN KEY (nro_reclamo) REFERENCES reclamo(nro_reclamo);
GO

