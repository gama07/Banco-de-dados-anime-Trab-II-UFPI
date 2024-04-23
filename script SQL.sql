-- Trabalho de Banco de Dados 
-- Alunas: Bruna Lorena, Kedma Freire, Lorena, Mariana Borges

/* 3 - Script SQL de criação e povoamento do banco de dados

Script de criação do banco de dados. 
Comandos de inserção de linhas nas tabelas do banco de dados.
*/

-- Criando banco, schema e tabelas  
CREATE DATABASE TrabalhoBD; --"TrabalhoBD";
DROP DATABASE trabalhobd;

CREATE SCHEMA app_anime;


CREATE TABLE app_anime.aluno(
	id SERIAL PRIMARY KEY,
	usuario VARCHAR(15) NOT NULL,
	senha VARCHAR(10) NOT NULL,
	area_curso VARCHAR(30) NOT NULL,
	estilo_musical VARCHAR(10) NOT NULL,
	instituicao VARCHAR(40) DEFAULT 'Instituição não cadastrada.', 
	idade INT NOT NULL,
	qtd_indicacoes INT DEFAULT 1,
	filtro_limite_temp BOOLEAN NOT NULL,
	limite_temp INT
);


CREATE TABLE app_anime.anime(
	id SERIAL PRIMARY KEY,
	aluno_id INT NOT NULL,  
	nome VARCHAR(50) NOT NULL,
	nota_imdb FLOAT(4) NOT NULL,
	qtd_episodios INT DEFAULT 1,
	qtd_temporadas INT NOT NULL,
	publico_alvo VARCHAR(30) NOT NULL,
	sinopse TEXT DEFAULT 'Sem sinopse cadastrada.'
);

CREATE TABLE app_anime.musica(
	id SERIAL PRIMARY KEY,
	aluno_id INT NOT NULL,
	anime_id INT NOT NULL, 
	nome VARCHAR(60) NOT NULL,
	categoria VARCHAR(60) NOT NULL
);

-- Apagando tabelas
DROP TABLE app_anime.aluno;
DROP TABLE app_anime.anime;
DROP TABLE app_anime.musica;

-- Inserindo as Foreign Keys em anime
ALTER TABLE app_anime.anime
	ADD CONSTRAINT aluno_id_fk FOREIGN KEY (aluno_id)
	REFERENCES app_anime.aluno (id);

-- Inserindo as Foreign Keys em musica
ALTER TABLE app_anime.musica
	ADD CONSTRAINT anime_id_fk FOREIGN KEY (anime_id)
	REFERENCES app_anime.anime (id);

ALTER TABLE app_anime.musica
	ADD CONSTRAINT aluno_id_fk FOREIGN KEY (aluno_id)
	REFERENCES app_anime.aluno (id);


-- Inserindo linhas nas tabelas
-- Lembrando que não será necessário inserir valores para id, pois estes são do tipo serial.


-- Tabela app_anime.aluno;
INSERT INTO app_anime.aluno (usuario, senha, area_curso, estilo_musical, instituicao, idade, qtd_indicacoes, filtro_limite_temp, limite_temp)
VALUES 
	('jorge','chocolate','Saúde','Forró','UFPI',22,1,true,10),
	('márcio','macarrao','Área da saúde','Axé','UFSC',26,3,false,0),
	('lipe','bacon','Biologia/saúde','Forró','UFPI',21,1,true,20),
	('jose','chiclete','Humanas','Rock','UFPI',20,1,false,0),
	('gustavo','café','Exatas','Samba','UFRN',19,2,true,5),
	('carlos','arroz','Saúde','Pagode','UFPI',22,1,true,10),
	('leandro','sucrilhos','Área da saúde','Rock','UFSC',26,3,false,0),
	('biel','xuxubeleza','Biologia/saúde','Samba','UFPI',21,1,true,20);

	
