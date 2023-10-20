create database activeweb_orm;
create schema fichadas;

create table fichadas.ciudad(
    id serial,
    nombre text NOT NULL CHECK ( length(nombre) > 3),   

    CONSTRAINT pk_ciudad
	PRIMARY KEY (id)
);

--luego de crear la tabla empleados vamos a agregar la constrain foreing key de id empleado
create table fichadas.sucursal(
    id serial,
    id_ciudad int NOT NULL,
    id_empleado_gerente int,

    CONSTRAINT pk_sucursal
	PRIMARY KEY (id),
	
    CONSTRAINT fk_ciudad
	FOREIGN KEY (id_ciudad) 
	REFERENCES fichadas.ciudad(id)
);

create table fichadas.empleado(
    id  serial,
    nombre text NOT NULL CHECK ( length(nombre) > 3),   
    apellido text NOT NULL CHECK ( length(nombre) > 3),
    correo  text NOT NULL CHECK ( length(nombre) > 3),   
    documento   int NOT NULL CHECK (documento > 1000000), 
    id_ciudad   int NOT NULL,
    id_sucursal int NOT NULL,
    fecha_nacimiento timestamp NOT NULL CHECK (fecha_nacimiento > '1900-01-01'),
    fecha_baja timestamp,
    sueldo  real NOT NULL CHECK (sueldo > 50000),

    CONSTRAINT pk_empleado
	PRIMARY KEY (id),
	
    CONSTRAINT fk_ciudad
	FOREIGN KEY (id_ciudad) 
	REFERENCES fichadas.ciudad(id),

    CONSTRAINT fk_sucursal
	FOREIGN KEY (id_sucursal) 
	REFERENCES fichadas.sucursal(id)
);

ALTER TABLE fichadas.sucursal
ADD CONSTRAINT fk_empleado_gerente
FOREIGN KEY (id_empleado_gerente)
REFERENCES fichadas.empleado (id);


create table fichadas.movimiento(
    id  serial,
    id_empleado int NOT NULL,
    id_sucursal int NOT NULL,
    fecha_hora_ingreso timestamp NOT NULL CHECK (fecha_hora_ingreso > '2000-01-01'),

    CONSTRAINT pk_movimiento
	PRIMARY KEY (id),
	
    CONSTRAINT fk_empleado
	FOREIGN KEY (id_empleado) 
	REFERENCES fichadas.empleado(id),

    CONSTRAINT fk_sucursal
	FOREIGN KEY (id_sucursal) 
	REFERENCES fichadas.sucursal(id)
);