USE GD1C2023
GO


 
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[direccionesXpersona]') AND type in (N'U'))
	DROP TABLE direccionesXpersona
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[direccionesXpersona]') AND type in (N'U'))
	DROP TABLE direccionesXpersona
GO

--Inicio de Creacion de Tablas

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
	ADD CONSTRAINT pk_dia PRIMARY KEY (id_dia)
GO
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
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_tipo_movilidad)
GO


/*Parte 3*/

CREATE TABLE direccion (id_direccion INT IDENTITY(1,1) NOT NULL, direccion NVARCHAR(255), localidad INT);
CREATE TABLE medio_de_pago (id_medioPago INT IDENTITY(1,1), id_usuario INT, id_tipo_medio_pago INT, nro_tarjeta NVARCHAR(50), marca_tarjeta NVARCHAR(100));
CREATE TABLE cupon_descuento (nro DECIMAL(18,2) NOT NULL, id_usuario INT, monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50), usado TINYINT);
CREATE TABLE categoria (id_categoria INT IDENTITY(1,1) NOT NULL, id_tipo INT NOT NULL, descripcion VARCHAR(255));
CREATE TABLE envio (id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones NVARCHAR(255),
					fecha_pedido DATE, fecha_entrega DATE, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);
CREATE TABLE local_ (id_local INT IDENTITY(1,1), id_direccion INT, nombre NVARCHAR(100), descripcion NVARCHAR(255), tipo INT, categoria INT);
	
--Direccion
ALTER TABLE direccion 
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion),
	CONSTRAINT fk_direccion_localidad FOREIGN KEY (localidad) REFERENCES localidad(id_localidad)
GO

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
	CONSTRAINT fk_envio_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	CONSTRAINT fk_envio_repartidor FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor),
	CONSTRAINT fk_envio_estado FOREIGN KEY (id_estado) REFERENCES estado(id_estado),
	CONSTRAINT fk_envio_medio_pago FOREIGN KEY (id_medioPago) REFERENCES medio_de_pago(id_medioPago),
	CONSTRAINT fk_envio_dir_origen FOREIGN KEY (dir_origen) REFERENCES direccion(id_direccion),
	CONSTRAINT fk_envio_dir_destino FOREIGN KEY (dir_destino) REFERENCES direccion(id_direccion)
GO

--Local
ALTER TABLE local_ 
	ADD CONSTRAINT pk_local_ PRIMARY KEY (id_local),
	CONSTRAINT fk_local_dir FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
	CONSTRAINT fk_local_cat FOREIGN KEY (categoria, tipo) REFERENCES categoria(id_categoria, id_tipo),
	CONSTRAINT fk_local_tipo FOREIGN KEY (tipo) REFERENCES tipo_local(id_tipo)
GO


/*Parte 4*/

CREATE TABLE envio_de_mensajeria(id_envio INT, id_envio_mensajeria INT NOT NULL, km DECIMAL(18,2), tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),
				total_envio_mensajeria decimal(18,2));
CREATE TABLE pedido_productos(id_pedido INT NOT NULL, id_envio INT, id_local INT, tarifa_servicio INT, total_pedido DECIMAL(18,2), pedido_total_cupones DECIMAL(18,2))
CREATE TABLE producto_por_local(codigo_producto NVARCHAR(50) NOT NULL, id_local INT NOT NULL, precio DECIMAL(18,2))
CREATE TABLE horario (id_horario INT NOT NULL, id_local INT, hora_apertuta DECIMAL(18,0), hora_cierre DECIMAL(18,0), id_dia INT);
CREATE TABLE direccionesXpersona (id_persona INT NOT NULL, id_direccion INT NOT NULL)

ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT pk_envio_de_mensajeria PRIMARY KEY (id_envio_mensajeria);
GO
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fK_envio_de_mensajeria_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio);
GO
ALTER TABLE envio_de_mensajeria
	ADD CONSTRAINT fk_envio_de_mensajria_tipo FOREIGN KEY (tipo_paquete) REFERENCES tipo_paquete(id_tipo)
GO
ALTER TABLE pedido_productos
	ADD CONSTRAINT pk_pedido_productos PRIMARY KEY (id_pedido),
	CONSTRAINT fk_pedido_productos_envio FOREIGN KEY (id_envio) REFERENCES envio(id_envio),
	CONSTRAINT fk_pedido_productos_local FOREIGN KEY (id_local) REFERENCES local_(id_local)
