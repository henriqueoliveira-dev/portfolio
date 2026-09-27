-- 02 - Criação das tabelas

USE biblioteca;

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    id_autor INT,

    CONSTRAINT fk_livro_autor
        FOREIGN KEY (id_autor)
        REFERENCES autor(id_autor)
);
