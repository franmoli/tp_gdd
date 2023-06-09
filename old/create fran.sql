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
dia nvarchar(50)
);

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

create table cupon_por_reclamo (
nro_cupon int primary key references cupon_de_descuento,
nro_reclamo int references reclamo
);

create table cupon_por_pedido (
nro_cupon int primary key references cupon_de_descuento,
id_pedido int references pedido_productos
);
