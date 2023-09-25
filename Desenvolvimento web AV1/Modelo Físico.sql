CREATE DATABASE IF NOT EXISTS FSEBVU
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE FSEBVU;

CREATE TABLE usuario(
codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_usuario VARCHAR(50) NOT NULL,
email VARCHAR(60) NOT NULL,
senha VARCHAR(32) NOT NULL,
);

CREATE TABLE tipo_usuario(
cadastrado VARCHAR(40) NOT NULL,
nao_cadastrado VARCHAR(40) NOT NULL,
PRIMARY KEY (cadastrado)
);

CREATE TABLE post(
data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
hora TIMESTAMP NOT NULL,
nome_usuario NOT NULL,
titulo VARCHAR(50) NOT NULL,
descricao VARCHAR(300),
ingredientes VARCHAR(600) NOT NULL,
modo_de_preparo VARCHAR(1000) NOT NULL,
FOREIGN KEY (nome_usuario) REFERENCE (usuario)
);

CREATE TABLE site_receita(
nome_usuario VARCHAR(50) NOT NULL,
FOREIGN KEY (nome_usuario) REFERENCE (usuario)
);