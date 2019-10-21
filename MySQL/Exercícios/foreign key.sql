use cadastro;
describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

describe gafanhotos;

select * from gafanhotos;
select * from cursos;

update gafanhotos
set cursopreferido = '6' 
where id = '1';

delete from cursos
where idcurso = '6';

insert into cursos values
('6', 'MySQL', 'Curso de Banco de Dados MySQL', '30', '15', '2016');


