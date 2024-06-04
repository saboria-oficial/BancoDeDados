--Script Tabela Pessoa Fisica

--verifica se existe uma tabela cliente e caso exista ele apaga ela

IF (OBJECT_ID(N'[dbo].[PessoaFisica]', 'U') IS NOT NULL)
	BEGIN
		DROP TABLE PessoaFisica
	END 
GO

CREATE TABLE PessoaFisica (
    ID_Usuario		INTEGER IDENTITY,
	ID_Cliente		INTEGER FOREIGN KEY REFERENCES Cliente(ID_Cliente),
    CPF				VARCHAR(20),
	PRIMARY KEY     (ID_Usuario, ID_Cliente)
);


--- Filtro das tablas para saber se é juridico ou fisico
SELECT * FROM Cliente
WHERE Tipo = 'Pessoa Física' 
AND Nome = 'Julia'

--Faz a junção das informações da tabea Cliente com a tabela PessoaFisica usando JOIN

SELECT Cliente.ID_Cliente,PessoaFisica.ID_Usuario,Cliente.Nome, Cliente.Tipo, PessoaFisica.CPF
FROM Cliente
JOIN PessoaFisica ON Cliente.ID_Cliente = PessoaFisica.ID_Cliente;





