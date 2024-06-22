--CRIAÇÃO DA TABELA DE RELACIONAMENTO 'LOCALIZAR'

CREATE TABLE Localizar (
    fk_Localidade_ID_localidade INTEGER,
    fk_PerfilFisico_ID_PerfilFisico INTEGER
);

 
ALTER TABLE Localizar ADD CONSTRAINT FK_Localizar_1
    FOREIGN KEY (fk_Localidade_ID_localidade)
    REFERENCES Localidade (ID_localidade)
    ON DELETE CASCADE;
 
ALTER TABLE Localizar ADD CONSTRAINT FK_Localizar_2
    FOREIGN KEY (fk_PerfilFisico_ID_PerfilFisico)
    REFERENCES PerfilFisico (ID_PerfilFisico)
    ON DELETE SET NULL;