-- Tabela app_anime.anime;
-- para inserir o aluno_id precisaria, inicialmente, fazer um select na tabela de aluno para descobrir qual é o id de cada aluno.
INSERT INTO app_anime.anime (aluno_id, nome, nota_imdb, qtd_episodios, qtd_temporadas, publico_alvo, sinopse)
VALUES
	(6, 'Kenji Yamamoto', 7.8, 26, 2, 'Adolescente', 'Kenji, um jovem samurai em busca de vingança, enfrenta desafios mortais em uma terra devastada pela guerra'),
	(5, 'Kenji Yamamoto', 7.8, 26, 2, 'Adolescente', 'Kenji, um jovem samurai em busca de vingança, enfrenta desafios mortais em uma terra devastada pela guerra'),
	(6, 'Aiko Tanaka', 8.7, 50, 4, 'Crianças', 'A bordo de uma nave espacial, Aiko e sua equipe de jovens exploradores desvendam mistérios e encontram novas civilizações'),
	(5, 'Aiko Tanaka', 8.7, 50, 4, 'Crianças', 'A bordo de uma nave espacial, Aiko e sua equipe de jovens exploradores desvendam mistérios e encontram novas civilizações'),
	(4, 'Kenji Yamamoto', 7.8, 26, 2, 'Adolescente', 'Kenji, um jovem samurai em busca de vingança, enfrenta desafios mortais em uma terra devastada pela guerra'),
	(2, 'Sakura Nakamura', 5.4, 12, 1, 'Crianças', 'Sakura descobre seus poderes mágicos recém-despertados e embarca em uma jornada para salvar o mundo das trevas'),
	(1, 'Takeshi Suzuki', 2.9, 36, 3, 'Adolescente', 'No futuro distante, Takeshi e seus amigos cibernéticos lutam contra uma inteligência artificial maligna que ameaça a humanidade'),
	(3, 'Aiko Tanaka', 8.7, 50, 4, 'Crianças', 'A bordo de uma nave espacial, Aiko e sua equipe de jovens exploradores desvendam mistérios e encontram novas civilizações'),
	(5, 'Haruka Kimura', 9.4, 24, 2, 'Jovem Adulto', 'Em um mundo de guerra entre reinos, Haruka e seus companheiros lutam por um futuro onde a paz prevaleça');

-- Tabela app_anime.musica;
INSERT INTO app_anime.musica (aluno_id, anime_id, nome, categoria)
VALUES
	(4, 1, 'Ignite', 'Abertura'),
	(5, 1, 'Lilium', 'Encerramento'),
	(6, 1, 'Lilium', 'Encerramento'),
	(7, 1, 'Gurenge', 'Abertura'),
	(8, 1, 'Gurenge', 'Abertura'),
	(6, 1, 'Ignite', 'Abertura'),
	(5, 1, 'Unravel', 'Abertura'),
	(5, 1, 'Ignite', 'Abertura'),
	(4, 5, 'Unravel', 'Abertura'),
	(3, 3, 'Lilium', 'Encerramento'),
	(2, 2, 'Gurenge', 'Abertura'),
	(1, 1, 'A Cruel Angels Thesis', 'Abertura');

/* 4 - Consultas SQL

Devem ser feitas, no mínimo, 20 consultas ao banco de dados. 
Para cada consulta, deve ser criado um texto explicando o que ela faz,
juntamente com seu SQL. As consultas devem contemplar operadores de 
comparação, operadores lógicos e operador LIKE. 

Pelo menos 5 consultas devem ser de junções. 
Pelo menos 5 consultas devem ser de agregação (group by). 
Pelo menos 2 consultas devem ter ordenação (order by).
*/


-- Consulta 1 
-- Desafio: Quais foram os últimos 5 alunos cadastrados na tabela aluno?
select * from app_anime.aluno
order by id desc
limit 5;

-- Consulta 2
-- Desafio: Traga todas as informações da tabela aluno, que não se referem ao aluno cujo id = 2.
select * from app_anime.aluno
where id <> 2;

-- Consulta 3
-- Desafio: Quem são os alunos cadastrados no banco, que não estudam na UFPI?

select * from app_anime.aluno
where instituicao not ilike 'ufpi';

-- Consulta 4
-- Desafio: Quem são os alunos que gostam de Samba e estudam na UFPI?

select * from app_anime.aluno
where estilo_musical ilike 'Samba' and instituicao ilike 'ufpi';

-- Consulta 5
-- Desafio: Indique o User, Idade e Área do Curso dos alunos maiores ou com idade igual a 20 anos.

select 
	usuario as "User",
	idade as "Idade",
	area_curso as "Área do Curso"
from app_anime.aluno
where idade >= 20;

-- Consulta 6
-- Desafio: Informe quantos alunos foram cadastrados no total.

select 
	count(id) as "Total de alunos cadastrados" 
from app_anime.aluno;

-- Consulta 7
-- Desafio: Quantos alunos pertencem, de alguma forma, à área da saúde?

select 
	area_curso,
	count(id) as "Total de alunos da área de Saúde" 
