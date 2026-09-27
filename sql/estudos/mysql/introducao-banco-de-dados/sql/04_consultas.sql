-- 04 - Consultas

USE biblioteca;

-- Todos os autores
SELECT *
FROM autor;

-- Todos os livros
SELECT *
FROM livro;

-- Livros com seus respectivos autores
SELECT
    livro.titulo,
    livro.ano_publicacao,
    autor.nome AS autor
FROM livro
INNER JOIN autor
    ON livro.id_autor = autor.id_autor;
