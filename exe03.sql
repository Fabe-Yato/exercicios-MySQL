CREATE DATABASE registro_escola;

USE registro_escola;

CREATE TABLE Estudantes(
	RA				bigint auto_increment,
    nome			varchar(255) not null,
    nota			decimal(2,1) not null,
    responsavel		varchar(255),
    faltas			int,
	primary key (RA)
);

INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Joel', 8.5, 'Ana da Silva', 2 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Ellie', 9.0, 'João ferreira', 5 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Melissa', 4.8, 'Maria Oliveira', 9 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Pedro', 6.0, 'Guilherme Silva', 2 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Felipe', 9.0, 'Natasha Gomes', 0 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Liz', 9.5, 'Lúcia Maria', 1 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Yennefer', 5.0, 'Pedro Silveira', 7 );
INSERT INTO Estudantes (nome, nota, responsavel, faltas) VALUES ('Geralt', 2.5, 'luciano Pereira', 9 );

SELECT * FROM Estudantes;
SELECT * FROM Estudantes WHERE nota > 7.0;
SELECT * FROM Estudantes WHERE nota < 7.0;

ALTER TABLE Estudantes MODIFY nota decimal(3, 1);

UPDATE Estudantes SET nota = 9.5, faltas = 2 WHERE RA = 7;



