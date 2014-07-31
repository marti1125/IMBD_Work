CREATE DATABASE Biblioteca;
GO

USE Biblioteca;
GO

-- tablas principales

CREATE TABLE Autor
(
idAutor int IDENTITY(1,1) NOT NULL,
appPaterno varchar(50) NULL,
appMaterno varchar(50) NULL,
nombres varchar(50) NULL,
nacionalidad varchar(50) NULL,
email varchar(60) NULL,
cantidad_libro int NULL
);

alter table Autor add constraint PK_AUTOR
primary key (idAutor);

CREATE TABLE Editorial
(
idEditorial int IDENTITY(1,1) NOT NULL,
ruc varchar(10) NOT NULL,
nombre varchar(50) NOT NULL,
direccion varchar(100) NULL,
telefono varchar(20) NULL
);

alter table Editorial add constraint PK_EDITORIAL
primary key (idEditorial);

CREATE TABLE Genero
(
idGenero int IDENTITY(1,1) NOT NULL,
descripcion varchar(50) NOT NULL
);

alter table Genero add constraint PK_GENERO
primary key (idGenero);

CREATE TABLE Libro
(
idLibro int identity(1,1) NOT NULL,
idGenero int NOT NULL,
idEditorial int NOT NULL,
titulo varchar(50) NOT NULL,
cantidad_paginas int NULL,
idioma varchar(50) NOT NULL
);

alter table Libro add constraint PK_LIBRO
primary key (idLibro);

alter table Libro add constraint FK_GENERO
foreign key (idGenero) references Genero;

alter table Libro add constraint FK_EDITORIAL
foreign key (idEditorial) references Editorial;

CREATE TABLE AutorLibro
(
idAutor int NOT NULL,
idLibro int NOT NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
);

alter table AutorLibro add constraint PK_AUTOR_LIBRO
primary key (idAutor,idLibro);

alter table AutorLibro add constraint FK_AL_AUTOR
foreign key (idAutor) references Autor;

alter table AutorLibro add constraint FK_AL_LIBRO
foreign key (idLibro) references Libro;

CREATE TABLE TipoDemanda
(
idTipoDemanda char(1) NOT NULL,
descripcion varchar(50) NOT NULL
);

alter table TipoDemanda add constraint PK_TIPO_DEMANDA
primary key (idTipoDemanda);

-- nivel de demanda cuantitativa A(Alta), M(Media), B(Baja)
CREATE TABLE NivelDemandaLibro
(
idNivelDemandaLibro int IDENTITY(1,1) NOT NULL,
idLibro int NOT NULL,
idTipoDemanda char(1) NULL,
cantidad_veces int NULL, -- es una consulta que hace un trigger
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
)

alter table NivelDemandaLibro add constraint PK_NIVEL_DEMANDA_LIBRO
primary key (idNivelDemandaLibro);

alter table NivelDemandaLibro add constraint FK_NDL_LIBRO
foreign key (idLibro) references Libro;

alter table NivelDemandaLibro add constraint FK_NDL_TIPO_DEMANDA
foreign key (idTipoDemanda) references TipoDemanda;

CREATE TABLE Distribuidor
(
idDistribuidor int IDENTITY(1,1) NOT NULL,
ruc varchar(10) NOT NULL,
nombre varchar(50) NOT NULL,
direccion varchar(100) NULL,
telefono varchar(20) NULL
);

alter table Distribuidor add constraint PK_DISTRIBUIDOR
primary key (idDistribuidor);

CREATE TABLE DistribuidorLibro
(
idDistribuidor int NOT NULL,
idLibro int NOT NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
);

alter table DistribuidorLibro add constraint PK_DISTRIBUIDOR_LIBRO
primary key (idDistribuidor,idLibro);

alter table DistribuidorLibro add constraint FK_DISTRIBUIDOR
foreign key (idDistribuidor) references Distribuidor;

alter table DistribuidorLibro add constraint FK_LIBRO
foreign key (idLibro) references Libro;


CREATE TABLE TipoUsuario
(
idTipoUsuario int IDENTITY(1,1) NOT NULL,
descripcion varchar(50) NOT NULL
)

alter table TipoUsuario add constraint PK_TIPOUSUARIO
primary key (idTipoUsuario);

CREATE TABLE Usuario
(
idUsuario int NOT NULL,
idTipoUsuario int NOT NULL,
usuario varchar(45) NOT NULL,
clave varchar(45) NOT NULL,
nombre_completo varchar(100) NULL,
foto varchar(100) NULL
);

alter table Usuario add constraint PK_USUARIO
primary key (idUsuario);

alter table Usuario add constraint FK_TIPO_USUARIO
foreign key (idTipoUsuario) references TipoUsuario;

CREATE TABLE Universidad
(
idUniversidad int IDENTITY(1,1) NOT NULL,
nombre varchar(50) NOT NULL,
direccion varchar(50) NULL
)

alter table Universidad add constraint PK_UNIVERSIDAD
primary key (idUniversidad);

CREATE TABLE Instituto
(
idInstituto int IDENTITY(1,1) NOT NULL,
nombre varchar(50) NOT NULL,
direccion varchar(50) NULL
)

