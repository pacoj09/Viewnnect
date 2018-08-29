--Script--
create database DB_MATRICULAS;

go

use DB_MATRICULAS;

--Drop Tables--
if exists(select * from sys.objects where name='alumno') drop table alumno;
if exists(select * from sys.objects where name='profesor') drop table profesor;
if exists(select * from sys.objects where name='contacto') drop table contacto;
if exists(select * from sys.objects where name='persona') drop table persona;
if exists(select * from sys.objects where name='carrera') drop table carrera;

--Tablas--
create table persona
(
id int identity not null,
id_carrera int not null,
cedula varchar(50) null,
nombre varchar(50) null,
edad int null,
profesion varchar(100) null
);

create table profesor(
id int identity not null,
id_persona int not null,
tipo_profesor varchar(100)
);

create table alumno(
id int identity not null,
id_persona int not null,
beca varchar(50)
);

create table contacto
(
id int identity not null,
id_persona int not null,
tipo varchar(50) not null,
descripcion varchar(150) not null 
);

create table carrera
(
id int identity not null,
nombre varchar(50) null,
especialidad varchar(50) null,
creditos int null,
cupos int null
);

--alters--
alter table carrera add constraint PK_carrera primary key (id);

alter table persona add constraint PK_persona primary key (id);
alter table persona add constraint FK_persona_carrera foreign key (id_carrera) references carrera (id);

alter table contacto add constraint PK_contacto primary key (id, id_persona);
alter table contacto add constraint FK_contacto_persona foreign key (id_persona) references persona (id);

alter table alumno add constraint PK_alumno primary key (id, id_persona);
alter table alumno add constraint FK_alumno_persona foreign key (id_persona) references persona (id);

alter table profesor add constraint PK_profesor primary key (id, id_persona);
alter table profesor add constraint FK_profesor_persona foreign key (id_persona) references persona (id);

--datos--
insert into carrera values('Ingenieria Informatica', 'Desarrollo', 370, 3800);
insert into carrera values('Ingenieria Quimica', 'No Posee', 220, 2500);
insert into carrera values('Derecho', 'Todas las Ramas', 400, 4000);
insert into carrera values('Musica', 'No Posee', 220, 4000);
insert into carrera values('Odontologia', 'No Posee', 550, 1000);
insert into carrera values('Desarollo de Video Juegos', 'Diseño y Desarollo', 350, 2000);
insert into carrera values('Ingenieria Electrica', 'No Posee', 300, 3200);

insert into persona values(1, 207060525, 'Francisco J', 25, 'Informatico');
insert into persona values(6, 205130124, 'Luis F', 29, 'Pintor');
insert into persona values(5, 108410381, 'Brenda M', 31, 'Odontologa');
insert into persona values(2, 903123041, 'Alberto M', 31, 'Biologo');
insert into persona values(6, 103884013, 'Marvin A', 30, 'Diseñador Grafico');
insert into persona values(3, 203840254, 'Fabio A', 28, 'Abogado');
insert into persona values(4, 204143013, 'Paola G', 40, 'Doctora');
insert into persona values(7, 603120412, 'Carlos V', 36, 'Constructor');
insert into persona values(3, 207690568, 'Maria J', 22, 'Abogada');
insert into persona values(3, 409310031, 'Carlos M', 26, 'Abogado');
insert into persona values(1, 109322144, 'Juan P', 24, 'Informatico');

insert into profesor values(1, 'Informatica Empresarial');
insert into profesor values(6, 'Derecho Penal');
insert into profesor values(7, 'Odontologia');
insert into profesor values(9, 'Derecho Administrativo');
insert into profesor values(11, 'Programacion Orientada a Objetos');

insert into alumno values(2, 'No Posee');
insert into alumno values(3, 'Cincuenta Porciento');
insert into alumno values(4, 'No Posee');
insert into alumno values(5, 'Cien Porciento');
insert into alumno values(8, 'Treinta Porciento');
insert into alumno values(10, 'No Posee');

insert into contacto values(1, 'Celular', '88345647');
insert into contacto values(1, 'Correo', 'alvarado@ulacit.co.cr');
insert into contacto values(3, 'Celular', '7457726');
insert into contacto values(4, 'Celular', '984653255');
insert into contacto values(5, 'Celular', '784257442');
insert into contacto values(2, 'Correo', 'luisf@ulacit.co.cr');
insert into contacto values(6, 'Correo', 'informaticos@ulacit.co.cr');
insert into contacto values(7, 'Correo', 'odontologia@ulacit.co.cr');
insert into contacto values(11, 'Celular', '9878712341');
insert into contacto values(11, 'Correo', 'vargas@ulacit.co.cr');
insert into contacto values(10, 'Celular', '877123412');
insert into contacto values(9, 'Correo', 'abogado@ulacit.co.cr');
insert into contacto values(8, 'Celular', '971234513');
insert into contacto values(3, 'Correo', 'brendam@ulacit.co.cr');