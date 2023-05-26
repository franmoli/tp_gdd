CREATE TABLE direccion (id_direccion INT, id_persona INT, direccion NVARCHAR(255), localidad INT, provincia INT)


--No se si va id_direccion
INSERT INTO direccion (id_direccion, id_persona, direccion, localidad, provincia)
SELECT p.id_persona, DIRECCION_USUARIO_DIRECCION, l.localidad,pro.provincia
FROM gd_esquema.Maestra
JOIN persona as p ON p.DIRECCION_USUARIO_NOMBRE = p.nombre
JOIN localidad as l ON l.nombre_localidad = DIRECCION_USUARIO_LOCALIDAD
JOIN provincia as pro ON pro.nombre_provincia = DIRECCION_USUARIO_PROVINCIA