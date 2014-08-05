--script

insert into TipoDemanda values
('N1','Nivel 1'),
('N2','Nivel 2'),
('N3','Nivel 3');

insert into TipoUsuario values
('ADMINISTRADOR'),
('ESTUDIANTE');

insert into Categoria values
('NOVELA'),
('COMICS'),
('DESARROLLO WEB'),
('EDUCACION'),
('INFORMATICA'),
('MATEMATICAS'),
('FILOSOFIA'),
('GEOGRAFIA / TURISMO'),
('IDIOMAS'),
('MARKETING / BUSINESS'),
('MULTIMEDIA'),
('REVISTAS'),
('LENGUAJE'),
('HISTORIA');

insert into Editorial values
('ASOCIACIÓN EDITORIAL BRUÑO','Sr. Augusto Federico Díaz Tineo','Av. Arica 751. Breña', '4244134 / 4237890'),
('CENTAURO EDICIONES S.A.C.','Sr. Óscar Gustavo Zevallos García','Jr. Luis Varela y Orbegoso 565.', '4440900'),
('EDICIONES SM S.A.C.','Guillermo Alejandro Rivas','Calle Micaela Bastidas 125. San Isidro.', '6148900 / 6148904'),
('EDITORIAL COVEÑAS S.A.C','Manuel Coveñas Naquiche','Jr. Las Verdolagas No. 199 Urb. Micaela Bastidas. Los Olivos.', '521-0949 / 4867957'),
('EDITORIAL SAN MARCOS E.I.R.L.','Sr. Anibal Jesús Paredes Galván','Jr. Dávalos Lisson 135. Lima.', '3311522 / 3311535'),
('EMPRESA EDITORA MACRO E.I.R.L.','Sra. Isabel Rosario Ramos','Av. Paseo de la República 5613. Miraflores.', '7199701 / 7199702'),
('GRUPO EDITORIAL NORMA S.A.C.','Álvaro Ruíz','Av. Canaval y Moreyra 345. San Isidro.', '7103000'),
('LIBRERÍA PERUANO BRITÁNICA S.R.L.','Franco Ramírez Reyes','Av. Uiversitaria Mz A Lt 5. Urb. La Libertad. Los Olivos','531-7712 -2413768'),
('MACMILLAN PUBLISHERS S.A.','Sr. Javier Lombardi Wilson','Calle Manuel Tovar 252. Miraflores.','4410311'),
('MEGA EDITORES S.A.C.','Sr. Mario Jesús Minaya García','Calle Río Majes Nº246.Parque San Martín-Ruinas Puruchuco. Ate.','4626221 / 4093030'),
('NUEVAS TÉCNICAS EDUCATIVAS S.A.C. – NUTESA','Sr. Enrique Cappelletti Sotomayor','Av. República de Panamá 2197, 2º piso – Of. 2B. La Victoria.','4721712 / 2058642'),
('PEARSON EDUCACIÓN DEL PERÚ S.A.C.','Sr. Eduardo Guzmán Barro','Av. Javier Prado Este 4491. Surco.','4372010 / 4372015'),
('SANTILLANA S.A.','Sr. Javier Laría Quincoces','Av. Primavera 2160. Surco.','3134000'),
('SPECIAL BOOKS SERVICES S.A.','Sra. PaulaTapia Álvarez Gerente ','Av. Angamos Oeste 301. Miraflores.','206-4900');


insert into Universidad values
('Universidad Nacional del Callao (UNAC)','Av. Juan Pablo II 306, Bellavista - Callao'),
('Universidad Nacional Mayor de San Marcos (UNMSM)','Av. Universitaria /Av. Germán Amézaga s/n. Edificio Jorge Basadre Ciudad Universitaria'),
('Universidad Nacional Agraria La Molina','Av. La Molina'),
('Univ. Nac. de Educación Enrique Guzmán y Valle (UNE)','Av. Enrique Guzmán y Valle s/n, La Cantuta - Chosica'),
('Universidad Nacional de Ingeniería - UNI','Av. Túpac Amaru 210 - Rimac '),
('Universidad Privada San Juan Bautista (UPSJB)','Av. Jose Antonio Lavalle s/n Hacienda Villa - Chorrillos'),
('Universidad Inca Garcilaso de la Vega (UIGV)',' Av. San Felipe 890, Jesús María'),
('Universidad Peruana de las Américas','Av. Garcilaso de la Vega Nº 1880'),
('Universidad Tecnológica del Perú (UTP)','Esquina Av. 28 de Julio y Av. Petit Thouars'),
('Universidad del Pacífico (UP)','Av. Salaverry 2020 Jesús María'),
('Universidad San Ignacio de Loyola (USIL)','Av. La Fontana 550, La Molina'),
('Universidad Femenina del Sagrado Corazón (UNIFE)','Av. Los Frutales 954 Urb. Santa Magdalena Sofía, La Molina'),
('Universidad Peruana de Ciencias Aplicadas (UPC)','Prolongación Primavera 2390, Monterrico'),
('Universidad de Lima (ULIMA)','Av. Javier Prado Este s/n, Monterrico'),
('Universidad de San Martín de Porres (USMP)','Ciudad Universitaria Av. Las Calandrias s/n Santa Anita'),
('Pontificia Universidad Católica del Perú (PUCP)','Av. Universitaria 1801, San Miguel'),
('Universidad Peruana Cayetano Heredia (UPCH)','Av. Honorio Delgado 430, Urb. Ingeniería, S.M.P.'),
('Universidad de Piura - PAD',' Aldebarán 160, Surco'),
('Universidad Científica del Sur (UCSUR)','Cantuarias 385, Miraflores '),
('Universidad Privada del Norte (UPNORTE)','Av. Del Ejército 920 - Urb. El Molino'),
('Universidad Católica Sedes Sapientiae (UCSS)','Esquina Constelaciones y Sol de Oro S/N Urbanización Sol de Oro. Los Olivos'),
('Universidad Cesar Vallejo (UCV)','AV. Alfredo Mendiola 6232 - Panamericana Norte, Los Olivos'),
('Universidad Alas Peruanas (UAP)','Av. San Felipe 1109. Jesús Maria');

