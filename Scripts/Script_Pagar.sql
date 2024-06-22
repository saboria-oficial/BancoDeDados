--CRIAÇÃO DA TABELA 'Pagar'

CREATE TABLE Pagar (
    fk_Plano_ID_Planos INTEGER,
    fk_Pagamento_ID_Pagamento INTEGER
);

ALTER TABLE Pagar ADD CONSTRAINT FK_Pagar_1
    FOREIGN KEY (fk_Plano_ID_Planos)
    REFERENCES Plano (ID_Planos)
    ON DELETE SET NULL;
 
ALTER TABLE Pagar ADD CONSTRAINT FK_Pagar_2
    FOREIGN KEY (fk_Pagamento_ID_Pagamento)
    REFERENCES Pagamento (ID_Pagamento)
    ON DELETE SET NULL;
 