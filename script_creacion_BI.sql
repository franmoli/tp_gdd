
CREATE TABLE DATAZO.dimension_tiempo(id_tiempo INT NOT NULL IDENTITY(1,1), anio INT, mes INT)
CREATE TABLE DATAZO.dimension_local_(id_local INT NOT NULL IDENTITY(1,1), nombre varchar(50))
CREATE TABLE DATAZO.dimension_categoria_tipo_local(id_categoria_tipo_local INT NOT NULL IDENTITY(1,1), 
categoria varchar(15), tipo varchar(15))
CREATE TABLE DATAZO.dimension_rango_horario(id_rango_horario INT NOT NULL IDENTITY(1,1), horaInicial INT, horaFinal INT)
CREATE TABLE DATAZO.dimension_estado_reclamo(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_tipo_reclamo(id_tipo INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_rango_etario(id_rango INT NOT NULL IDENTITY(1,1), edadInicial INT, edadFinal INT)
CREATE TABLE DATAZO.dimension_tipo_movilidad(id_tipo_movilidad INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_dia(id_dia INT NOT NULL IDENTITY(1,1), descripcion CHAR)
CREATE TABLE DATAZO.dimension_tipo_paquete(id_tipo INT NOT NULL IDENTITY(1,1), tipo VARCHAR(20))
CREATE TABLE DATAZO.dimension_estado_mensajeria(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_tipo_medio_pago(id_tipo_medio_pago INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_estado_pedido(id_estado INT NOT NULL IDENTITY(1,1), descripcion VARCHAR(20))
CREATE TABLE DATAZO.dimension_provincia_localidad(id_provincia_localidad INT NOT NULL IDENTITY(1,1), provincia VARCHAR(30),
localidad VARCHAR (30))

CREATE TABLE DATAZO.hecho_pedido_productos(id_pedido INT NOT NULL, id_envio INT, id_local INT,
 tarifa_servicio INT, total_pedido DECIMAL(18,2))
CREATE TABLE DATAZO.hecho_cupon_x_pedido(nro_cupon INT, id_pedido INT)
CREATE TABLE DATAZO.hecho_cupon_de_descuento(id_cupon INT IDENTITY(1,1) NOT NULL, nro DECIMAL(18,2) NOT NULL, id_usuario INT NOT NULL, 
monto DECIMAL(18,2), fecha_alta DATETIME, fecha_vencimiento DATETIME, tipo NVARCHAR(50))
CREATE TABLE DATAZO.hecho_cupon_x_reclamo(id_cupon INT NOT NULL, nro_cupon decimal(18,2) NOT NULL, nro_reclamo decimal(18,0))
CREATE TABLE DATAZO.hecho_persona(id_persona INT NOT NULL IDENTITY(1,1), fecha_nac DATE)
CREATE TABLE DATAZO.hecho_usuario(id_usuario INT NOT NULL IDENTITY(1,1), id_persona INT, fecha_registro DATETIME2(3))
CREATE TABLE DATAZO.hecho_reclamo(nro_reclamo DECIMAL(18,0) NOT NULL, id_pedido INT, tipo_reclamo INT, fecha DATETIME, fecha_solucion DATETIME,
 id_usuario INT, id_operador INT)
CREATE TABLE DATAZO.hecho_repartidor(id_repartidor INT NOT NULL IDENTITY(1,1), id_persona INT, tipo_movilidad INT, localidad_activa INT)
CREATE TABLE DATAZO.hecho_operador(id_operador INT NOT NULL IDENTITY(1,1), id_persona INT)
CREATE TABLE DATAZO.hecho_envio(id_envio INT IDENTITY(1,1), id_usuario INT, id_repartidor INT, id_estado INT, id_medioPago INT, precio_envio DECIMAL(18,2),
					fecha_pedido DATETIME, fecha_entrega DATETIME, tiempo_estimado_entrega DECIMAL(18,2), calificacion DECIMAL(18,0), dir_origen INT, dir_destino INT)
CREATE TABLE DATAZO.hecho_envio_de_mensajeria(id_envio INT, id_envio_mensajeria DECIMAL(18,0) NOT NULL, 
					tipo_paquete INT, valor_asegurado decimal(18,2), precio_seguro decimal(18,2),)