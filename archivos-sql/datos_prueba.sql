-- orden de inserts 1 ciudad, 2 sucursal, 3 empleados, 4 movimientos

-- 1 ciudades

insert into fichadas.ciudad (nombre) values
('RAWSON'),
('TRELEW'),
('MADRYN'),
('COMODORO RIVADAVIA'),
('ESQUEL');

-- 2 sucursales    

insert into fichadas.sucursal (id_ciudad) values
(1),(1),(1),
(2),(2),(2),
(3),(3),(3),
(4),(4),(4),
(5),(5),(5);

-- 3 empleados
insert into fichadas.empleado 
(nombre,apellido,correo,documento,id_ciudad,id_sucursal,fecha_nacimiento,sueldo) values
('pepe','paleta','pepe@paleta.com',30000000,1,1,'2000-01-01',500000.00),
('hugo','hamburguesa','hugo@hamburg.com',25000000,2,2,'1980-12-12',500000.00),
('marta','milanesa','marta@mila.com',20000000,3,3,'1950-12-12',800000.00),
('toby','taco','toby@taco.com',40000000,4,4,'2004-04-04',400000.00),
('charly','choripan','charly@choripan.com',23000000,5,5,'1960-03-03',700000.00);

 -- vamos a asignar a estos empleados como gerentes de algunas sucursales.

UPDATE fichadas.sucursal
SET id_empleado_gerente = 1
WHERE id = 1 or id = 2 or id = 3;

UPDATE fichadas.sucursal
SET id_empleado_gerente = 2
WHERE id = 4 or id = 5 or id = 6;

UPDATE fichadas.sucursal
SET id_empleado_gerente = 3
WHERE id = 7 or id = 8 or id = 9;

UPDATE fichadas.sucursal
SET id_empleado_gerente = 4
WHERE id = 10 or id = 11 or id = 12;

UPDATE fichadas.sucursal
SET id_empleado_gerente = 5
WHERE id = 13 or id = 14 or id = 15;


-- 4 vamos a agregar 1 movimiento de cada uno en cada sucursal
id  serial,
    id_empleado int NOT NULL,
    id_sucursal int NOT NULL,
    fecha_hora_ingreso timestamp NOT NULL CHECK (fecha_hora_ingreso > '2000-01-01'),

INSERT INTO events (event_time)
VALUES ('2023-10-19 14:30:00');

insert into fichadas.movimiento (id_empleado,id_sucursal,fecha_hora_ingreso)
values
(1,1,'2001-10-10 08:00:00'), (1,2,'2002-11-10 08:00:00'), (1,3,'2003-12-10 08:00:00'),
(2,4,'2001-10-10 08:30:00'), (2,5,'2002-11-10 08:30:00'), (2,6,'2003-12-10 08:30:00'),
(3,7,'2001-10-10 10:30:00'), (3,8,'2002-11-10 10:30:00'), (3,9,'2003-12-10 10:30:00'),
(4,10,'2001-10-10 07:30:00'), (4,11,'2002-11-10 07:30:00'), (4,12,'2003-12-10 07:30:00'),
(5,13,'2001-10-10 9:30:00'), (5,14,'2002-11-10 9:30:00'), (5,15,'2003-12-10 9:30:00');

--FIN DE DATOS DE PUREBA A EMPEZAR CON EL PROYECTO