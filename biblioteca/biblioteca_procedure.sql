drop PROCEDURE uspEspLecturaHorasPorCarnet

CREATE PROCEDURE uspEspLecturaHorasPorCarnet
@espacio_lectura varchar(10),
@carnet varchar(10),
@horas float OUTPUT,
@total_horas float OUTPUT,
@espacio_lectura_rest varchar(10) OUTPUT
as
begin
set nocount on;
SELECT
@horas = DATEDIFF(hour, hora_inicio, hora_fin),
@espacio_lectura_rest = idEspacioLectura
FROM PrestamoEspacioLectura
where idCarnet = @carnet and
idEspacioLectura = @espacio_lectura
set @total_horas = @horas + @horas
end
go

declare 
@hrs float,
@hrs_t float,
@esp_rest varchar(10)
execute uspEspLecturaHorasPorCarnet 'E001',100001,
@hrs OUTPUT,
@hrs_t OUTPUT,
@esp_rest OUTPUT
select @esp_rest as 'Espacio Lectura',@hrs_t as 'total horas'
go
