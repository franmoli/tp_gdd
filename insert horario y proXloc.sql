


INSERT INTO horario (id_horario, id_local, hora_apertuta, hora_cierre, id_dia)
SELECT  l.id_local, HORARIO_LOCAL_HORA_APERTURA, HORARIO_LOCAL_HORA_CIERRE, d.id_dia
FROM gd_esquema.Maestra
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE
JOIN dia d ON d.descripcion =  HORARIO_LOCAL_DIA


INSERT INTO producto_por_local (codigo_producto, id_local, precio)
SELECT  p.codigo,l.id_local, PRODUCTO_LOCAL_PRECIO
FROM gd_esquema.Maestra
JOIN producto p ON p.codigo =  PRODUCTO_LOCAL_CODIGO
JOIN local_ l ON l.nombre =  LOCAL_NOMBRE
