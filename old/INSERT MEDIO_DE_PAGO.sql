INSERT INTO medio_de_pago (id_usuario, tipo_medioPago, nro_tarjeta, tipo, marca_tarjeta)
SELECT u.id_usuario, tp.id_tipo_medioPago, MEDIO_PAGO_NRO_TARJETA, MARCA_TARJETA
FROM gd_esquema.Maestra
JOIN persona AS p ON p.nombre = USUARIO_NOMBRE
JOIN usuario AS u ON u.id_persona = p.id_persona
JOIN Tipo_Medio_pago as tp ON t.descripcion = MEDIO_PAGO_TIPO
GROUP BY USUARIO_NOMBRE, MEDIO_PAGO_NRO_TARJETA, MEDIO_PAGO_TIPO, MARCA_TARJETA

