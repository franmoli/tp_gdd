INSERT INTO local_(id_direccion, nombre, descripcion, tipo)
SELECT DISTINCT d.id_direccion, LOCAL_NOMBRE, LOCAL_DESCRIPCION, t.id_tipo
FROM gd_esquema.Maestra
JOIN tipo_local as t ON t.descripcion = LOCAL_TIPO
JOIN direccion as d ON d.direccion = LOCAL_DIRECCION
WHERE LOCAL_NOMBRE IS NOT NULL
