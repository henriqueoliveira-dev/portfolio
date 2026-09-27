USE comercio_db;

-- =========================================================
-- CONSULTAS BÁSICAS
-- =========================================================

-- 1. Listar todos os produtos
SELECT *
FROM produtos;

-- 2. Listar nome e preço dos produtos
SELECT
    nome,
    preco
FROM produtos;

-- 3. Produtos com estoque inferior a 5
SELECT
    id_produto,
    nome,
    estoque
FROM produtos
WHERE estoque < 5;

-- 4. Produtos sem estoque
SELECT
    id_produto,
    nome,
    estoque
FROM produtos
WHERE estoque = 0;

-- 5. Produtos com preço superior a R$ 100,00
SELECT
    nome,
    preco
FROM produtos
WHERE preco > 100;

-- 6. Produtos ordenados pelo preço
SELECT
    nome,
    preco
FROM produtos
ORDER BY preco ASC;

-- 7. Produtos do mais caro para o mais barato
SELECT
    nome,
    preco
FROM produtos
ORDER BY preco DESC;

-- 8. Produtos com estoque disponível
SELECT
    nome,
    estoque
FROM produtos
WHERE estoque > 0;

-- 9. Clientes cadastrados
SELECT
    id_cliente,
    nome,
    email,
    telefone
FROM clientes;

-- 10. Vendas realizadas
SELECT
    id_venda,
    id_cliente,
    data_venda
FROM vendas
ORDER BY data_venda;

-- 11. Quantidade total de itens vendidos
SELECT
    SUM(quantidade) AS quantidade_total
FROM itens_venda;

-- 12. Maior preço
SELECT
    MAX(preco) AS maior_preco
FROM produtos;

-- 13. Menor preço
SELECT
    MIN(preco) AS menor_preco
FROM produtos;

-- 14. Preço médio
SELECT
    AVG(preco) AS preco_medio
FROM produtos;

-- 15. Quantidade de produtos cadastrados
SELECT
    COUNT(*) AS total_produtos
FROM produtos;