from app_anime.aluno
where area_curso ilike '%saúde%'
group by area_curso;

-- Consulta 8
-- Desafio: Liste todas as músicas indicadas para o usuário id = 5, e a qual categoria ela pertence.

select 
	aluno.usuario,
	musica.nome,
	musica.categoria
from app_anime.aluno
inner join app_anime.musica on musica.aluno_id = aluno.id
where aluno.id = 5
group by categoria, nome, usuario;

-- Consulta 9
-- Desafio: Mostre todos os animes cadastrados no banco de dados.
select * from app_anime.anime;

-- Consulta 10
-- Desafio: Apresente os animes cujo público alvo não são crianças.
select 
	nome,
	qtd_episodios,
	nota_imdb
from app_anime.anime
where publico_alvo <> 'Crianças';

-- Consulta 11
-- Desafio: Liste os animes que possuem, em sua sinopse, o radical "jove" (em palavras como "jovem" ou "jovens").

select 
	nome,
	publico_alvo,
	nota_imdb,
	sinopse
from app_anime.anime
where sinopse ilike '%jove%'
group by publico_alvo,nome,nota_imdb,sinopse;

-- Consulta 12
-- Desafio: Liste a quantidade de linhas da tabela anime que possuem mais do que uma temporada.

select 
	nome,
	publico_alvo,
	nota_imdb,
	sinopse,
	count(qtd_temporadas) as qtd_linhas
from app_anime.anime
where qtd_temporadas > 1
group by publico_alvo,nome,nota_imdb,sinopse;


-- Consulta 13
-- Desafio: Liste todos os animes recomendados para o usuário jose (id = 1)

select 
	alu.usuario as "Usuário",
	ani.nome as "Anime recomendado",
	ani.publico_alvo as "Público alvo",
	alu.instituicao as "Instituição do aluno",
	alu.estilo_musical as "Estilo musical do aluno",
	ani.sinopse as "Sinopse"
from app_anime.anime ani 
inner join app_anime.aluno alu on alu.id = ani.aluno_id
where alu.id = 1

-- Consulta 14
-- Desafio: Liste todas as informações disponíveis acerca da entidade musica.

select * from app_anime.musica
order by nome;

-- Consulta 15
-- Desafio: Apresente uma lista com o nome de cada música cadastrada, e a qual anime ela pertence no banco de dados.

select 
	anime.nome as "Nome do anime",
	musica.nome as "Nome da música"
from app_anime.musica
inner join app_anime.anime on anime.id = musica.anime_id
group by musica.nome, anime.nome
order by anime.nome asc;

-- Consulta 16
-- Desafio: Quais musicas foram indicadas para o aluno mais jovem cadastrado na tabela usuario?

select 
	aluno.usuario as "Aluno",
	aluno.idade as "Idade",
	musica.nome as "Músicas indicadas"
from app_anime.musica
left join app_anime.aluno on aluno.id = musica.aluno_id
where aluno.idade = (select min(idade) from app_anime.aluno);

-- Consulta 17
-- Desafio: Quais musicas foram indicadas para o aluno mais velho cadastrado na tabela usuario?

select 
	aluno.usuario as "Aluno",
	aluno.idade as "Idade",
	musica.nome as "Músicas indicadas"
from app_anime.musica
left join app_anime.aluno on aluno.id = musica.aluno_id
where aluno.idade = (select max(idade) from app_anime.aluno);

-- Consulta 18
-- Desafio: Quantas indicações de animes e músicas cada aluno recebeu?

select
	aluno.usuario as "Aluno",
	count(musica.id) as "Total de músicas indicadas",
	count(anime.id) as "Total de animes indicados"
from app_anime.aluno
left join app_anime.musica on musica.aluno_id = aluno.id
left join app_anime.anime on anime.aluno_id = aluno.id
group by usuario
order by usuario;


-- Consulta 19
-- Desafio: Qual é a média de notas do IMDB, considerando somente os animes de voltados para adolescentes?

select 
	publico_alvo as "Público Alvo",
	cast(avg(nota_imdb) AS NUMERIC(4, 2)) as "Média notas IMDB"
from app_anime.anime
where publico_alvo ilike 'Adolescente'
group by publico_alvo;


-- Consulta 20
-- Desafio: Liste o top 3 animes cadastrados com o maior número de episódios.

select 
	nome as "Nome anime",
	sum(qtd_episodios) as "Total de episódios"
from app_anime.anime
group by nome
order by sum(qtd_episodios) desc
limit 3;
