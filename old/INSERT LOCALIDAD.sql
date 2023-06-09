CREATE TABLE localidad (id_localidad INT NOT NULL IDENTITY(1,1), id_provincia INT, nombre_localidad NVARCHAR(255));

--localidades de usuario
INSERT INTO localidad (id_provincia, nombre_localidad)
SELECT p.id_provincia, DIRECCION_USUARIO_LOCALIDAD
FROM gd_esquema.Maestra
JOIN provincia as p ON p.nombre_provincia = DIRECCION_USUARIO_PROVINCIA
GROUP BY DIRECCION_USUARIO_LOCALIDAD

--localidades de local
INSERT INTO localidad (id_provincia, nombre_localidad)
SELECT p.id_provincia, LOCAL_LOCALIDAD
FROM gd_esquema.Maestra
JOIN provincia as p ON p.nombre_provincia = LOCAL_PROVINCIA
GROUP BY DIRECCION_USUARIO_LOCALIDAD