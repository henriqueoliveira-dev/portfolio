-- =========================================================
-- SQL Server - Procedures
-- Projeto: Pessoa e Telefone
-- =========================================================

-- Procedure simples
CREATE PROC SOMA
AS
    SELECT 10 + 10 AS SOMA
GO

EXEC SOMA
GO


-- Procedure com parâmetros
CREATE PROC CONTA
    @NUM1 INT,
    @NUM2 INT
AS
    SELECT @NUM1 + @NUM2 AS RESULTADO
GO

EXEC CONTA 90, 78
GO

DROP PROC CONTA
GO


-- Procedure com parâmetro
-- Consulta telefones de acordo com o tipo informado
CREATE PROC TELEFONES
    @TIPO CHAR(3)
AS
    SELECT
        NOME,
        NUMERO
    FROM PESSOA
    INNER JOIN TELEFONE
        ON IDPESSOA = ID_PESSOA
    WHERE TIPO = @TIPO
GO

EXEC TELEFONES 'CEL'
GO

EXEC TELEFONES 'COM'
GO


-- Procedure com parâmetro de saída
CREATE PROCEDURE GETTIPO
    @TIPO CHAR(3),
    @CONTADOR INT OUTPUT
AS
    SELECT @CONTADOR = COUNT(*)
    FROM TELEFONE
    WHERE TIPO = @TIPO
GO

-- Execução com parâmetro OUTPUT
DECLARE @SAIDA INT

EXEC GETTIPO
    @TIPO = 'CEL',
    @CONTADOR = @SAIDA OUTPUT

SELECT @SAIDA
GO


-- Procedure de cadastro de pessoa e telefone
CREATE PROC CADASTRO
    @NOME VARCHAR(30),
    @SEXO CHAR(1),
    @NASCIMENTO DATE,
    @TIPO CHAR(3),
    @NUMERO VARCHAR(10)
AS
    DECLARE @FK INT

    INSERT INTO PESSOA
    VALUES (@NOME, @SEXO, @NASCIMENTO)

    SET @FK = (
        SELECT IDPESSOA
        FROM PESSOA
        WHERE IDPESSOA = @@IDENTITY
    )

    INSERT INTO TELEFONE
    VALUES (@TIPO, @NUMERO, @FK)
GO

-- Exemplo de execução
EXEC CADASTRO
    'JORGE',
    'M',
    '1981-01-01',
    'CEL',
    '97273822'
GO
