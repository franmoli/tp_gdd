CREATE TABLE Persona(id_persona INT, nombre VARCHAR(255), apellido VARCHAR(255), DNI INT, telefono DECIMAL(18,2), mail VARCHAR(255), fecha_nac DATE)

CREATE TABLE Producto(codigo VARCHAR(255), nombre VARCHAR(255), descripcion VARCHAR(255), precio DECIMAL(18,2), cantidad DECIMAL(18,2))

CREATE TABLE Tipo_Reclamo(id_tipo INT, descripcion VARCHAR(255))

CREATE TABLE Tipo_Medio_Pago(id_tipo_medioPago INT, descripcion VARCHAR(255))

CREATE TABLE Tipo_Paquete(id_tipo INT, tipo VARCHAR(255), alto_max DECIMAL, ancho_max DECIMAL, largo_max DECIMAL, peso_max DECIMAL, tipo_precio DECIMAL)

CREATE TABLE Estado (id_estado INT, descripcion VARCHAR(255))

CREATE TABLE Tipo_Local(id_tipo INT, descripcion VARCHAR(255))

ALTER TABLE Persona
	ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona)

ALTER TABLE Producto
	ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codigo_producto)

ALTER TABLE Tipo_Reclamo
	ADD CONSTRAINT pk_tipo_reclamo PRIMARY KEY (id_tipo)
	
ALTER TABLE Tipo_Medio_Pago
	ADD CONSTRAINT pk_tipo_medioPago PRIMARY KEY (id_tipo_medioPago)
	
ALTER TABLE Tipo_Paquete
	ADD CONSTRAINT pk_tipo_paquete PRIMARY KEY (id_tipo)
	
ALTER TABLE Estado
	ADD CONSTRAINT pk_estado PRIMARY KEY (id_estado)

ALTER TABLE Tipo_Local
	ADD CONSTRAINT pk_tipo_local PRIMARY KEY (id_tipo)