CREATE DATABASE IF NOT EXISTS torugokv_pdv_FSEBVU 

DEFAULT CHARACTER SET utf8mb4 

COLLATE utf8mb4_general_ci;

USE torugokv_pdv_FSEBVU;

CREATE TABLE usuario(
    codigo_usuario INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(60) NOT NULL,
    senha_login VARCHAR(32) NOT NULL
);

CREATE TABLE receita(
    id_receita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    descricao VARCHAR(60) NOT NULL,
    ingredientes VARCHAR(32) NOT NULL,
    preparo VARCHAR(200) NOT NULL,
    categoria VARCHAR(1) NOT NULL,
    img_receita VARCHAR(1) NOT NULL
);

CREATE TABLE avaliacao(
    id_avaliacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    autor_avaliacao VARCHAR(50) NOT NULL,
    data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    nota VARCHAR(1) NOT NULL
);

CREATE TABLE favorito(
    id_favorito INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE categoria(
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sobremesas VARCHAR(1) NOT NULL,
    pratos_principais VARCHAR(1) NOT NULL,
    bebidas VARCHAR(1) NOT NULL
);

CREATE TABLE comentario(
    id_comentario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),         /* data_comentario */
    autor_comentario VARCHAR(1) NOT NULL
);

CREATE TABLE login(
    codigo_login INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_completo_login VARCHAR(100) NOT NULL,
    email_login VARCHAR(50) NOT NULL UNIQUE,
    senha_login VARCHAR(32) NOT NULL,
    tipo_login INT(11) NOT NULL DEFAULT 0
);

/*lembrar do ALTER TABLE depois*/

INSERT INTO login (codigo_login, nome_completo_login, email_login, senha_login, tipo_login) VALUES
(1, 'Administrador', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(2, 'Usuario', 'teste@gmail.com', '202cb962ac59075b964b07152d234b70', 1);