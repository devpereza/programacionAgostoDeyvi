USE peliculas06
GO

-- Consulta 1
SELECT TP.peltitulo, TD.dirApellidos 
from tblmapeliculas TP
inner join tblmaDirectores TD
on tp.dirCodigo = td.dirCodigo

-- Consulta 2
 select PE.PelCodigo, PelTitulo, PelGenero
 from tblmaPeliculas AS PE
 inner join tblmvGenero AS GE
 on PE.pelCodigo = ge.PelCodigo
where PelGenero  in ('Drama','Acción')

-- Consulta 3
select TP.peltitulo, dirNombres 
FROM tblmaPeliculas TP 
left outer join tblmaDirectores as td
on tp.dirCodigo = td.dirCodigo

-- Consulta 4
select PT.peltitulo, paPersonaje
FROM tblmaPeliculas PT
inner join tblviPeliculasxActores as TA
on  pt.pelCodigo = ta.pelCodigo

-- Consulta 5
select PT.peltitulo, ejeTipo
FROM tblmaPeliculas PT
INNER JOIN tbldeEjemplarPeliculas AS EP
on pt.pelCodigo = ep.pelCodigo
where ejetipo IN ('DVD','VCD')

-- Consulta 6
select CN.cliNombres, TPro.proNombre, PelGenero
from tblmaClientes cn
inner join tblcaAlquiler as TA on cn.cliCodigo = ta.cliCodigo
inner join tbldeAlquilerPeliculas as AP on ta.NroAlquiler = ap.NroAlquiler
inner join tbldeEjemplarPeliculas as EP on ap.pelCodigo = ep.pelCodigo
inner join tblmaProvincias TPro on TPro.proCodigo = 'Hua'
inner join tblmaPeliculas as TTP on ep.pelCodigo = ttp.pelCodigo
inner join tblmvGenero as Tgg on ttp.pelCodigo = tgg.pelcodigo
where PelGenero in ('Acción')


-- Consulta 7

SELECT PT.pelTitulo, Fecha  , PelIdioma
FROM tblmaPeliculas PT
INNER JOIN tbldeEjemplarPeliculas AS AQ
ON pt.pelcodigo = aq.pelCodigo
INNER JOIN tbldeAlquilerPeliculas AS AP
ON  aq.pelCodigo = ap.pelCodigo
INNER JOIN tblcaAlquiler AS TA
ON ap.NroAlquiler = ta.NroAlquiler
WHERE PelIdioma IN ('Español') AND Fecha LIKE ('%2003%')


-- Consulta 8

select PT.peltitulo, PelGenero, Act_Nombre
FROM  tblmaPeliculas PT
inner join tblmvGenero as TG
on PT.pelCodigo = TG.PelCodigo
inner join tblviPeliculasxActores as TPA
on PT.pelCodigo = TPA.pelCodigo
inner join tblmaActores as TA
on TPA.actCodigo = TA.Act_Codigo  
WHERE PelGenero in ('Drama', 'Acción') 


-- Consulta 9

SELECT peltitulo, PelDuracion, TE.empLugar
FROM tblmaPeliculas TP
INNER JOIN tbldeAlquilerPeliculas TAP ON TAP.pelCodigo = TP.pelCodigo
INNER JOIN tblcaAlquiler TAA ON TAA.NroAlquiler = TAP.NroAlquiler
INNER JOIN tblmaEmpleados TE ON TE.empCodigo = TAA.empCodigo
where PelDuracion < 100 AND TE.empLugar = 'Chupaca'

-- Consulta 10
SELECT pelTitulo, PelEstreno, dirNombres,proDescripcion
FROM tblmaPeliculas TP
INNER JOIN tblmaDirectores TD ON TD.dirCodigo = TP.dirCodigo
INNER JOIN tblviProductoresxPeliculas PXP ON PXP.pelCodigo = TP.pelCodigo
INNER JOIN tblmaProductores TDP ON TDP.proCodigo = PXP.proCodigo
WHERE TP.PelEstreno < 2000 











