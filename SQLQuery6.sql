SELECT * FROM gd_esquema.Maestra
go

create trigger insert_envio_mensajeria_tr on envio_de_mensajeria instead of insert as
begin
		--INSERT INTO envio_de_mensajeria (id_envio, id_envio_mensajeria, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria)
		--SELECT i.id_envio
		--FROM gd_esquema.Maestra m
		--JOIN inserted i ON i.id_envio = m.

		INSERT INTO envio (id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
		fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
		SELECT  u.id_usuario, r.id_repartidor, e.id_estado, mp.id_medioPago, m.ENVIO_MENSAJERIA_PRECIO_ENVIO,
				m.ENVIO_MENSAJERIA_PROPINA, m.ENVIO_MENSAJERIA_OBSERV, m.ENVIO_MENSAJERIA_FECHA, m.ENVIO_MENSAJERIA_FECHA_ENTREGA,
				m.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, m.ENVIO_MENSAJERIA_CALIFICACION, m.ENVIO_MENSAJERIA_DIR_ORIG
		FROM gd_esquema.Maestra m
		JOIN persona p_u ON p_u.DNI = m.USUARIO_DNI
		JOIN usuario u ON u.id_persona = p_u.id_persona
		JOIN persona p_r ON p_r.DNI = m.REPARTIDOR_DNI
		JOIN repartidor r ON r.id_persona = p_r.id_persona
		JOIN estado e ON m.ENVIO_MENSAJERIA_ESTADO = e.descripcion
		JOIN medio_de_pago mp ON mp.nro_tarjeta = m.MEDIO_PAGO_NRO_TARJETA
		JOIN direccion d_d ON d_d.
		JOIN inserted i ON i.id_envio_mensajeria = m.ENVIO_MENSAJERIA_NRO
		

		INSERT INTO envio (id_usuario, id_repartidor, id_estado, id_medioPago, precio_envio, propina, observaciones,
		fecha_pedido, fecha_entrega, tiempo_estimado_entrega, calificacion, dir_origen, dir_destino)
		SELECT u.id_usuario, r.id_repartidor, e.id_estado, mp.id_medioPago, ENVIO_MENSAJERIA_PRECIO_ENVIO,
		ENVIO_MENSAJERIA_PROPINA, ENVIO_MENSAJERIA_OBSERV, ENVIO_MENSAJERIA_FECHA, ENVIO_MENSAJERIA_FECHA_ENTREGA,
		ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, ENVIO_MENSAJERIA_CALIFICACION, dest.id_direccion, orig.id_direccion
		FROM gd_esquema.Maestra
		JOIN persona as p1 ON p1.nombre = USUARIO_NOMBRE
		JOIN persona as p2 ON p2.nombre = REPARTIDOR_NOMBRE
		JOIN usuario as u ON p1.id_persona = u.id_persona
		JOIN repartidor as r ON p2.id_persona = r.id_persona
		JOIN estado as e ON e.descripcion = ENVIO_MENSAJERIA_ESTADO
		JOIN medio_de_pago as mp ON mp.nro_tarjeta = MEDIO_PAGO_NRO_TARJETA
		JOIN direccion as dest ON dest.direccion = ENVIO_MENSAJERIA_DIR_DEST
		JOIN direccion as orig ON orig.direccion = ENVIO_MENSAJERIA_DIR_ORIG
		WHERE ENVIO_MENSAJERIA_NRO IS NOT NULL

		--ident_current('envio')
		
end;

drop trigger insert_envio_mensajeria_tr

insert into envio_de_mensajeria (id_envio_mensajeria, id_envio, km, tipo_paquete, valor_asegurado, precio_seguro, total_envio_mensajeria) values (0,0,0,0,0,0,0)