GO
ALTER TABLE producto_por_local
	ADD CONSTRAINT pk_producto_por_local PRIMARY KEY (codigo_producto, id_local),
	CONSTRAINT fk_producto_por_local_producto FOREIGN KEY (codigo_producto) REFERENCES producto(codigo),
	CONSTRAINT fk_producto_por_local_local FOREIGN KEY (id_local) REFERENCES local_(id_local)
GO
ALTER TABLE horario
	ADD CONSTRAINT pk_horario PRIMARY KEY (id_horario),
	CONSTRAINT fk_local FOREIGN KEY (id_local) REFERENCES local_(id_local),
	CONSTRAINT fk_dia FOREIGN KEY (id_dia) REFERENCES dia(id_dia)
GO
ALTER TABLE direccionesXpersona
	ADD CONSTRAINT pk_direcxpersona PRIMARY KEY (id_persona, id_direccion),
	CONSTRAINT fk_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
	CONSTRAINT fk_direccion FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
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

--Migración

/*Parte 1*/

--PERSONA
INSERT INTO persona (nombre, apellido, DNI, telefono, mail, fecha_nac)
SELECT DISTINCT USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_DNI, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC 
FROM gd_esquema.Maestra WHERE USUARIO_DNI IS NOT NULL
UNION
SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE, OPERADOR_RECLAMO_APELLIDO, OPERADOR_RECLAMO_DNI, OPERADOR_RECLAMO_TELEFONO, OPERADOR_RECLAMO_MAIL, OPERADOR_RECLAMO_FECHA_NAC 
FROM gd_esquema.Maestra WHERE OPERADOR_RECLAMO_DNI IS NOT NULL
UNION
SELECT DISTINCT REPARTIDOR_NOMBRE, REPARTIDOR_APELLIDO, REPARTIDOR_DNI, REPARTIDOR_TELEFONO, REPARTIDOR_EMAIL, REPARTIDOR_FECHA_NAC
FROM gd_esquema.Maestra WHERE REPARTIDOR_DNI IS NOT NULL

--PRODUCTO
INSERT INTO producto (codigo, nombre, descripcion) 
SELECT DISTINCT PRODUCTO_LOCAL_CODIGO, PRODUCTO_LOCAL_NOMBRE, PRODUCTO_LOCAL_DESCRIPCION
FROM gd_esquema.Maestra
WHERE PRODUCTO_LOCAL_CODIGO IS NOT NULL

--TIPO DE RECLAMO
INSERT INTO tipo_reclamo (descripcion) SELECT DISTINCT RECLAMO_TIPO FROM gd_esquema.Maestra WHERE RECLAMO_TIPO IS NOT NULL

--TIPO MEDIO DE PAGO
INSERT INTO tipo_medio_pago (descripcion) SELECT DISTINCT MEDIO_PAGO_TIPO FROM gd_esquema.Maestra

--TIPO DE PAQUETE
INSERT INTO tipo_paquete(tipo, alto_max, ancho_max, largo_max, peso_max, tipo_precio) 
SELECT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO FROM gd_esquema.Maestra 
WHERE PAQUETE_TIPO IS NOT NULL
GROUP BY PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO

-- ESTADO (ENVIO)
INSERT INTO estado (descripcion)
SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
UNION 
SELECT DISTINCT PEDIDO_ESTADO FROM gd_esquema.Maestra WHERE PEDIDO_ESTADO IS NOT NULL

--TIPO DE LOCAL
INSERT INTO tipo_local (descripcion)
SELECT DISTINCT LOCAL_TIPO
FROM gd_esquema.Maestra WHERE LOCAL_TIPO IS NOT NULL


--PROVINCIA
INSERT INTO provincia (nombre_provincia) values ( NULL)

INSERT INTO provincia (nombre_provincia)
SELECT DISTINCT DIRECCION_USUARIO_PROVINCIA  FROM gd_esquema.Maestra WHERE DIRECCION_USUARIO_PROVINCIA IS NOT NULL
UNION SELECT DISTINCT LOCAL_PROVINCIA  FROM gd_esquema.Maestra WHERE LOCAL_PROVINCIA IS NOT NULL
UNION SELECT DISTINCT ENVIO_MENSAJERIA_PROVINCIA FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_PROVINCIA IS NOT NULL

