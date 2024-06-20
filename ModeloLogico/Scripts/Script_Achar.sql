CREATE TABLE Achar (
    fk_Restaurante_ID_Restaurante INTEGER,
    fk_Localidade_ID_localidade INTEGER
);

DROP TABLE Achar

ALTER TABLE Achar ADD CONSTRAINT FK_Achar_1
    FOREIGN KEY (fk_Restaurante_ID_Restaurante)
    REFERENCES Restaurante (ID_Restaurante)
    ON DELETE CASCADE;
 
ALTER TABLE Achar ADD CONSTRAINT FK_Achar_2
    FOREIGN KEY (fk_Localidade_ID_localidade)
    REFERENCES Localidade (ID_localidade)
    ON DELETE SET NULL;