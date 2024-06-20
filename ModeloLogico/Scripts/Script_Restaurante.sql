--SCRIPT DA TABELA RESTAURANTE

-- USANDO O BANCO DE DADOS SABORIA
USE Saboria;

-- FAZ A VERIFICAÇÃO SE EXISTE UMA TABELA COM ESSE NOME E SE EXISTIR ELE APAGA

IF (OBJECT_ID(N'[dbo].[Restaurante]', 'U') IS NOT NULL)
	BEGIN
		DROP TABLE Restaurante
	END
GO

--CRIAÇÃO DA TABELA RESTAURANTE 

CREATE TABLE Restaurante (
    ID_Restaurante			INTEGER IDENTITY PRIMARY KEY,
    Estacionamento			VARCHAR(250),
	Endereco				VARCHAR(460),
    HoraAbertura			TIME,
    HoraFechamento			TIME,
    Acessibilidade			VARCHAR(360),
    Idioma					VARCHAR(120),
    Plataforma				VARCHAR(350),
    Crianca					VARCHAR(250),
    FormaDePagamento		VARCHAR(120),
    Delivery				VARCHAR(120),
    fk_Cardapio_ID_Cardapio INTEGER
);

ALTER TABLE Restaurante ADD CONSTRAINT FK_Restaurante_2
    FOREIGN KEY (fk_Cardapio_ID_Cardapio)
    REFERENCES Cardapio (ID_Cardapio)
    ON DELETE CASCADE;
