create database Actividad2T15;
use Actividad2T15;

create table piezas(
	codigo int not null,
    nombre nvarchar(100),
    primary key(codigo)
);

create table proveedores(
	id char(4) not null,
    nombre nvarchar(100),
    primary key (id)
);

create table suministra(
	codigopieza int not null,
	idproveedor char(4) not null,
    precio int,
    primary key(codigopieza,idproveedor),
    key(codigopieza),
    foreign key(codigopieza)
    references piezas(codigo),
    key(idproveedor),
    foreign key(idproveedor)
    references proveedores(id)
);

drop table suministra;

INSERT INTO piezas VALUE 
	(1,'Pieza1'),
    (2,'Pieza2'),
    (3,'Pieza3'),
    (4,'Pieza4'),
    (5,'Pieza5'),
    (6,'Pieza6'),
    (7,'Pieza7'),
    (8,'Pieza8'),
    (9,'Pieza9'),
    (10,'Pieza10');

INSERT INTO proveedores VALUE 
	('000A','Proveedor1'),
    ('000B','Proveedor2'),
    ('000C','Proveedor3'),
    ('000D','Proveedor4'),
    ('000E','Proveedor5'),
    ('000F','Proveedor6'),
    ('000G','Proveedor7'),
    ('000H','Proveedor8'),
    ('000I','Proveedor9'),
    ('000J','Proveedor10');

INSERT INTO suministra VALUE 
	(1,'000A',50),
    (1,'000B',30),
    (2,'000C',70),
    (2,'000D',30),
    (3,'000E',70),
    (3,'000F',60),
    (4,'000F',30),
    (4,'000H',20),
    (5,'000I',50),
    (5,'000J',20);
    
    show full tables from actividad2T15;
    select * from suministra;
    select * from proveedores;
    select * from piezas;