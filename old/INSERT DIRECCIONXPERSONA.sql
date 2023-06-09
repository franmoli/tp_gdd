CREATE TABLE direccionesXpersona (id_persona INT NOT NULL, id_direccion INT NOT NULL)

INSERT INTO direccionesXpersona (id_persona, id_direccion)
SELECT p.id_persona, d.id_direccion
FROM gd_esquema.Maestra
JOIN persona AS p ON p.nombre = USUARIO_NOMBRE AND p.apellido = USUARIO_APELLIDO
JOIN localidad as l ON l.nombre_localidad = DIRECCION_USUARIO_LOCALIDAD
JOIN direccion as d ON d.direccion = DIRECCION_USUARIO_DIRECCION AND d.localidad = l.id_localidad
WHERE DIRECCION_USUARIO_DIRECCION IS NOT NULL
GROUP BY USUARIO_NOMBRE