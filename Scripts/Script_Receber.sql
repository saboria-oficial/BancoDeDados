CREATE TABLE Receber (
    fk_Avaliacao_ID_Avaliacao INTEGER,
    fk_Restaurante_ID_Restaurante INTEGER
);

ALTER TABLE Receber ADD CONSTRAINT FK_Receber_1
    FOREIGN KEY (fk_Avaliacao_ID_Avaliacao)
    REFERENCES Avaliacao (ID_Avaliacao)
    ON DELETE CASCADE;
 
ALTER TABLE Receber ADD CONSTRAINT FK_Receber_2
    FOREIGN KEY (fk_Restaurante_ID_Restaurante)
    REFERENCES Restaurante (ID_Restaurante)
    ON DELETE SET NULL;

