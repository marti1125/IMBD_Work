-- triggers de insert y update para la tabla InsertarFechaRegistro
CREATE TRIGGER InsertarFechaRegistro_NivelDemandaLibro
ON NivelDemandaLibro
AFTER INSERT AS
IF @@ROWCOUNT = 1
BEGIN
SET NOCOUNT ON;
update NivelDemandaLibro set fecha_creacion = GETDATE() 
where idNivelDemandaLibro = @@IDENTITY	
END
ELSE
BEGIN
SET NOCOUNT ON;
update NivelDemandaLibro set fecha_creacion = GETDATE() 
where idNivelDemandaLibro in (SELECT idNivelDemandaLibro FROM NivelDemandaLibro);
END
GO

CREATE TRIGGER InsertarFechaModificacion_NivelDemandaLibro
ON NivelDemandaLibro
AFTER UPDATE AS
IF (UPDATE(idLibro) or UPDATE(idTipoDemanda) or UPDATE(cantidad_veces))
BEGIN
SET NOCOUNT ON;
update NivelDemandaLibro set fecha_ultima_actualizacion = GETDATE() where idNivelDemandaLibro = @@IDENTITY
END
GO

-- triggers de insert y update para la tabla Prestamo
CREATE TRIGGER InsertarFechaRegistro_Prestamo
ON Prestamo
AFTER INSERT AS
IF @@ROWCOUNT = 1
BEGIN
SET NOCOUNT ON;
update Prestamo set fecha_creacion = GETDATE() where idPrestamo = @@IDENTITY
END
ELSE
BEGIN
SET NOCOUNT ON;
update Prestamo set fecha_creacion = GETDATE() 
where idPrestamo in (SELECT idPrestamo FROM Prestamo)
END
GO

CREATE TRIGGER InsertarFechaModificacion_Prestamo
ON Prestamo
AFTER UPDATE AS
IF (UPDATE(fecha_devolucion) or UPDATE(devuelto) or UPDATE(observacion) or UPDATE(fecha_prestamo)
or UPDATE(cantidad_libros))
BEGIN
SET NOCOUNT ON;
update Prestamo set fecha_ultima_actualizacion = GETDATE() where idPrestamo = @@IDENTITY
END
GO

-- triggers de insert y update para la tabla PrestamoEspacioLectura
CREATE TRIGGER InsertarFechaRegistro_PrestamoEspacioLectura
ON PrestamoEspacioLectura
AFTER INSERT AS
IF @@ROWCOUNT = 1
BEGIN
SET NOCOUNT ON;
update PrestamoEspacioLectura set fecha_creacion = GETDATE() where idPrestEspLectura = @@IDENTITY
END
ELSE
BEGIN
SET NOCOUNT ON;
update PrestamoEspacioLectura set fecha_creacion = GETDATE() 
where idPrestEspLectura in (SELECT idPrestEspLectura FROM PrestamoEspacioLectura)
END

CREATE TRIGGER InsertarFechaModificacion_PrestamoEspacioLectura
ON PrestamoEspacioLectura
AFTER UPDATE AS
IF (UPDATE(idEspacioLectura) or UPDATE(idCarnet) or UPDATE(disponible)
 or UPDATE(fecha) or UPDATE(hora_inicio) or UPDATE(hora_fin))
BEGIN
SET NOCOUNT ON;
update PrestamoEspacioLectura set fecha_ultima_actualizacion = GETDATE() where idPrestEspLectura = @@IDENTITY
END
GO

-- triggers de insert y update para la tabla HistorialRequerimiento
CREATE TRIGGER InsertarFechaRegistro_HistorialRequerimiento
ON HistorialRequerimiento
AFTER INSERT AS
IF @@ROWCOUNT = 1
BEGIN
SET NOCOUNT ON;
update HistorialRequerimiento set fecha_creacion = GETDATE() where idHistReq = @@IDENTITY
END
ELSE
BEGIN
SET NOCOUNT ON;
update HistorialRequerimiento set fecha_creacion = GETDATE() 
where idHistReq in (SELECT idHistReq FROM HistorialRequerimiento)
END
GO

CREATE TRIGGER InsertarFechaModificacion_HistorialRequerimiento
ON HistorialRequerimiento
AFTER UPDATE AS
IF (UPDATE(idTipReq) or UPDATE(idPrestamo) or UPDATE(idLibro) or UPDATE(idPrestEspLectura))
BEGIN
SET NOCOUNT ON;
update HistorialRequerimiento set fecha_ultima_actualizacion = GETDATE() where idHistReq = @@IDENTITY
END
GO
