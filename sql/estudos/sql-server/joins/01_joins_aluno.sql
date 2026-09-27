-- =========================================================
-- SQL Server - JOINs
-- Projeto: Consultas com ALUNO, TELEFONE e ENDERECO
-- =========================================================

-- INNER JOIN
-- Retorna alunos que possuem telefone e endereço

SELECT
    A.NOME,
    T.TIPO,
    T.NUMERO,
    E.BAIRRO,
    E.UF
FROM ALUNO AS A
INNER JOIN TELEFONE AS T
    ON A.IDALUNO = T.ID_ALUNO
INNER JOIN ENDERECO AS E
    ON A.IDALUNO = E.ID_ALUNO
GO


-- LEFT JOIN
-- Mantém os alunos mesmo quando não possuem telefone
-- e relaciona com seus endereços

SELECT
    A.NOME,
    T.TIPO,
    T.NUMERO,
    E.BAIRRO,
    E.UF
FROM ALUNO AS A
LEFT JOIN TELEFONE AS T
    ON A.IDALUNO = T.ID_ALUNO
INNER JOIN ENDERECO AS E
    ON A.IDALUNO = E.ID_ALUNO
GO