-- TIPO DE MOVILIDAD
INSERT INTO tipo_movilidad (descripcion_movilidad)
SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
FROM gd_esquema.Maestra

-- DIA (LOCAL)
INSERT INTO dia (descripcion)
SELECT DISTINCT HORARIO_LOCAL_DIA
FROM gd_esquema.Maestra
WHERE HORARIO_LOCAL_DIA IS NOT NULL


/*Parte 2*/

--OPERADOR
INSERT INTO operador (id_persona)
SELECT p.id_persona 
FROM persona p
WHERE p.DNI IN (SELECT DISTINCT OPERADOR_RECLAMO_DNI FROM gd_esquema.Maestra)

--USUARIO
INSERT INTO usuario ( id_persona, fecha_registro)
SELECT DISTINCT  p.id_persona, m.USUARIO_FECHA_REGISTRO
FROM persona p JOIN gd_esquema.Maestra m ON p.DNI = m.USUARIO_DNI

--RAPERTIDOR
INSERT INTO repartidor (id_persona)
SELECT DISTINCT p.id_persona
FROM persona p
WHERE p.DNI IN (SELECT DISTINCT REPARTIDOR_DNI FROM gd_esquema.Maestra)

--MEDIOS DE PAGO
INSERT INTO medio_de_pago (id_usuario, id_tipo_medio_pago, nro_tarjeta, marca_tarjeta)
SELECT  u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA
FROM gd_esquema.Maestra m
JOIN persona p ON p.DNI = m.USUARIO_DNI
JOIN usuario u ON u.id_persona = p.id_persona
JOIN tipo_medio_pago tmp ON tmp.descripcion = m.MEDIO_PAGO_TIPO
group by u.id_usuario, tmp.id_tipo_medio_pago, m.MEDIO_PAGO_NRO_TARJETA, m.MARCA_TARJETA


--CUPONES DE DESCUENTO
INSERT INTO cupon_descuento (nro, id_usuario, monto, fecha_alta, fecha_vencimiento, tipo, usado)
SELECT m.CUPON_NRO, u.id_usuario, CUPON_MONTO, CUPON_FECHA_ALTA, CUPON_FECHA_VENCIMIENTO, CUPON_TIPO, 0
FROM gd_esquema.Maestra m
JOIN persona p ON p.DNI = m.USUARIO_DNI
JOIN usuario u ON u.id_persona = p.id_persona
WHERE CUPON_NRO IS NOT NULL
order BY CUPON_NRO
GO



--LOCALIDADES

INSERT INTO localidad( nombre_localidad) values ( NULL)

INSERT INTO localidad(id_provincia, nombre_localidad)
SELECT DISTINCT p.id_provincia, ENVIO_MENSAJERIA_LOCALIDAD FROM gd_esquema.Maestra m
JOIN provincia p ON m.ENVIO_MENSAJERIA_PROVINCIA = p.nombre_provincia
UNION
SELECT DISTINCT p.id_provincia, DIRECCION_USUARIO_LOCALIDAD FROM gd_esquema.Maestra m
JOIN provincia p ON m.DIRECCION_USUARIO_PROVINCIA = p.nombre_provincia
UNION
SELECT DISTINCT p.id_provincia, LOCAL_LOCALIDAD FROM gd_esquema.Maestra m
JOIN provincia p ON m.LOCAL_PROVINCIA = p.nombre_provincia


	
INSERT INTO direccion (direccion, localidad)
SELECT  m.ENVIO_MENSAJERIA_DIR_DEST, L.id_localidad FROM gd_esquema.Maestra m
JOIN localidad l ON l.nombre_localidad = m.ENVIO_MENSAJERIA_LOCALIDAD
WHERE ENVIO_MENSAJERIA_DIR_DEST IS NOT NULL
UNION
SELECT  m.LOCAL_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m
JOIN localidad l ON l.nombre_localidad = m.LOCAL_LOCALIDAD
WHERE LOCAL_DIRECCION IS NOT NULL
UNION 
SELECT  m.DIRECCION_USUARIO_DIRECCION, L.id_localidad FROM gd_esquema.Maestra m
JOIN localidad l ON l.nombre_localidad = m.DIRECCION_USUARIO_LOCALIDAD
WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
UNION 
SELECT  m.REPARTIDOR_DIRECION, 1 FROM gd_esquema.Maestra m
WHERE REPARTIDOR_DIRECION IS NOT NULL

