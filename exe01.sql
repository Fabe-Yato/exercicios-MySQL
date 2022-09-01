CREATE DATABASE servicos_RH;

USE servicos_RH;

CREATE TABLE Colaboradores(
	idColaborador		bigint auto_increment,
	nome				varchar(255),
    salario				decimal(6,2),
	experiencia			char,
    
	PRIMARY KEY(idColaborador)
);

INSERT INTO Colaboradores (nome, salario, experiencia) VALUES ('Fabiano', 2500.00, 'N');
INSERT INTO Colaboradores (nome, salario, experiencia)VALUES ('Maria', 1200.00, 'S');
INSERT INTO Colaboradores (nome, salario, experiencia) VALUES ('João', 3000.00, 'S');
INSERT INTO Colaboradores (nome, salario, experiencia) VALUES ('Felipe', 1500.00, 'N');
INSERT INTO Colaboradores (nome, salario, experiencia) VALUES ('Ana', 3500.00, 'S');

SELECT * FROM Colaboradores WHERE salario > 2000;
SELECT * FROM Colaboradores WHERE salario < 2000;

UPDATE Colaboradores SET nome = 'Ellie', salario = 3200.00 WHERE id = 3;