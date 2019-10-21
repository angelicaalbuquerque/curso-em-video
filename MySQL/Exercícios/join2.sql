use cadastro;

create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcurso)
) default charset = utf8;


insert into gafanhoto_assiste_curso values
(DEFAULT, '2014-03-01', '1', '2');

delete from gafanhoto_assiste_curso
where id = '2';

insert into gafanhoto_assiste_curso values
(DEFAULT, '2015-12-22','3','6');

insert into gafanhoto_assiste_curso values
(DEFAULT, '2014-01-01','22','12');

insert into gafanhotos_assiste_curso values
(DEFAULT, '2016-05-12', '1', '19');

select * from gafanhoto_assiste_curso;

select * from gafanhotos g 
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;

select g.nome, c.nome from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;

