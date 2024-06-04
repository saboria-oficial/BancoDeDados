--Script Tabela PessoaJuridica

--verifica se existe uma tabela cliente e caso exista ele apaga ela

IF (OBJECT_ID(N'[dbo].[PessoaJuridica]' , 'U') IS NOT NULL)
	BEGIN 
		DROP TABLE PessoaJuridica
	END
GO

--Criação de tabela puxando informações do ID de outra 

CREATE TABLE PessoaJuridica (
    ID_Restaurante			INTEGER IDENTITY,
	ID_Cliente				INTEGER FOREIGN KEY REFERENCES Cliente(ID_Cliente),
    Tipo_Culinaria			VARCHAR (120),
    CNPJ					VARCHAR(30),  
	PRIMARY KEY				(ID_Restaurante, ID_Cliente),
	
);

select * from PessoaJuridica;

--Faz a junção das informações da tabea Cliente com a tabela PessoaJuridica

SELECT Cliente.ID_Cliente,PessoaJuridica.ID_Restaurante, Cliente.Nome, Cliente.Tipo, PessoaJuridica.CNPJ
FROM Cliente
JOIN PessoaJuridica ON Cliente.ID_Cliente = PessoaJuridica.ID_Cliente;





