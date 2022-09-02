CREATE DATABASE servicos_RH;

USE servicos_RH;

CREATE TABLE Colaboradores(
	idColaborador		bigint auto_increment,
	nome				varchar(255),
    salario				decimal(6,2),
	experiencia			char,
    sexo				char,
	PRIMARY KEY(idColaborador)
);

INSERT INTO Colaboradores (nome, salario, experiencia, sexo) VALUES ('Fabiano', 2500.00, 'N', 'M');
INSERT INTO Colaboradores (nome, salario, experiencia, sexo) VALUES ('Maria', 1200.00, 'S', 'F');
INSERT INTO Colaboradores (nome, salario, experiencia, sexo) VALUES ('João', 3000.00, 'S', 'M');
INSERT INTO Colaboradores (nome, salario, experiencia, sexo) VALUES ('Felipe', 1500.00, 'N', 'M');
INSERT INTO Colaboradores (nome, salario, experiencia, sexo) VALUES ('Ana', 3500.00, 'S', 'F');

SELECT * FROM Colaboradores WHERE salario > 2000;
SELECT * FROM Colaboradores WHERE salario < 2000;

UPDATE Colaboradores SET nome = 'Ellie', salario = 3200.00, sexo = 'F' WHERE idColaborador = 3;