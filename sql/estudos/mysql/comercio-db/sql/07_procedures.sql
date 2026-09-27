USE comercio_db;

-- =========================================================
-- PROCEDURES
-- =========================================================

-- 1. Consultar produto pelo ID
DELIMITER //

CREATE PROCEDURE consultar_produto(IN p_id_produto INT)
BEGIN
    SELECT
        nome,
        preco,
        estoque
    FROM produtos
    WHERE id_produto = p_id_produto;
END //

DELIMITER ;


-- Exemplo:
-- CALL consultar_produto(3);


-- =========================================================
-- 2. Consultar cliente pelo ID
-- =========================================================

DELIMITER //

CREATE PROCEDURE consultar_cliente(IN p_id_cliente INT)
BEGIN
    SELECT
        nome,
        email,
        telefone
    FROM clientes
    WHERE id_cliente = p_id_cliente;
END //

DELIMITER ;


-- Exemplo:
-- CALL consultar_cliente(2);


-- =========================================================
-- 3. Calcular o total de uma venda
-- =========================================================

DELIMITER //

CREATE PROCEDURE registrar_venda(IN p_id_venda INT)
BEGIN
    SELECT
        v.id_venda,
        SUM(i.quantidade * p.preco) AS valor_total
    FROM vendas AS v
    INNER JOIN itens_venda AS i
        ON v.id_venda = i.id_venda
    INNER JOIN produtos AS p
        ON i.id_produto = p.id_produto
    WHERE v.id_venda = p_id_venda
    GROUP BY v.id_venda;
END //

DELIMITER ;


-- Exemplo:
-- CALL registrar_venda(1);


-- =========================================================
-- CONCEITOS PRATICADOS
-- =========================================================
-- CREATE PROCEDURE
-- Parâmetros de entrada (IN)
-- SELECT
-- INNER JOIN
-- SUM
-- GROUP BY
-- WHERE
