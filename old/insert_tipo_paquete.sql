INSERT INTO tipo_paquete(tipo, alto_max, ancho_max, largo_max, peso_max, tipo_precio) 
SELECT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO FROM gd_esquema.Maestra 
WHERE PAQUETE_TIPO IS NOT NULL
GROUP BY PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO
