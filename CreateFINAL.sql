 use GD2015C1

/*Parte 1*/

CREATE TABLE Persona(id_persona INT, nombre VARCHAR(255), apellido VARCHAR(255), DNI DECIMAL(18,0), telefono DECIMAL(18,0), mail VARCHAR(255), fecha_nac DATE)

CREATE TABLE Producto(codigo VARCHAR(50), nombre VARCHAR(50), descripcion VARCHAR(255))

CREATE TABLE Tipo_Reclamo(id_tipo INT, descripcion VARCHAR(50))

CREATE TABLE Tipo_Medio_Pago(id_tipo_medioPago INT, descripcion VARCHAR(50))

CREATE TABLE Tipo_Paquete(id_tipo INT, tipo VARCHAR(50), alto_max DECIMAL(18,2), ancho_max DECIMAL(18,2), largo_max DECIMAL(18,2), peso_max DECIMAL(18,2), tipo_precio DECIMAL(18,2))

CREATE TABLE Estado (id_estado INT, descripcion VARCHAR(50))

CREATE TABLE Tipo_Local(id_tipo INT, descripcion VARCHAR(50))

CREATE TABLE provincia (id_provincia INT, nombre_provincia VARCHAR(255));

CREATE TABLE tipo_movilidad (id_tipo_movilidad INT, descripcion_movilidad INT);

CREATE TABLE Dia (id_dia INT, descripcion VARCHAR(50))

ALTER TABLE Persona
	ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)

ALTER TABLE Producto
	ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codigo_producto)

ALTER TABLE Tipo_Reclamo
	ADD CONSTRAINT pk_tipo_reclamo PRIMARY KEY (id_tipo)
	
ALTER TABLE Tipo_Medio_Pago
	ADD CONSTRAINT pk_tipo_medioPago PRIMARY KEY (id_tipo_medioPago)
	
ALTER TABLE Tipo_Paquete
	ADD CONSTRAINT pk_tipo_paquete PRIMARY KEY (id_tipo)
	
ALTER TABLE Estado
	ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado)

ALTER TABLE Tipo_Local
	ADD CONSTRAINT pk_tipo_local PRIMARY KEY (id_tipo)

ALTER TABLE provincia 
	ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia);

ALTER TABLE tipo_movilidad 
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_movilidad);
	
ALTER TABLE dia
	ADD CONSTRAIT pk_dia PRIMARY KEY (id_dia);

/*Parte 2*/

CREATE TABLE tipo_movilidad (id_tipo_movilidad INT, descripcion_movilidad NVARCHAR(50));
CREATE TABLE localidad (id_localidad INT, id_provincia INT, nombre_localidad NVARCHAR(255));
CREATE TABLE operador (id_operador INT, id_persona INT);
CREATE TABLE usuario (id_usuario INT, id_persona INT, fecha_registro DATETIME2(3));
CREATE TABLE repartidor (id_repartidor INT, id_persona INT, tipo_movilidad INT, localidad_activa INT);

--usuario
ALTER TABLE usuario 
	ADD CONSTRAINT pk PRIMARY KEY (id_usuario)
ALTER TABLE usuario 
	ADD CONSTRAINT fk_usuario_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
	
--repartidor
ALTER TABLE repartidor 
	ADD CONSTRAINT pk PRIMARY KEY (id_repartidor)
ALTER TABLE repartidor 
	ADD CONSTRAINT fk_repartidor_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);


--Medio de Pago
ALTER TABLE medio_de_pago 
	ADD CONSTRAINT pk_medio_de_pago PRIMARY KEY (id_medioPago);
ALTER TABLE medio_de_pago 
	ADD CONSTRAINT fk_medio_de_pago_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE medio_de_pago 
	ADD CONSTRAINT fk_medio_de_pago_tipo FOREIGN KEY (tipo_medioPago) REFERENCES tipo_medio_pago(id_medioPago);

--Cupon desc
ALTER TABLE cupon_descuento
	ADD CONSTRAINT pk_cupon_descuento PRIMARY KEY (nro);
ALTER TABLE cupon_descuento 
	ADD CONSTRAINT fk_cupon_descuento_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);

--Categoria
ALTER TABLE categoria 
	ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria);
ALTER TABLE categoria 
	ADD CONSTRAINT pk_categoria PRIMARY KEY (id_tipo);
	
--Localidad
ALTER TABLE localidad
ADD CONSTRAINT pk_localidad PRIMARY KEY (id_localidad)

ALTER TABLE localidad
	ADD CONSTRAINT fk_localidad FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)

/*Parte 3*/

CREATE TABLE envio (id_envio INT, id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
					fecha_pedido DATE, fecha_entrega DATE, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);

CREATE TABLE local_ (id_local INT, id_direccion INT, nombre NVARCHAR(100), descripcion NVARCHAR(255), tipo NVARCHAR(55), categoria INT);--CREO Q SIN EL _ NO FUNCARIA


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

create table envio_de_mensajeria (
id_envio int references envio,
id_envio_mensajeria int primary key,
km decimal(18,2),
tipo_paquete int references tipo_paquete,
valor_asegurado decimal(18,2),
precio_seguro decimal(18,2),
total_envio_mensajeria decimal(18,2)
);

create table pedido_productos (
id_pedido int primary key,
id_envio int references envio,
id_local int references local,
tarifa_servicio int,
total_pedido decimal(18,2),
pedido_total_cupones decimal(18,2)
);

create table producto_por_local (
codigo_producto int references producto,
id_local int references local,
precio decimal(18,2),
primary key (codigo_producto, id_local)
);

create table horario (
id_horario int primary key,
id_local int references local,
hora_apertuta decimal(18,0),
hora_cierre decimal(18,0),
id_dia int references dia,
);

/*Parte 5*/

create table reclamo (
nro_reclamo decimal(18,0) primary key,
id_pedido int references pedido_productos,
tipo_reclamo int references tipo_reclamo,
fecha datetime,
descripcion nvarchar(255),
fecha_solucion datetime,
estado nvarchar(50),
solucion nvarchar(255),
calificacion decimal(18,0),
id_usuario int references usuario,
);

create table producto_por_pedido (
id_pedido int references pedido_productos,
codigo_producto nvarchar(50) references producto_por_local,
cantidad decimal(18,0),
total_producto decimal(18,2),
primary key(id_pedido, codigo_producto)
);

create table cupon_por_pedido (
nro_cupon int primary key references cupon_descuento,
id_pedido int references pedido_productos
);

/*Parte 6*/
create table cupon_por_reclamo (
nro_cupon decimal primary key references cupon_descuento,
nro_reclamo decimal(18,0) references reclamo
);
