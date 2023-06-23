--vistas

/*Día de la semana y franja horaria con mayor cantidad de pedidos según la
localidad y categoría del local, para cada mes de cada año.*/

--CREATE VIEW DATAZO.dia_y_horario_con_mas_pedidos
--AS 
--SELECT *
--FROM hecho_pedido_productos AS p JOIN dimension_dia AS d ON p.id_dia = d.id_dia
--GO

/*Monto total no cobrado por cada local en función de los pedidos
cancelados según el día de la semana y la franja horaria (cuentan como
pedidos cancelados tanto los que cancela el usuario como el local).*/


/*Valor promedio mensual que tienen los envíos de pedidos en cada
localidad.*/

CREATE VIEW DATAZO.promedio_mensual_envios (Dia,Localidad)
AS
SELECT AVG(tarifa_servicio), dir_origen
FROM hecho_pedido_productos AS p JOIN hecho_envio AS e ON p.id_envio = e.id_envio
GROUP BY dir_origen, MONTH(fecha_entrega)
GO

/*Desvío promedio en tiempo de entrega según el tipo de movilidad, el día
de la semana y la franja horaria.
El desvío debe calcularse en minutos y representa la diferencia entre la
fecha/hora en que se realizó el pedido y la fecha/hora que se entregó en
comparación con los minutos de tiempo estimados.
Este indicador debe tener en cuenta todos los envíos, es decir, sumar tanto
los envíos de pedidos como los de mensajería.*/

CREATE VIEW DATAZO.desvio_promedio_de_entrega (Promedio, Movilidad, Dia, FranjaHoraria)
AS  --lo que esta adentro del average esta mal, lo tengo que repensar. el problema esta en que tenes datetime y decimal
SELECT AVG(HOUR(fecha_entrega - fecha_pedido)*60 + MINUTE(fecha_entrega - fecha_pedido) - tiempo_estimado_entrega), tipo_movilidad, descripcion, rangoHorario
FROM hecho_envio AS e JOIN hecho_repartidor AS r ON e.id_repartidor = r.id_repartidor 
                      JOIN dimension_tipo_movilidad AS tm ON tm.id_tipo_movilidad = r.tipo_movilidad 
                      JOIN dimension_dia AS d ON d.id_dia = e.? --hecho_envio no tiene id_dia asi que no se
                      JOIN dimension_rango_horario AS rh ON rh.id_rango_horario = e.id_rango_horario_entrega
GROUP BY 2,3,4
GO


/*Monto total de los cupones utilizados por mes en función del rango etario
de los usuarios.*/

CREATE VIEW DATAZO.total_cupones_utilizados_por_mes_por_edad (MontoTotal,RangoEtario)
AS
SELECT sum(monto), rango_etario
FROM hecho_cupon_de_descuento AS c JOIN hecho_usuario AS u ON c.id_usuario = u.id_usuario 
                                   JOIN hecho_persona AS p ON p.id_persona = u.id_persona 
                                   JOIN dimension_rango_etario AS r ON r.id_rango = p.id_rango
GROUP BY rango_etario
GO

--*no se como tomar la fecha en el que el cupon se uso, solo hay fecha de alta y de vencimiento
--doy por sentado que se traen solo los cupones usados como dice en el DER


/*Promedio de calificación mensual por local.*/

CREATE VIEW DATAZO.promedio_calificacion_mensual (CalificacionPromedio, NombreLocal)
AS
SELECT AVG(calificacion), nombre
FROM hecho_pedido_productos AS p JOIN dimension_local_ AS l ON l.id_local = p.id_local 
                                 JOIN hecho_envio AS e ON e.id_envio = p.id_envio
GROUP BY nombre
GO

/*Porcentaje de pedidos y mensajería entregados mensualmente según el
rango etario de los repartidores y la localidad.
Este indicador se debe tener en cuenta y sumar tanto los envíos de pedidos
como los de mensajería.
El porcentaje se calcula en función del total general de pedidos y envíos
mensuales entregados.*/

/*Promedio mensual del valor asegurado (valor declarado por el usuario) de
los paquetes enviados a través del servicio de mensajería en función del
tipo de paquete.*/

/*Cantidad de reclamos mensuales recibidos por cada local en función del
día de la semana y rango horario.*/

/*Tiempo promedio de resolución de reclamos mensual según cada tipo de
reclamo y rango etario de los operadores.
El tiempo de resolución debe calcularse en minutos y representa la
diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora
que se resolvió.*/

/*Monto mensual generado en cupones a partir de reclamos.*/

CREATE VIEW DATAZO.monto_mensual_cupones_por_reclamos (Monto, Mes)
AS
SELECT SUM(monto), MONTH(tiempo_alta)
FROM hecho_cupones_x_reclamo AS cxr JOIN hecho_cupon_de_descuento AS c ON c.id_cupon = cxr.id_cupon
GROUP BY MONTH(tiempo_alta)
GO
