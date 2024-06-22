--- CRIAÇÃO DA TABELA 'CartaoCredito'

CREATE TABLE CartaoCredito (
    ID_Credito	INTEGER IDENTITY,
    Bandeira	VARCHAR(50),
    fk_Pagamento_ID_Pagamento INTEGER,
    PRIMARY KEY (ID_Credito, fk_Pagamento_ID_Pagamento)
);

ALTER TABLE CartaoCredito ADD CONSTRAINT FK_CartaoCredito_2
    FOREIGN KEY (fk_Pagamento_ID_Pagamento)
    REFERENCES Pagamento (ID_Pagamento)
    ON DELETE CASCADE;