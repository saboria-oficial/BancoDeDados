-- CRIAÇÃO DA TABELA 'Perfil'

CREATE TABLE Perfil (
    ID_Perfil INTEGER IDENTITY,
    fk_Cliente_num_cpf_cnpj VARCHAR(20),
    PRIMARY KEY (ID_Perfil, fk_Cliente_num_cpf_cnpj)
);


ALTER TABLE Perfil ADD CONSTRAINT FK_Perfil_2
    FOREIGN KEY (fk_Cliente_num_cpf_cnpj)
    REFERENCES Cliente (num_cpf_cnpj)
    ON DELETE CASCADE;