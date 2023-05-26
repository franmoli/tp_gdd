INSERT INTO local_(id_direccion, nombre, descripcion, tipo)
SELECT DISTINCT d.id_direccion, LOCAL_NOMBRE, LOCAL_DESCRIPCION, t.id_tipo
JOIN tipo_local as t ON t.descripcion = LOCAL_TIPO
JOIN direccion as d ON d.direccion = LOCAL_DIRECCION
FROM gd_esquema.Maestra
WHERE LOCAL_NOMBRE IS NOT NULL
