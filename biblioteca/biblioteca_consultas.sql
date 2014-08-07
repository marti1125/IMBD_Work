--Willy

-- obtener libro con mayor demanda
select e.nombre as 'Editorial', c.descripcion as 'Categoria',
l.titulo as 'Titulo', td.descripcion as 'Nivel' from NivelDemandaLibro nvl
inner join TipoDemanda td
on nvl.idTipoDemanda = td.idTipoDemanda
inner join Libro l
on nvl.idLibro = l.idLibro
inner join Editorial e
on l.idEditorial = e.idEditorial
inner join Categoria c
on l.idCategoria = c.idCategoria
where td.idTipoDemanda = 'N3'

-- espacio de lectura disponibles
select el.idEspacioLectura as 'Espacio Lectura' from EspacioLectura el
inner join PrestamoEspacioLectura pel
on el.idEspacioLectura = pel.idEspacioLectura
where el.idEspacioLectura not in (select idEspacioLectura from PrestamoEspacioLectura)
or pel.disponible = 0
