insert into Persona 
select DISTINCT USUARIO_NOMBRE nombre, USUARIO_APELLIDO apellido, USUARIO_DNI DNI, USUARIO_TELEFONO telefono, USUARIO_MAIL mail, USUARIO_FECHA_NAC fecha_nac
from gd_esquema.Maestra 