--

CREATE TABLE Localidade (
    ID_localidade INTEGER IDENTITY PRIMARY KEY,
    CEP VARCHAR(10),
    Rua VARCHAR(150),
    Bairro VARCHAR(200),
    Cidade VARCHAR(200),
    Numero VARCHAR(200),
    Complemento VARCHAR(200),
    Localidade_atual VARCHAR(250)
);
