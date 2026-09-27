USE comercio_db;

-- =========================================================
-- CATEGORIAS
-- =========================================================

INSERT INTO categorias (nome) VALUES
('Informática'),
('Eletrônicos'),
('Limpeza'),
('Alimentos'),
('Bebidas');


-- =========================================================
-- CLIENTES
-- Dados fictícios para demonstração
-- =========================================================

INSERT INTO clientes (nome, email, telefone) VALUES
('Carlos Silva', 'carlos.silva@example.com', '11999990001'),
('Mariana Souza', 'mariana.souza@example.com', '11999990002'),
('João Oliveira', 'joao.oliveira@example.com', '11999990003'),
('Ana Santos', 'ana.santos@example.com', '11999990004'),
('Pedro Costa', 'pedro.costa@example.com', '11999990005');


-- =========================================================
-- PRODUTOS
-- =========================================================

INSERT INTO produtos (nome, preco, estoque, id_categoria) VALUES
('Mouse', 45.90, 20, 1),
('Teclado', 89.90, 15, 1),
('Monitor', 899.90, 8, 1),
('Cabo HDMI', 35.00, 30, 2),
('Notebook', 3500.00, 5, 1),
('Fone de Ouvido', 120.00, 12, 2),
('Detergente', 3.50, 40, 3),
('Arroz 5kg', 28.90, 25, 4),
('Refrigerante 2L', 9.50, 50, 5),
('Água Mineral', 3.00, 60, 5),
('Mouse Pad', 25.00, 0, 1);


-- =========================================================
-- VENDAS
-- =========================================================

INSERT INTO vendas (id_cliente, data_venda) VALUES
(1, '2026-08-20'),
(2, '2026-08-20'),
(3, '2026-08-21'),
(4, '2026-08-22'),
(5, '2026-08-22');


-- =========================================================
-- ITENS DAS VENDAS
-- =========================================================

INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES
(1, 3, 2),
(1, 2, 1),
(1, 4, 3),
(4, 1, 15),
(5, 2, 7);
