create table ids(
	id_viaje int not null auto_increment,
	id_usuario int auto_increment(2),
	PRIMARY KEY(id_viaje)
);

create table paquete_viaje(
	id_paquete int not null auto_increment,
	nombre_agencia varchar(50),
	nombre_viaje varchar(50),
	descripcion varchar(255), /*Un viaje encantador al desierto con lso camellos*/
	precio_viaje varchar(50),
	destino_viaje varchar(50) /*la ciudad x del pais x*/,
	país_viaje varchar(50) /*Marruecos*/,
	estado_viaje varchar(50) /*alguna parte de ese país*/,
	encargado_viaje varchar(50),
	fecha_viaje date,
	PRIMARY KEY(id_paquete)
);

create table usuario(
	id_usuario int not null auto_increment,
	dni_usuario int not null,
	nombre_completo_usuario varchar(50),
	apellidos_usuario varchar(50),
	pasaporte_usuario int null,
	PRIMARY KEY(id_usuario)
);

SELECT dni_usuario,nombre_completo_usuario FROM usuario WHERE id_usuario=375;

Output: 15048578, Hugo Armando

if user exists
-> search in $table 
-> if is it premium or not
:: select * from $tabla where $column if exists