INSERT INTO direccionesXpersona (id_persona, id_direccion)
SELECT DISTINCT P.id_persona, D.id_direccion FROM gd_esquema.Maestra m
JOIN persona p ON p.DNI = m.USUARIO_DNI
JOIN direccion d ON d.direccion = m.DIRECCION_USUARIO_DIRECCION
WHERE m.USUARIO_DNI IS NOT NULL
GO

/*Parte 3 */

--insert de envio de mensajes
CREATE TRIGGER insert_envio_mensajeria_tr ON envio_de_mensajeria INSTEAD OF INSERT AS
BEGIN
		
		select * from inserted
		select * from direccion
		
		declare cursor_envios_msj cursor 
		for select id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria from inserted
	
		open cursor_envios_msj
		declare @idEnvioMSJ int
		declare @IdEnvio int
		declare @km decimal(18,2)
		declare @tipoPaquete int
		declare @valorAseg decimal(18,2)
		declare @precioSeguro decimal(18,2)
		declare @totalEnvio decimal(18,2)

		fetch cursor_envios_msj into @idEnvioMSJ ,@IdEnvio, @km , @tipoPaquete, @valorAseg, @precioSeguro, @totalEnvio

		while (@@FETCH_STATUS = 0)
			begin
			
			INSERT INTO envio(id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
			fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
			SELECT u.id_usuario, r.id_repartidor, e.id_estado, mp.id_medioPago, ENVIO_MENSAJERIA_PRECIO_ENVIO, ENVIO_MENSAJERIA_PROPINA, ENVIO_MENSAJERIA_OBSERV,
				ENVIO_MENSAJERIA_FECHA, ENVIO_MENSAJERIA_FECHA_ENTREGA, ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, ENVIO_MENSAJERIA_CALIFICACION, ENVIO_MENSAJERIA_DIR_ORIG, dir.id_direccion
			FROM gd_esquema.Maestra m
			JOIN persona pu ON pu.DNI = m.USUARIO_DNI
			JOIN usuario u ON u.id_persona = pu.id_persona
			JOIN persona pr ON pr.DNI = m.REPARTIDOR_DNI
			JOIN repartidor r ON r.id_persona = pr.id_persona
			JOIN estado e ON e.descripcion = m.ENVIO_MENSAJERIA_ESTADO
			JOIN medio_de_pago mp ON mp.id_usuario = u.id_usuario
			JOIN direccion dir ON m.ENVIO_MENSAJERIA_DIR_DEST = dir.direccion 
			WHERE ENVIO_MENSAJERIA_NRO = @idEnvioMSJ
		
			--select * from envio
		
			--INSERT INTO envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria)
			--VALUES (@idEnvioMSJ, IDENT_CURRENT('dbo.envio'), @km, @tipoPaquete, @valorAseg, @precioSeguro, @totalEnvio )
			
			--SELECT IDENT_CURRENT('dbo.envio')

		
		end
		close cursor_envios_msj

		
end;

DROP TRIGGER insert_envio_mensajeria_tr

select * from envio
select * from envio e join envio_de_mensajeria em on e.id_envio = em.id_envio

INSERT INTO envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria) 
SELECT top 1 ENVIO_MENSAJERIA_NRO, 0, ENVIO_MENSAJERIA_KM, tp.id_tipo, ENVIO_MENSAJERIA_VALOR_ASEGURADO, ENVIO_MENSAJERIA_PRECIO_SEGURO, ENVIO_MENSAJERIA_TOTAL
FROM gd_esquema.Maestra m
JOIN tipo_paquete tp ON m.PAQUETE_TIPO = tp.tipo
ORDER BY m.ENVIO_MENSAJERIA_NRO

insert into envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria) values (0,0,0,0,0,0,0)