insert into Instituto values
('Toulouse Lautrec','Av. Primavera 970 Chacarilla Surco'),
('Tecsup','Av. Cascanueces 2221 Santa Anita'),
('Sencico','Av. De la Poesía 351- San Borja'),
('Senati','Av. Alfredo Mendiola # 3520 Independencia'),
('ISIL','Av. La Fontana 795'),
('CIMAS','Avenida Garcilaso de la Vega, Lima 15001'),
('SISE','Av. Larco 756 - Miraflores'),
('IPP','Av Jorge Basadre, Lima'),
('IPM','Vía Expresa Paseo de la República 6099'),
('IPAD','Av. Benavides 715 Miraflores'),
('Instituto Metropolitano','Av. Arequipa 694 (Frente al Parque de las Aguas)'),
('Iberotec','Av. Arenales 1555, Lince'),
('IFB','Av. Santiago de Surco 4717 Surco'),
('Cibertec','Psje. Tello 285 cruce con Av. Diez Canseco'),
('ADEX','Av Javier Prado Este 2875'),
('I.E.S.T.P “Daniel Alcides Carrión”','Jr. Saco Oliveros 150 / Av. Arequipa'),
('Computronic','Av. Uruguay 360 – Cercado de Lima '),
('Columbia','Av. Paseo de la República 2232 Via Expresa- Lince');

insert into Distribuidor values
('20112949101','Libun','Avenida Petit Thouars, 4799 MIRAFLORES ','446 5048'),
('20100472342','Librería Minerva','Avenida Angamos Este, 2593 SAN BORJA','475 5510'),
('20100845789','Librería Pizarro','Avenida Ignacio Merino, 2330 LINCE','422 6420'),
('20108945689','Grandes Libros','Calle Casagrande, 157 SANTIAGO DE SURCO','387 5520');

insert into EspacioLectura values
('E001',5,1,'-'),
('E002',5,1,'-'),
('E003',5,1,'-'),
('E004',5,1,'-'),
('E005',5,1,'-'),
('E006',5,1,'-'),
('E007',5,1,'-');

insert into Usuario values
(1,'ssuarez','ssuarez','SOTO','SUAREZ','MARGARITA','-'),
(2,'aslvador','aslvador','ARCOS','ALVARES','ABDIEL SALVADOR','-'),
(2,'cjuan','cjuan','CAMACHO','CORDERO','JUAN RAMON','-'),
(2,'mgomez','mgomez','GOMEZ','MARQUEZ','FRANCISCO ISAAC','-'),
(2,'ocastillo','ocastillo','OCHOA','CASTILLO','ORLANDO','-'),
(2,'rhinojosa','rhinojosa','RAMIREZ','HINOJOSA','ALFREDO','-'),
(2,'lbonilla','lbonilla','LEYVA','BONILLA','JUAN FRANCISCO','-'),
(2,'belias','belias','BASULTO','ELIAS','GUILLERMO','-'),
(2,'rtoscano','rtoscano','RUIZ','TOSCANO','CRISTOS ALBERTO','-'),
(2,'trivera','trivera','TRUJILLO','RIVERA','EDUARDO ANTONIO','-'),
(2,'paguilar','paguilar','PERALES','AGUILAR','RAQUEL DEL CARMEN','-');

insert into Carnet values
(100001,2,'H',null,0,null),
(100002,3,'H',null,0,null),
(100003,4,'H',null,0,null),
(100004,5,'H',null,0,null),
(100005,6,'H',null,0,null),
(100006,7,'H',null,0,null),
(100007,8,'H',null,0,null),
(100008,9,'H',null,0,null),
(100009,10,'H',null,0,null);

