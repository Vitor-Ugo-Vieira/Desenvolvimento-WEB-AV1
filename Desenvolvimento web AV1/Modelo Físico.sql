CREATE TABLE usuario(
id nome_usuario VARCHAR(50) NOT NULL,
e-mail VARCHER(60) NOT NULL,
senha VARCHAR(32) NOT NULL,
PRIMARY KEY(e-mail)
);

CREATE TABLE tipo_usuario(
Cadastrado VARCHAR(40) NOT NULL,
Não_Cadastrado VARCHAR(40) NOT NULL,
PRIMARY KEY (Castrado)
);

CREATE TABLE post(
dats date NOT NULL,
hora VARCHAR(5) NOT NULL,
nome_usuario NOT NULL,
titulo VARCHAR(50) NOT NULL,
descricao VRCHAR(300),
Ingredientes VARCHAR(600) NOT NULL,
modo_de_preparo VARCHAR(1000) NOT NULL,
FOREIGN KEY (nome_usuario) REFERENCE (usuario)
);

CREATE TABLE site/receita(
nome_de_usuario VARCHAR(50) NOT NULL,
FOREIGN KEY (nome_usuario) REFERENCE (usuario)
);