/*

--insert de pedidos
/*
INSERT INTO envio (id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
SELECT u.id_usuario, r.id_repartidor, e.id_estado, mp.id_medioPago, PEDIDO_PRECIO_ENVIO,
PEDIDO_PROPINA, PEDIDO_OBSERV, PEDIDO_FECHA, PEDIDO_FECHA_ENTREGA,
PEDIDO_TIEMPO_ESTIMADO_ENTREGA, PEDIDO_CALIFICACION, dest.id_direccion, orig.id_direccion
FROM gd_esquema.Maestra
JOIN persona as p1 ON p1.nombre = USUARIO_NOMBRE
JOIN persona as p2 ON p2.nombre = REPARTIDOR_NOMBRE
JOIN usuario as u ON p1.id_persona = u.id_persona
JOIN repartidor as r ON p2.id_persona = r.id_persona
JOIN estado as e ON e.descripcion = PEDIDO_ESTADO
JOIN medio_de_pago as mp ON mp.nro_tarjeta = MEDIO_PAGO_NRO_TARJETA
JOIN direccion as dest ON dest.direccion = DIRECCION_USUARIO_DIRECCION
JOIN direccion as orig ON orig.direccion = LOCAL_DIRECCION
WHERE PEDIDO_NRO IS NOT NULL
*/
INSERT INTO local_(id_direccion, nombre, descripcion, tipo)
SELECT DISTINCT d.id_direccion, LOCAL_NOMBRE, LOCAL_DESCRIPCION, t.id_tipo
FROM gd_esquema.Maestra
JOIN tipo_local as t ON t.descripcion = LOCAL_TIPO
JOIN direccion as d ON d.direccion = LOCAL_DIRECCION
WHERE LOCAL_NOMBRE IS NOT NULL

INSERT INTO direccion (id_direccion, direccion, localidad)
SELECT DIRECCION_USUARIO_DIRECCION, l.localidad,pro.provincia
FROM gd_esquema.Maestra
JOIN persona as p ON p.DIRECCION_USUARIO_NOMBRE = p.nombre
JOIN localidad as l ON l.nombre_localidad = DIRECCION_USUARIO_LOCALIDAD
JOIN provincia as pro ON pro.nombre_provincia = DIRECCION_USUARIO_PROVINCIA

/*Parte 4*/

INSERT INTO producto_por_local (codigo_producto, id_local, precio)
SELECT  p.codigo,l.id_local, PRODUCTO_LOCAL_PRECIO
FROM gd_esquema.Maestra
JOIN producto p ON p.codigo =  PRODUCTO_LOCAL_CODIGO
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE

INSERT INTO horario ( id_local, hora_apertuta, hora_cierre, id_dia)
SELECT  l.id_local, HORARIO_LOCAL_HORA_APERTURA, HORARIO_LOCAL_HORA_CIERRE, d.id_dia
FROM gd_esquema.Maestra
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE
JOIN dia d ON d.descripcion =  HORARIO_LOCAL_DIA

/*Parte 5*/

INSERT INTO reclamo (nro_reclamo, id_pedido, tipo_reclamo, fecha, descripcion, fecha_solucion, estado, solucion, calificacion, id_usuario)
SELECT RECLAMO_NRO, pp.id_pedido, tr.id_tipo, RECLAMO_FECHA, RECLAMO_DESCRIPCION, RECLAMO_FECHA_SOLUCION, RECLAMO_ESTADO, RECLAMO_SOLUCION, RECLAMO_CALIFICACION, u.id_usuario
FROM gd_esquema.Maestra
JOIN pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO -- no se si esta bien este
JOIN tipo_reclamo as tr ON tr.descripcion = RECLAMO_TIPO
JOIN persona as p ON  p.nombre = USUARIO_NOMBRE 
JOIN usuario as u ON u.id_usuario = p.id_persona

INSERT INTO cupon_por_pedido (nro_cupon, id_pedido)
SELECT cd.nro, pp.id_pedido
FROM gd_esquema.Maestra
JOIN cupon_descuento cd ON cd.nro =  CUPON_NRO 
JOIN pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO

INSERT INTO producto_por_pedido (id_pedido, codigo_producto, id_local, cantidad, total_producto)
SELECT  pp.id_pedido, p.codigo, l.id_local, PRODUCTO_CANTIDAD, PRODUCTO_LOCAL_PRECIO --no se si esta bien todo esto en gral, mas puntualmente el ultimo
FROM gd_esquema.Maestra
JOIN pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO
JOIN producto p ON p.codigo =  PRODUCTO_LOCAL_CODIGO
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE

/*Parte 6*/

INSERT INTO cupon_por_reclamo (nro_cupon, nro_reclamo)
SELECT cd.nro, r.nro_reclamo
FROM gd_esquema.Maestra
JOIN cupon_descuento cd ON cd.nro =  CUPON_NRO 
JOIN reclamo r ON r.nro_reclamo = RECLAMO_NRO -- o seria CUPON_NRO o CUPON_RECLAMO_NRO?

*/