insert into Autor values
('Sabana','Mendoza','Maribel',null,'mary_123@gmail.com',5),
('Toribio','Fuentes','Orlando',null,null,1),
('Toro','Campos','Rosa',null,'tora@gmail.com',3),
('Santiago','Santiago','Alfredo',null,'santi_314@spee.com',2),
('Cueto','Barreto','César',null,'barreto@gmail.com',3),
('Espinoza','Ortega','Joaquin',null,null,4),
('Benavides','Lara','Andrés',null,null,2),
('Ponce','León','Clara',null,'clara_ponce@gmail.com',4),
('Camacho','Gutierrez','Valeria',null,null,2),
('Loayza','Pérez','Esteban',null,null,2),
('Bayer','Flores','Antonio',null,'anto_77@grupoarg.com',2),
('Mejía','Gómez','Diana',null,null,2),
('Ramirez','Prieto','Ignacio',null,null,3);


INSERT INTO Libro VALUES
(6,1,'Matemática Primer Grado',88,'Español'),
(9,3,'Aprendiendo Inglés',50,'Ingles-Español'),
(4,11,'La vida de Jesús',100,'Español'),
(6,1,'Funciones lineales',150,'Español'),
(5,5,'Mantenimiento de PC',120,'Español'),
(6,3,'Calculo II',400,'Español'),
(1,5,'¿Quién se ha llevado mi queso?',70,'Español'),
(5,8,'La computadora y sus partes',200,'Español'),
(1,5,'Oraciones al señor',60,'Español'),
(4,10,'Tecnicas de Estudio',100,'Español'),
(1,5,'El Delfin',34,'Español'),
(5,5,'Desarrollo Web',67,'Español'),
(1,1,'EPE',35,'Español'),
(5,5,'Desarrollo Movil',300,'Español'),
(5,5,'Reparacion de Celulares',265,'Español'),
(1,8,'Casos de la vida',350,'Español');

insert into NivelDemandaLibro(idLibro,idTipoDemanda,cantidad_veces) values
(4,'N2',1),
(5,'N2',5),
(6,'N2',20),
(7,'N3',1),
(8,'N3',8),
(9,'N3',11),
(10,'N1',7),
(11,'N2',4),
(12,'N3',7),
(13,'N1',9);

insert into PrestamoEspacioLectura 
(idEspacioLectura,idCarnet,disponible,fecha,hora_inicio,hora_fin)
values
('E001',100001,1,'2014-08-03','1990-01-01 10:00','1990-01-01 12:00'),
('E002',100002,1,'2014-08-01','1990-01-01 09:00','1990-01-01 11:00'),
('E007',100004,1,'2014-08-01','1990-01-01 10:00','1990-01-01 12:00'),
('E006',100003,0,'2014-08-02','1990-01-01 10:00','1990-01-01 12:00'),
('E004',100006,0,'2014-08-03','1990-01-01 15:00','1990-01-01 17:00'),
('E005',100009,0,'2014-08-03','1990-01-01 18:00','1990-01-01 20:00'),
('E005',100005,1,'2014-08-03','1990-01-01 10:00','1990-01-01 12:00'),
('E002',100002,0,'2014-07-29','1990-01-01 14:00','1990-01-01 16:00'),
('E002',100004,0,'2014-08-03','1990-01-01 10:00','1990-01-01 12:00'),
('E003',100007,1,'2014-08-02','1990-01-01 18:00','1990-01-01 20:00'),
('E004',100008,0,'2014-08-03','1990-01-01 18:00','1990-01-01 20:00');

insert into CentroEstudioUsuario values
(2,1,null),
(3,2,null),
(4,null,5),
(5,null,5),
(6,5,null),
(7,10,null),
(8,null,6),
(9,null,10),
(10,5,null),
(11,7,null);

insert into AutorLibro values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13);

insert into DistribuidorLibro values
(1,1),
(2,2),
(3,3),
(4,4),
(1,5),
(2,6),
(3,7),
(4,8),
(1,9),
(2,10),
(3,11),
(4,12),
(1,13);

insert into TipoRequerimiento values
('Prestamo Libro'),
('Prestamo Ipad'),
('Espacio Lectura'),
('Salas Grupales'),
('Prestamo videoteca');

INSERT INTO Prestamo(fecha_prestamo,fecha_devolucion,devuelto,fuera_fecha,
fecha_real_usuario,cantidad_libros,observacion) VALUES 
('2014-05-03','2014-05-03',0,0,'2014-05-03',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-06-04','2014-06-04',0,0,'2014-06-04',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-02-05','2014-02-05',0,0,'2014-02-05',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-01-06','2014-01-06',0,0,'2014-01-06',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-03-07','2014-03-07',0,0,'2014-03-07',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-04-07','2014-04-07',0,0,'2014-04-07',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-08-01','2014-08-01',0,0,'2014-08-01',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-04-02','2014-04-02',0,0,'2014-04-02',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-02-03','2014-02-03',0,0,'2014-02-03',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-03-04','2014-03-04',0,0,'2014-03-04',1,'El libro se encuentra dentro de la fecha establecida de devolución'),
('2014-01-05','2014-01-05',0,0,'2014-01-05',1,'El libro se encuentra dentro de la fecha establecida de devolución');

INSERT INTO PrestamoLibro (idTipReq,idLibro,idCarnet)VALUES 
(1,1,100001),
(1,2,100002),
(1,3,100003),
(1,4,100004),
(1,5,100005),
(1,6,100006),
(1,7,100007),
(1,8,100008),
(1,9,100009);
