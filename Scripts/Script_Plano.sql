---CRIAÇÃO DA TABELA DE PLANOS 

CREATE TABLE Plano (
    ID_Planos		INTEGER IDENTITY PRIMARY KEY,
    NomeDoPlano		VARCHAR(120),
    Preco			FLOAT,
    Descricao		VARCHAR(360)
);
