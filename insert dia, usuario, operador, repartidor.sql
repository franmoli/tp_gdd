

INSERT INTO usuario ( id_persona, fecha_registro)
SELECT  p.id_persona, USUARIO_FECHA_REGISTRO
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI



INSERT INTO dia ( descripcion)
SELECT DISTINCT HORARIO_LOCAL_DIA
FROM gd_esquema.Maestra
WHERE HORARIO_LOCAL_DIA IS NOT NULL


INSERT INTO operador (, id_persona)
SELECT  p.id_persona
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI

INSERT INTO repartidor ( id_persona)
SELECT  p.id_persona
FROM gd_esquema.Maestra
JOIN persona p ON p.DNI =  USUARIO_DNI

