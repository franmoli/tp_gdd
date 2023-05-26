

INSERT INTO usuario (id_usuario, id_persona, fecha_registro)
SELECT  p.id_persona, USUARIO_FECHA_REGISTRO
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI



INSERT INTO dia (id_dia, descripcion)
SELECT  HORARIO_LOCAL_DIA
FROM gd_esquema.Maestra
WHERE HORARIO_LOCAL_DIA IS NOT NULL


INSERT INTO operador (id_operador, id_persona)
SELECT  p.id_persona
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI

INSERT INTO repartidor (id_repartidor, id_persona)
SELECT  p.id_persona
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI

