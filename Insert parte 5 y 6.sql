


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
SELECT  pp.id_pedido, PRODUCTO_LOCAL_CODIGO, l.id_local, PRODUCTO_CANTIDAD, PRODUCTO_LOCAL_PRECIO --no se si esta bien todo esto en gral, mas puntualmente el ultimo
FROM gd_esquema.Maestra
JOIN pedido_productos as pp ON pp.id_pedido = PEDIDO_NRO
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE





INSERT INTO cupon_por_reclamo (nro_cupon, nro_reclamo)
SELECT cd.nro, r.nro_reclamo
FROM gd_esquema.Maestra
JOIN cupon_descuento cd ON cd.nro =  CUPON_NRO 
JOIN reclamo r ON r.nro_reclamo = RECLAMO_NRO -- o seria CUPON_NRO o CUPON_RECLAMO_NRO?

