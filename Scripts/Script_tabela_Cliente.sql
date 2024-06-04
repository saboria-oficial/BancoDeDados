--Script Tabela Cliente 

--verifica se existe uma tabela cliente e caso exista ele apaga ela
IF (OBJECT_ID(N'[dbo].[Cliente]', 'U') IS NOT NULL)
	BEGIN
		DROP TABLE Cliente
	END
GO

--Cria��o a tabela cliente 
CREATE TABLE Cliente(
	ID_Cliente		INTEGER  IDENTITY,
	Nome			VARCHAR(60) NOT NULL,
	Telefone		VARCHAR(20) NOT NULL,
	Email			VARCHAR(50) NOT NULL,
	Restricao		VARCHAR(60), 
	CEP				VARCHAR(30) NOT NULL,
	SENHA			VARCHAR(40) NOT NULL,
	Tipo			VARCHAR(40) NOT NULL,
	PRIMARY KEY(ID_Cliente)
);
GO


--seleciona a tabela cliente para a execu��o 
select ROW * from Cliente;
SELECT * FROM PessoaFisica
ROLLIDENTIFY

INSERT INTO PessoaFisica(ID_Cliente,CPF)
VALUES(1,'1234345')

-- Verifica o tipo da pessoa, se ela � uma pessoa fisica ou juridica 
SELECT 
	ID_cliente,
	Nome,
    Telefone,
	Email,
    Restricao,
    CEP,
    Senha,
	Tipo,

	CASE
        WHEN Tipo = 'Pessoa F�sica' THEN 'Pessoa_F�sica'
        WHEN TIPO =  'Pessoa Jur�dica' THEN 'Pessoa_Jur�dica'
        ELSE 'Desconhecido'
    END AS Tipo_Pessoa
FROM Cliente;





