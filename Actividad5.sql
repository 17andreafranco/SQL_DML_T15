create database Actividad5T15;
use Actividad5T15;

create table facultad(
	id int not null,
    nombre nvarchar(100),
	primary key(id)
);

create table investigadores(
	dni varchar(8),
    nombre nvarchar(255),
    facultad int,
    primary key(dni),
    key(facultad),
    foreign key(facultad)
    references facultad(id)
);

create table equipos(
	numserie char(4),
    nombre nvarchar(100),
    facultad int,
    primary key(numserie),
    key(facultad),
    foreign key(facultad)
    references facultad(id)
);

create table reserva(
	dni varchar(8),
    numserie char(4),
    comienzo datetime,
    fin datetime,
    primary key(dni,numserie),
    key(dni),
    foreign key(dni)
    references investigadores(dni),
    key(numserie),
    foreign key(numserie)
    references equipos(numserie)
);

INSERT INTO facultad VALUE 
	(1,'Facultad1'),
    (2,'Facultad2'),
    (3,'Facultad3'),
    (4,'Facultad4'),
    (5,'Facultad5'),
    (6,'Facultad6'),
    (7,'Facultad7'),
    (8,'Facultad8'),
    (9,'Facultad9'),
    (10,'Facultad10');
    
INSERT INTO investigadores VALUE 
	('0000001A','Andrea',1),
    ('0000002B','Oriol',1),
    ('0000003C','Alvaro',1),
    ('0000004D','Lucía',2),
    ('0000005E','Alejandro',2),
    ('0000006F','Pol',2),
    ('0000007G','David',3),
    ('0000008H','Andrea',3),
    ('0000009I','Nat',3),
    ('0000010J','Luis',4);
    
INSERT INTO equipos VALUE 
	('000A','Equipo1',1),
    ('000B','Equipo2',1),
    ('000C','Equipo3',1),
    ('000D','Equipo4',2),
    ('000E','Equipo5',2),
    ('000F','Equipo6',2),
    ('000G','Equipo7',5),
    ('000H','Equipo8',5),
    ('000I','Equipo9',5),
    ('000J','Equipo10',7);
    
INSERT INTO reserva VALUE
	('0000001A','000A','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000001A','000C','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000003C','000B','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000004D','000B','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000006F','000A','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000006F','000J','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000007G','000E','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000008H','000E','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000009I','000A','2022-06-17 15:30:40','2022-07-14 15:30:40'),
    ('0000009I','000I','2022-06-17 15:30:40','2022-07-14 15:30:40');

select * from facultad;
select * from investigadores;
select * from equipos;
select * from reserva;

    