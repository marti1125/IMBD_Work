-- creacion de los usuarios
USE [master]
GO
CREATE LOGIN [b_user] WITH PASSWORD=N'123456'
MUST_CHANGE, DEFAULT_DATABASE=[Biblioteca],
CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [Biblioteca]
GO
CREATE USER [b_user] FOR LOGIN [b_user]
GO

USE [master]
GO
CREATE LOGIN [b_admin] WITH PASSWORD=N'123456'
MUST_CHANGE, DEFAULT_DATABASE=[Biblioteca],
CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [Biblioteca]
GO
CREATE USER [b_admin] FOR LOGIN [b_admin]
GO

-- permisos de solo lectura
USE [Biblioteca]
GRANT SELECT ON Autor TO b_user
GRANT SELECT ON AutorLibro TO b_user
GRANT SELECT ON Carnet TO b_user
GRANT SELECT ON Categoria TO b_user
GRANT SELECT ON Distribuidor TO b_user
GRANT SELECT ON DistribuidorLibro TO b_user
GRANT SELECT ON Editorial TO b_user
GRANT SELECT ON EspacioLectura TO b_user
GRANT SELECT ON HistorialRequerimiento TO b_user
GRANT SELECT ON Instituto TO b_user
GRANT SELECT ON Libro TO b_user
GRANT SELECT ON NivelDemandaLibro TO b_user
GRANT SELECT ON Prestamo TO b_user
GRANT SELECT ON PrestamoEspacioLectura TO b_user
GRANT SELECT ON PrestamoLibro TO b_user
GRANT SELECT ON TipoDemanda TO b_user
GRANT SELECT ON TipoRequerimiento TO b_user
GRANT SELECT ON TipoUsuario TO b_user
GRANT SELECT ON Universidad TO b_user
GRANT SELECT ON Usuario TO b_user
GO

USE [Biblioteca]
GRANT SELECT, UPDATE, INSERT, DELETE ON Autor TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON AutorLibro TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Carnet TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Categoria TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Distribuidor TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON DistribuidorLibro TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Editorial TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON EspacioLectura TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON HistorialRequerimiento TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Instituto TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Libro TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON NivelDemandaLibro TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Prestamo TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON PrestamoEspacioLectura TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON PrestamoLibro TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON TipoDemanda TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON TipoRequerimiento TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON TipoUsuario TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Universidad TO b_admin
GRANT SELECT, UPDATE, INSERT, DELETE ON Usuario TO b_admin
GO