alter table Instituto add constraint PK_INSTITUTO
primary key (idInstituto);

CREATE TABLE CentroEstudioUsuario
(
idCentroEstudioUsuario int IDENTITY(1,1) NOT NULL,
idUniversidad int NOT NULL,
idInstituto int NOT NULL
)

alter table CentroEstudioUsuario add constraint PK_CENTRO_ESTUDIO_USUARIO
primary key (idCentroEstudioUsuario);

alter table CentroEstudioUsuario add constraint FK_CENTRO_ESTUDIO_UNIVERSIDAD
foreign key (idUniversidad) references Universidad;

alter table CentroEstudioUsuario add constraint FK_CENTRO_ESTUDIO_INSTITUTO
foreign key (idInstituto) references Instituto;


-- Columna estado, H(Habilitado), R(Robo), S(Suspendido), P(Perdida)
-- Agregar el check respectivo
CREATE TABLE Carnet
(
idCarnetUsuario int NOT NULL,
estado char(1) NOT NULL,
bloquear bit NOT NULL, -- si no es esta Habilitado
observacion varchar(100) NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
);

alter table Carnet add constraint PK_CARNET
primary key (idCarnetUsuario);

alter table Carnet add constraint FK_CARNET_USUARIO
foreign key (idCarnetUsuario) references Usuario;

CREATE TABLE Prestamo
(
idPrestamo int IDENTITY(1,1) NOT NULL,
fecha_prestamo date NOT NULL,
fecha_devolucion date NOT NULL,
devuelto bit NOT NULL,
observacion varchar(100) NULL,
);

alter table Prestamo add constraint PK_PRESTAMO
primary key (idPrestamo);

CREATE TABLE PrestamoLibro
(
idPrestamo int IDENTITY(1,1) NOT NULL,
idLibro int NOT NULL,
idCarnetUsuario int NOT NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
)

alter table PrestamoLibro add constraint PK_PRESTAMO_LIBRO
primary key (idPrestamo,idLibro,idCarnetUsuario);

alter table PrestamoLibro add constraint FK_PRESTAMO_LIBRO_PRESTAMO
foreign key (idPrestamo) references Prestamo;

alter table PrestamoLibro add constraint FK_PRESTAMO_LIBRO_LIBRO
foreign key (idLibro) references Libro;

alter table PrestamoLibro add constraint FK_PRESTAMO_LIBRO_CARNET
foreign key (idCarnetUsuario) references Carnet;

CREATE TABLE EspacioLectura
(
idEspacioLectura varchar(10) NOT NULL,
capacidad char(1) NULL,
estado bit NULL, -- activo o no, es decir, si no esta en repación
observacion varchar(100) NULL
)

alter table EspacioLectura add constraint PK_ESPACIO_LECTURA
primary key (idEspacioLectura);

CREATE TABLE PrestamoEspacioLectura
(
idPrestEspLectura int IDENTITY(1,1) NOT NULL,
idEspacioLectura varchar(10) NOT NULL,
idCarnetUsuario int NOT NULL,
disponible bit NULL,
fecha datetime NULL,
hora_inicio datetime NULL,
hora_fin datetime NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
)

alter table PrestamoEspacioLectura add constraint PK_PRESTAMO_ESPACIO_LECTURA
primary key (idPrestEspLectura);

alter table PrestamoEspacioLectura add constraint FK_PRESTAMO_ESPACIO_LECTURA_ESPACIO_LECTURA
foreign key (idEspacioLectura) references EspacioLectura;

alter table PrestamoEspacioLectura add constraint FK_ESPACIO_LECTURA_CARNET
foreign key (idCarnetUsuario) references Carnet;


CREATE TABLE TipoRequerimiento
(
idTipReq int IDENTITY(1,1) NOT NULL,
descripcion varchar(20) NULL
)

alter table TipoRequerimiento add constraint PK_TIPO_REQUERIMIENTO
primary key (idTipReq);

CREATE TABLE HistorialRequerimiento
(
idHistReq int IDENTITY(1,1) NOT NULL,
idTipReq int NOT NULL,
idPrestamo int NOT NULL,
idLibro int NOT NULL,
idPrestEspLectura int NOT NULL,
fecha_creacion datetime NULL,
fecha_ultima_actualizacion datetime NULL
)

alter table HistorialRequerimiento add constraint PK_HISTORIAL_REQUERIMIENTO
primary key (idHistReq);

alter table HistorialRequerimiento add constraint FK_HISTORIAL_REQUERIMIENTO_TIP_REQ
foreign key (idTipReq) references TipoRequerimiento;

alter table HistorialRequerimiento add constraint FK_HISTORIAL_REQUERIMIENTO_PRESTAMO_LIBRO
foreign key (idPrestamo) references Prestamo;

alter table HistorialRequerimiento add constraint FK_HISTORIAL_REQUERIMIENTO_LIBRO
foreign key (idLibro) references Libro;

alter table HistorialRequerimiento add constraint FK_HISTORIAL_REQUERIMIENTO_PRESTAMO_ESPACIO_LECTURA
foreign key (idPrestEspLectura) references PrestamoEspacioLectura;
