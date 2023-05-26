INSERT INTO cupon_descuento (nro, id_usuario, monto, fecha_alta, fecha_vencimiento, tipo, usado)
SELECT CUPON_NRO, u.id_usuario, CUPON_MONTO, CUPON_FECHA_ALTA, CUPON_FECHA_VENCIMIENTO, CUPON_TIPO, 0
FROM gd_esquema.Maestra
JOIN persona as p ON USUARIO_NOMBRE = p.nombre
JOIN usuario as u ON p.id_persona = u.id_persona
WHERE CUPON_NRO IS NOT NULL
