Proyecto.sql
create database dbElectivas
	use dbElectivas
	

create table tbTipoCarrera(
idTipoCarrera int primary key not null,
Licenciatura nvarchar not null,
Ingenieria nvarchar not null,
foreign key (idLicenciatura) references tbCreditos_necesarios(idLicenciatura),
foreign key (idIngenieria) references tbCreditos_necesarios(idIngenieria),
);


create table tbCreditos_necesarios(
    idCreditos_necesarios int primary key not null,
  Licenciatura int not null,
  Ingenieria int not null,

 );
create table tbelEctiva(

   idElectiva int primary key not null,
   Actividad_Cultural nvarchar not null,
   Actividad_Deportiva nvarchar not null,

);

 create table tbcreditosporactividad(
     idcreditosporactividad int primary key not null,
     Actividad_Deportiva int not null,
     Actividad_Cultural int not null,

 	);


 create table tbreltipocarreraCreditos_necesarios(

     ideltipocarreraCreditos_necesarios int primary key not null,
     idCreditos_necesarios int not null,
     idTipoCarrera int not null,
      foreign key(idCreditos_necesarios) references tbCreditos_necesarios(idCreditos_necesarios),
      foreign key(idTipoCarrera) references tbTipoCarrera(idTipoCarrera),



 	);