
CREATE TABLE direccion (id_direccion INT, id_persona INT, direccion VARCHAR(255), localidad INT);--, provincia INT);correccion tp
CREATE TABLE medio_de_pago (id_medioPago INT, id_usuario INT, tipo_medioPago INT, nro_tarjeta VARCHAR(50), tipo VARCHAR(50), marca_tarjeta VARCHAR(100));
CREATE TABLE cupon_descuento (nro DECIMAL, id_usuario INT, monto DECIMAL(18,2), fecha_alta DATE, fecha_vencimiento DATE, tipo VARCHAR(50), usado TINYINT);
CREATE TABLE categoria (id_categoria INT, id_tipo INT, descripcion VARCHAR(255));
CREATE TABLE envio (id_envio INT, id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2), propina DECIMAL(18,2), observaciones VARCHAR(255),
					fecha_pedido DATE, fecha_entrega DATE, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT);
--CREATE TABLE localidad_por_repartidor (id_repartidor INT, id_localidad INT); correccion tp
CREATE TABLE local_ (id_local INT, id_direccion INT, id_duenio INT, nombre VARCHAR(255), descripcion VARCHAR(255), tipo INT, categoria INT);--CREO Q SIN EL _ NO FUNCARIA

--Direccion
ALTER TABLE direccion 
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_localidad FOREIGN KEY (localidad) REFERENCES localidad(id_localidad);
/*correccion tp
ALTER TABLE direccion 
	ADD CONSTRAINT fk_direccion_provincia FOREIGN KEY (provincia) REFERENCES provincia(id_provincia);
*/
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
--Envio
ALTER TABLE envio 
	ADD CONSTRAINT pk_envio PRIMARY KEY (id_envio);
ALTER TABLE envio 
	ADD CONSTRAINT fk_envio_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
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
/* correccion tp
--Localidad x repartidor
ALTER TABLE localidad_por_repartidor 
	ADD CONSTRAINT pk_localidad_por_repartidor PRIMARY KEY (id_repartidor);
ALTER TABLE localidad_por_repartidor 
	ADD CONSTRAINT fk_localidad_por_repartidor_repartidor FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor);
ALTER TABLE localidad_por_repartidor 
	ADD CONSTRAINT fk_localidad_por_repartidor_local FOREIGN KEY (id_local) REFERENCES local_(id_local);
*/
--Local
ALTER TABLE local_ 
	ADD CONSTRAINT local_ PRIMARY KEY (id_local)
ALTER TABLE local_ 
	ADD CONSTRAINT fk_local_dir FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion);
ALTER TABLE local_ 
	ADD CONSTRAINT fk_local_duenio FOREIGN KEY (id_duenio) REFERENCES duenio(id_duenio);


