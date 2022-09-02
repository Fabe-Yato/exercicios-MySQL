CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE classes(
	id_classe			bigint auto_increment,
    tipo_classe			varchar(50),
    fraqueza			varchar(50),
    rota				varchar(50),
    primary key(id_classe)
);

INSERT INTO classes VALUES (DEFAULT, 'Soldado', 'Atirador', 'TOP-Lane');
INSERT INTO classes VALUES (DEFAULT, 'Atirador', 'Assassino', 'BOT-Lane');
INSERT INTO classes VALUES (DEFAULT, 'Tank', 'Atirador/Assassino', 'Rotação');
INSERT INTO classes VALUES (DEFAULT, 'Assassino', 'Atirador/Soldado', 'Jungle');
INSERT INTO classes VALUES (DEFAULT, 'Mago', 'Atirador/assassino/soldado', 'MID-Lane');
INSERT INTO classes VALUES (DEFAULT, 'Suporte', 'Todos', 'BOT-Lane');

SELECT * FROM classes;

CREATE TABLE personagens (
	id_personagem		bigint auto_increment,
    nome				varchar(255) not null,
    forca				int not null,
    defesa 				int not null,
    vida 				int not null,
    classe_id			bigint,
	primary key(id_personagem),
    foreign key(classe_id) references classes (id_classe)
);

INSERT INTO personagens VALUES(default, 'Hanabi', 3500, 500, 2500, 2);
INSERT INTO personagens VALUES(default, 'Uranus', 1500, 3000, 6500, 3);
INSERT INTO personagens VALUES(default, 'Ruby', 2500, 2700, 3000, 1);
INSERT INTO personagens VALUES(default, 'Karina', 3500, 1500, 2500, 4);
INSERT INTO personagens VALUES(default, 'Cyclops', 3200, 900, 1900, 5);
INSERT INTO personagens VALUES(default, 'Estes', 500, 1500, 1500, 6);
INSERT INTO personagens VALUES(default, 'Beatrix', 3800, 800, 2000, 2);
INSERT INTO personagens VALUES(default, 'Jawhead', 3000, 1500, 3500, 1);

SELECT * FROM personagens;
SELECT * FROM personagens WHERE forca > 2000;
SELECT * FROM personagens WHERE defesa BETWEEN 1000 AND 2000 ORDER BY nome;
SELECT * FROM personagens WHERE nome LIKE '%C%';

SELECT nome, forca, defesa, vida, classes.tipo_classe, classes.fraqueza, classes.rota
FROM personagens INNER JOIN classes
ON classes.id_classe = personagens.classe_id ORDER BY nome; 

SELECT nome, forca, defesa, vida, classes.tipo_classe, classes.fraqueza, classes.rota
FROM personagens INNER JOIN classes
ON classes.id_classe = personagens.classe_id WHERE tipo_classe = 'Atirador'; 


