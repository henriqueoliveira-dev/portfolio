USE comercio_db;

-- =========================================================
-- UPDATE / DELETE
-- =========================================================

-- 1. Aumentar o estoque de um produto
UPDATE produtos
SET estoque = estoque + 10
WHERE id_produto = 1;


-- 2. Diminuir o estoque de um produto após uma venda
UPDATE produtos
SET estoque = estoque - 3
WHERE id_produto = 1
  AND estoque >= 3;


-- 3. Atualizar o preço de um produto
UPDATE produtos
SET preco = 49.90
WHERE id_produto = 1;


-- 4. Atualizar o telefone de um cliente
UPDATE clientes
SET telefone = '11999998888'
WHERE id_cliente = 1;


-- 5. Atualizar o e-mail de um cliente
UPDATE clientes
SET email = 'cliente.atualizado@example.com'
WHERE id_cliente = 1;


-- 6. Produtos sem estoque
SELECT
    id_produto,
    nome,
    estoque
FROM produtos
WHERE estoque = 0;


-- 7. Produtos com estoque baixo
SELECT
    id_produto,
    nome,
    estoque
FROM produtos
WHERE estoque < 5;


-- 8. Exemplo de exclusão de produto
-- Só deve ser executado quando o produto não possuir
-- registros relacionados em itens_venda.

-- DELETE FROM produtos
-- WHERE id_produto = 11;


-- 9. Exemplo de exclusão de cliente
-- Só deve ser executado quando o cliente não possuir vendas.

-- DELETE FROM clientes
-- WHERE id_cliente = 10;


-- 10. Conferir produtos após as alterações
SELECT
    id_produto,
    nome,
    preco,
    estoque
FROM produtos
ORDER BY id_produto;
