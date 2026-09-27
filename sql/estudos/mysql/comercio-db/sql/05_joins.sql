USE comercio_db;

-- =========================================================
-- JOINs
-- =========================================================

-- 1. Produtos e suas categorias
SELECT
    p.id_produto,
    p.nome AS produto,
    c.nome AS categoria
FROM produtos AS p
INNER JOIN categorias AS c
    ON p.id_categoria = c.id_categoria;


-- 2. Vendas e respectivos clientes
SELECT
    v.id_venda,
    c.nome AS cliente,
    v.data_venda
FROM vendas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente;


-- 3. Produtos vendidos
SELECT
    i.id_venda,
    p.nome AS produto,
    i.quantidade,
    p.preco,
    i.quantidade * p.preco AS valor_total
FROM itens_venda AS i
INNER JOIN produtos AS p
    ON i.id_produto = p.id_produto;


-- 4. Consulta completa da venda
SELECT
    v.id_venda AS venda,
    c.nome AS cliente,
    p.nome AS produto,
    i.quantidade,
    p.preco,
    i.quantidade * p.preco AS total
FROM vendas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente
INNER JOIN itens_venda AS i
    ON v.id_venda = i.id_venda
INNER JOIN produtos AS p
    ON i.id_produto = p.id_produto;


-- 5. Total de cada venda
SELECT
    v.id_venda AS venda,
    SUM(i.quantidade * p.preco) AS total
FROM vendas AS v
INNER JOIN itens_venda AS i
    ON v.id_venda = i.id_venda
INNER JOIN produtos AS p
    ON i.id_produto = p.id_produto
GROUP BY v.id_venda;


-- 6. Total vendido por cliente
SELECT
    c.id_cliente,
    c.nome AS cliente,
    SUM(i.quantidade * p.preco) AS total_compras
FROM clientes AS c
INNER JOIN vendas AS v
    ON c.id_cliente = v.id_cliente
INNER JOIN itens_venda AS i
    ON v.id_venda = i.id_venda
INNER JOIN produtos AS p
    ON i.id_produto = p.id_produto
GROUP BY
    c.id_cliente,
    c.nome;


-- 7. Quantidade de produtos vendidos por produto
SELECT
    p.id_produto,
    p.nome AS produto,
    SUM(i.quantidade) AS quantidade_vendida
FROM produtos AS p
INNER JOIN itens_venda AS i
    ON p.id_produto = i.id_produto
GROUP BY
    p.id_produto,
    p.nome;


-- 8. Produtos, categorias e estoque
SELECT
    p.nome AS produto,
    c.nome AS categoria,
    p.preco,
    p.estoque
FROM produtos AS p
INNER JOIN categorias AS c
    ON p.id_categoria = c.id_categoria
ORDER BY c.nome, p.nome;
