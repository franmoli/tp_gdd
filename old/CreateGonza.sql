use GD2015C1

CREATE TABLE provincia (id_provincia INT, nombre_provincia NVARCHAR(255));
CREATE TABLE tipo_movilidad (id_tipo_movilidad INT, descripcion_movilidad NVARCHAR(50));
CREATE TABLE localidad (id_localidad INT, id_provincia INT, nombre_localidad NVARCHAR(255));
CREATE TABLE operador (id_operador INT, id_persona INT);
CREATE TABLE usuario (id_usuario INT, id_persona INT, fecha_registro DATETIME2(3));
CREATE TABLE repartidor (id_repartidor INT, id_persona INT, tipo_movilidad INT, localidad_activa INT);

ALTER TABLE provincia 
	ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia);
ALTER TABLE tipo_movilidad 
	ADD CONSTRAINT pk_tipo_movilidad PRIMARY KEY (id_movilidad);
ALTER TABLE operador
	ADD CONSTRAINT pk_operador PRIMARY KEY (id_operador);
ALTER TABLE operador
	ADD CONSTRAINT fk_operador_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE usuario 
	ADD CONSTRAINT pk PRIMARY KEY (id_usuario)
ALTER TABLE usuario 
	ADD CONSTRAINT fk_usuario_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE repartidor 
	ADD CONSTRAINT pk PRIMARY KEY (id_repartidor)
ALTER TABLE repartidor 
	ADD CONSTRAINT fk_repartidor_persona FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
