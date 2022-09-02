CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE categorias(
	id_categorias		bigint auto_increment,
    sabor				varchar(50),
    ingredientes		varchar(255),
    categoria			varchar(50),
    primary key(id_categorias)
);

DROP TABLE categorias;
INSERT INTO categorias VALUES(DEFAULT, 'Mussarela', 'Queijo mussarela', 'Salgada');
INSERT INTO categorias VALUES(DEFAULT, 'Brigadeiro', 'Chocolate com granulados', 'Doce');
INSERT INTO categorias VALUES(DEFAULT, 'Calabresa', 'Calabresa e cebolas', 'Salgada');
INSERT INTO categorias VALUES(DEFAULT, 'Frango', 'Frango desfiado com catupiry', 'Salgada');
INSERT INTO categorias VALUES(DEFAULT, 'Portuguesa', 'presunto, alho, azeite, orégano, ervilha, ovos cozidos.', 'Salgada');
INSERT INTO categorias VALUES(DEFAULT, 'Marguerita', 'azeite, manjericão, alho, azeite, tomate e orégano.', 'Salgada');
INSERT INTO categorias VALUES(DEFAULT, 'Sorvete', 'Sorvete, geleia e chocolate.', 'Doce');
INSERT INTO categorias VALUES(DEFAULT, 'Brownie', 'Brownies, ganache de chocolate branco e várias guloseimas.', 'Doce');


SELECT * FROM categorias;

CREATE TABLE pizzas (
	id_pizzas				bigint auto_increment,
    categorias_id 			bigint,
    preco					decimal(6,2) not null,
    recheio					varchar(50),
    retirada				varchar(50),
    retirar_ingrediente		varchar(50),	
    primary key(id_pizzas),
    foreign key(categorias_id) references categorias(id_categorias)
);

INSERT INTO pizzas VALUES(default, 1, 45.00, 'Catupiry', 'Entrega', 'Tomates');
INSERT INTO pizzas VALUES(default, 2, 60.90, 'M&Ms', 'Entrega', 'Nenhum');
INSERT INTO pizzas VALUES(default, 3, 55.90, 'Catupiry', 'Retirar no local', 'Cebolas');
INSERT INTO pizzas VALUES(default, 4, 40.90, 'Cheddar', 'Entrega', 'Nenhum');
INSERT INTO pizzas VALUES(default, 5,'70.00', 'Nenhum', 'Retirar no local', 'Ervilhas');
INSERT INTO pizzas VALUES(default, 6,'45.00', 'Nenhum', 'Entrega', 'Alho');
INSERT INTO pizzas VALUES(default, 7,'80.99', 'Chocolate', 'Retirar no local', 'Nenhum');
INSERT INTO pizzas VALUES(default, 8,'90.00', 'Chocolate', 'Entrega', 'guloseimas');

SELECT * FROM pizzas;
SELECT * FROM pizzas WHERE preco > 45.0;
SELECT * FROM pizzas WHERE preco BETWEEN 50.0 AND 100.0 ORDER BY preco;
SELECT * FROM categorias WHERE sabor LIKE '%M%';

SELECT categorias.sabor, categorias.ingredientes, categorias.categoria, preco, recheio, retirada, retirar_ingrediente
FROM pizzas INNER JOIN categorias
ON categorias.id_categorias = pizzas.categorias_id ORDER BY sabor;

SELECT categorias.sabor, categorias.ingredientes, categorias.categoria, preco, recheio, retirada, retirar_ingrediente
FROM pizzas INNER JOIN categorias
ON categorias.id_categorias = pizzas.categorias_id	WHERE categoria = 'Doce' ORDER BY sabor;


