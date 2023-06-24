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

CREATE VIEW DATAZO.total_no_cobrado_por_local (local_, Dia,franja_horaria, total) --solo agarre pedidos producto
AS
SELECT l.nombre, d.descripcion, rh.rangoHorario, sum(pp.total_pedido) as 'Total No Cobrado'
FROM DATAZO.hecho_envio e join DATAZO.hecho_pedido_productos pp on pp.id_envio = e.id_envio
join DATAZO.dimension_dia d on d.id_dia = e.dia_pedido
join DATAZO.dimension_rango_horario rh on rh.rangoHorario = e.id_rango_horario_pedido
join DATAZO.dimension_local_ l on l.id_local = pp.id_local
where e.id_estado = '1' 
group by l.nombre, d.descripcion, rh.rangoHorario,
order by 1 
GO


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

CREATE VIEW DATAZO.promedio_mensual_valor_asegurado (mes, tipo_paquete , promedio)
AS
SELECT t.mes, tp.tipo, avg(sum(em.valor_asegurado)) as 'Promedio valores asegurados'
FROM  DATAZO.hecho_envio_de_mensajeria em join DATAZO.dimension_tipo_paquete tp on tp.id_tipo = em.tipo_paquete
join DATAZO.hecho_envio e on e.id_envio = em.id_envio
join DATAZO.dimension_tiempo t on t.id_tiempo = e.tiempo_pedido
group by t.mes, tp.tipo 
order by 1

go
  
/*Cantidad de reclamos mensuales recibidos por cada local en función del
día de la semana y rango horario.*/

CREATE VIEW DATAZO.reclamos_mensuales_por_local (mes, nombre_local,cant_reclamos, dia, rango_horario)
AS
SELECT t.mes,l.nombre, count(r.nro_reclamo) as 'Cantidad de Reclamos', d.descripcion, rh.rangoHorario 
FROM  DATAZO.dimension_local_ l join DATAZO.hecho_pedido_productos p on l.id_local = p.id_local
join DATAZO.hecho_reclamo r on r.id_pedido = p.id_pedido
join DATAZO.dimension_dia d on d.id_dia = r.dia_inicio
join DATAZO.dimension_tiempo t on t.id_tiempo = r.tiempo_inicio
join DATAZO.dimension_rango_horario rh on rh.rangoHorario = DATAZO.convertir_a_rango_horario(r.horario_inicio)  
group by t.mes,l.nombre, d.descripcion, rh.rangoHorario 
order by 1,3

go

  
/*Tiempo promedio de resolución de reclamos mensual según cada tipo de
reclamo y rango etario de los operadores.
El tiempo de resolución debe calcularse en minutos y representa la
diferencia entre la fecha/hora en que se realizó el reclamo y la fecha/hora
que se resolvió.*/

CREATE VIEW DATAZO.tiempo_prom_resol_reclamo (tiempo, tipo_paquete , promedio)
AS
SELECT tr.descripcion, re.rango_etario, avg(DATEDIFF(MINUTE, r.horario_inicio, r.horario_solucion)) as 'Tiempo Promedio Resolucion'
FROM  DATAZO.hecho_reclamo r join DATAZO.dimension_tipo_reclamo tr on tr.id_tipo = r.tipo_reclamo
join DATAZO.hecho_operador o on o.id_operador = r.id_operador
join DATAZO.hecho_persona p on p.id_persona = o.id_persona
join DATAZO.dimension_rango_etario re on re.id_rango = p.id_rango
group by tr.descripcion, re.rango_etario
order by 1

go
  
/*Monto mensual generado en cupones a partir de reclamos.*/

CREATE VIEW DATAZO.monto_mensual_cupones_por_reclamos (Monto, Mes)
AS
SELECT SUM(monto) as 'Monsto Mensual Generado Por Cupones', t.mes
FROM DATAZO.hecho_cupon_x_reclamo AS cxr JOIN DATAZO.hecho_cupon_de_descuento AS c ON c.id_cupon = cxr.id_cupon
join DATAZO.dimension_tiempo t on t.id_tiempo = c.tiempo_alta 
GROUP BY t.mes
GO
