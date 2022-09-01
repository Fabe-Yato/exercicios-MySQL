CREATE DATABASE loja_games;

USE loja_games;

CREATE TABLE produtos (
	CodProduto			bigint auto_increment,
    nome				varchar(255) not null,
    genero 				varchar(50),
    estoque				int,
    valor  				decimal(5,2) not null,
    primary key(CodProduto)
);

INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('The Last of Us', 'ação', 50, 589.90);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Crash Bandicoot', 'Aventura', 80, 159.99);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Resident Evil: Village', 'Terror', 25, 250.00);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Spider-Man', 'ação', 90, 200.00);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Read Dead Redemption 2', 'ação', 60, 550.00);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Horizon Zero Dawn', 'ação', 70, 189.90);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Litle Nightmares', 'Terror', 50, 50.00);
INSERT INTO produtos (nome, genero, estoque, valor) VALUES ('Grand Theft Auto V', 'ação', 50, 159.90);

SELECT * FROM produtos;
SELECT * FROM produtos WHERE valor > 500;
SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 510.00 WHERE codProduto = 1;
UPDATE produtos SET valor = 520.00 WHERE codProduto = 5;


