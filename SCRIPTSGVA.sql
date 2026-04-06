create database Trazabilidad_SGVA;
use Trazabilidad_SGVA;


create table trazabilidad (
id_trazabilidad int not null auto_increment primary key,
nombre_empresa varchar (45),
encargado varchar (45),
fecha_inicio varchar (45),
fecha_fin date not null,
telefono varchar (45),
correo varchar (45),
estado varchar (45),
fecha_cierre date not null

);
 
 create table Empresa (
 id_empresa int not null auto_increment primary key,
 codigo_empresa varchar (45) not null,
 nombre_empresa varchar (45) not null
 );
 
 

 
alter table empresa
drop column id_empresa;

select * from empresa;

alter table empresa
add primary key (codigo_empresa);

describe empresa;

alter table trazabilidad
change nombre_empresa codigo_empresa varchar(50);

alter table trazabilidad
rename column codigo_empresa to cod_empresa;

describe trazabilidad;



insert into empresa
values('COD1','Andina de energia s.a.s');

insert into empresa
values('COD2','Transporte gp cargo s a s');

insert into empresa
values('COD3','Its solutions sas');

insert into empresa
values('COD4','Banco de comercio exterior de colombia s.a');

insert into empresa
values('COD5','crediminuto');


insert into empresa(codigo_empresa,nombre_empresa)
values('COD6','Andina de energia s.a.s');

insert into empresa(codigo_empresa,nombre_empresa)
values('COD7','Transporte gp cargo s a s');

insert into empresa(codigo_empresa,nombre_empresa)
values('COD8','Its solutions sas');

insert into empresa(codigo_empresa,nombre_empresa)
values('COD9','Banco de comercio exterior de colombia s.a');

insert into empresa(codigo_empresa,nombre_empresa)
values('COD10','crediminuto');