use Spotify;

/*tercer vista*/
create view vista_oyentesmensuales as
select titulo_cancion,titulo_album,nombre_artista,oyentes_mensuales 
from Cancion,Album,Artista
where id_cancion=id_artista and id_album=id_artista 
order by oyentes_mensuales desc;
select * from vista_oyentesmensuales;

/*segunda vista*/
create view vista_canciones_mas_escuchadas as
select titulo_cancion,titulo_album,nombre_artista,reproducciones, username 
as usuarios_diferentes
from Cancion,Album,Artista,Usuario
where id_cancion=id_artista and id_album=id_artista 
and reproducciones>800000000 
order by reproducciones desc;
select * from vista_canciones_mas_escuchadas;

/*primera vista*/
create view vista_reporteIngresoUsuario AS
select Usuario.username, MAX(Ingresos.fecha_ingreso) 
as ultima_fecha_ingreso, Ingresos.entrada, Ingresos.salida, count(Ingresos.CodUser) as cantidad_ingreso
FROM Usuario
inner join Ingresos on Usuario.id_user=Ingresos.CodUser 
group by Usuario.id_user;
select * from vista_reporteIngresoUsuario;