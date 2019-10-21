use cadastro;
select * from gafanhotos;

select * from cursos
order by nome desc; 

desc cursos;

select ano, nome, carga from cursos
order by ano;

Select nome, carga from cursos 
where ano = '2016'
Order by nome;

Select nome, descricao, ano from cursos 
where ano <= '2015'
Order by ano, nome;

Select nome, descricao, ano from cursos 
where ano != '2016' /* nao igual, diferente, ou pode ser <> */
Order by ano, nome;

select nome, ano from cursos 
where ano between 2014 and 2016
order by ano desc, nome asc;

select nome, descricao, ano from cursos
where ano in (2014,2016)
order by ano;

select nome, carga, totaulas from cursos
where carga > '35' or totaulas < '30';

select * from cursos
where nome like 'p%'; 

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

update cursos 
set nome = 'PáOO'
where idcurso = 9;


update cursos
set nome = 'Photoshop'
where idcurso = '3';

update cursos
set nome = 'Photoshophe'
where idcurso = '3';

update cursos
set nome = 'Photoshop'
where idcurso = '3';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p_';

select * from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga;

select count(*) from cursos;

select count(*) from cursos 
where carga > 40;

select * from cursos
order by carga;

select max(carga) from cursos;

select max(totaulas) from cursos 
where ano = '2016';

select nome, min(totaulas) from cursos
where ano = '2016';


select sum(totaulas) from cursos
where ano = '2016';

select avg(totaulas) from cursos
where ano = '2016';


select nome from gafanhotos
where sexo = 'F'
order by nome;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nome;

select nome, profissao from gafanhotos
where sexo = 'M' and profissao = 'programador'
order by nome;

select * from gafanhotos
where sexo = 'F' and nome like 'j%' and nacionalidade = 'brasil'
order by nome;

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100'
order by nome;

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';


select count(*) from gafanhotos
where sexo = 'F' and altura > '1.90';

select carga from cursos;

select distinct carga from cursos
order by carga;

select totaulas from cursos
order by totaulas;

select distinct totaulas from cursos
order by totaulas;

select carga from cursos;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(nome) from cursos
group by carga;

select * from cursos where totaulas = '12';

select carga, count(nome) from cursos
where totaulas = 30
group by carga;

select * from cursos 
where totaulas = 30;


select carga, count(nome) from cursos
group by carga;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);


/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */
select profissao, count(*) from gafanhotos
group by profissao;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/
select avg(altura) from gafanhotos;

select peso, altura, count(*) from gafanhotos
where peso > '100' 
group by altura
having altura > (select avg(altura) from gafanhotos);


