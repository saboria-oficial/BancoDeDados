---
CREATE TABLE Dar (
    fk_Avaliacao_ID_Avaliacao INTEGER,
    fk_PerfilFisico_ID_PerfilFisico INTEGER
);

ALTER TABLE Dar ADD CONSTRAINT FK_Dar_1
    FOREIGN KEY (fk_Avaliacao_ID_Avaliacao)
    REFERENCES Avaliacao (ID_Avaliacao)
    ON DELETE CASCADE;
 
ALTER TABLE Dar ADD CONSTRAINT FK_Dar_2
    FOREIGN KEY (fk_PerfilFisico_ID_PerfilFisico)
    REFERENCES PerfilFisico (ID_PerfilFisico)
    ON DELETE SET NULL;

