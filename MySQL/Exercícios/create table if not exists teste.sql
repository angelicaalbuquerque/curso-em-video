create table if not exists teste(
	id int,
	nome varchar(20),
	idade int
);

insert into teste value
('1', 'pedro', '22'),
('2', 'maria', '12'),
('3', 'maricota', '77');

select * from teste;

drop table if exists alunos;

drop table if exists teste;