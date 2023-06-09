--insert de envio de mensajes
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
JOIN estado as e ON e.descirpcion = ENVIO_MENSAJERIA_ESTADO
JOIN medio_de_pago as mp ON mp.nro_tarjeta = MEDIO_PAGO_NRO_TARJETA
JOIN direccion as dest ON dest.direccion = ENVIO_MENSAJERIA_DIR_DEST
JOIN direccion as orig ON orig.direccion = ENVIO_MENSAJERIA_DIR_ORIG
WHERE ENVIO_MENSAJERIA_NRO IS NOT NULL

--insert de pedidos
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
JOIN estado as e ON e.descirpcion = PEDIDO_ESTADO
JOIN medio_de_pago as mp ON mp.nro_tarjeta = MEDIO_PAGO_NRO_TARJETA
JOIN direccion as dest ON dest.direccion = DIRECCION_USUARIO_DIRECCION
JOIN direccion as orig ON orig.direccion = LOCAL_DIRECCION
WHERE PEDIDO_NRO IS NOT NULL