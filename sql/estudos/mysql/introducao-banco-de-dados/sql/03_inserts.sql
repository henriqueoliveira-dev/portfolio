-- 03 - Inserção de dados

USE biblioteca;

INSERT INTO autor (nome)
VALUES
('Machado de Assis'),
('José de Alencar'),
('Clarice Lispector');

INSERT INTO livro (titulo, ano_publicacao, id_autor)
VALUES
('Dom Casmurro', 1899, 1),
('Memórias Póstumas de Brás Cubas', 1881, 1),
('O Guarani', 1857, 2),
('A Hora da Estrela', 1977, 3);
