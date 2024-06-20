--- CRIAÇÃO DA TABELA 'Escolher'

CREATE TABLE Escolher (
    fk_Perfil_ID_Perfil INTEGER,
    fk_Perfil_num_cpf_cnpj VARCHAR(20),
    fk_Plano_ID_Planos INTEGER
);


ALTER TABLE Escolher ADD CONSTRAINT FK_Escolher_1
    FOREIGN KEY (fk_Perfil_ID_Perfil, fk_Perfil_num_cpf_cnpj)
    REFERENCES Perfil (ID_Perfil, fk_Cliente_num_cpf_cnpj)
    ON DELETE CASCADE;
 
ALTER TABLE Escolher ADD CONSTRAINT FK_Escolher_2
    FOREIGN KEY (fk_Plano_ID_Planos)
    REFERENCES Plano (ID_Planos)
    ON DELETE CASCADE;
