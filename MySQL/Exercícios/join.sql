select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select * from gafanhotos;

update gafanhotos
set cursopreferido = '1'
where id = '14';

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

