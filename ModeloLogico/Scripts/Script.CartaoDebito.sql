--- CRIAÇÃO DA TABELA 'CartaoDebito'

CREATE TABLE CartaoDebito (
    ID_Debito					INTEGER IDENTITY,
    Bandeira					VARCHAR(50),
    fk_Pagamento_ID_Pagamento	INTEGER,
    PRIMARY KEY (ID_Debito, fk_Pagamento_ID_Pagamento)
);

ALTER TABLE CartaoDebito ADD CONSTRAINT FK_CartaoDebito_2
    FOREIGN KEY (fk_Pagamento_ID_Pagamento)
    REFERENCES Pagamento (ID_Pagamento)
    ON DELETE CASCADE;
 
