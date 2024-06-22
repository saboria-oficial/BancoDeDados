--- CRIAÇÃO DA TABELA 'Configuracao_Conta'
CREATE TABLE Configuracao_Conta (
    ID_Config				INTEGER IDENTITY PRIMARY KEY,
    Nome					VARCHAR(255),
    Email					VARCHAR(255),
    Senha					VARCHAR(255),
    Telefone				VARCHAR(50),
    CEP						VARCHAR(20),
    Retricao				VARCHAR(255),
);
 

