--- CRIAÇÃO DA TABELA ''

CREATE TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil (
    fk_PossoAjudar_ID_PossoAjudar		INTEGER,
    fk_FAQ_ID_FAQ						INTEGER,
    fk_Depoimento_ID_Depoimento			INTEGER,
    fk_Blog_ID_blog						INTEGER,
    fk_Perfil_ID_Perfil					INTEGER,
    fk_Perfil_fk_Cliente_num_cpf_cnpj	VARCHAR(20)
);

ALTER TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil ADD CONSTRAINT FK_Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil_1
    FOREIGN KEY (fk_PossoAjudar_ID_PossoAjudar)
    REFERENCES PossoAjudar (ID_PossoAjudar)
    ON DELETE CASCADE;
 
ALTER TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil ADD CONSTRAINT FK_Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil_2
    FOREIGN KEY (fk_FAQ_ID_FAQ)
    REFERENCES FAQ (ID_FAQ)
   ON DELETE CASCADE;
 
ALTER TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil ADD CONSTRAINT FK_Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil_3
    FOREIGN KEY (fk_Depoimento_ID_Depoimento)
    REFERENCES Depoimento (ID_Depoimento)
    ON DELETE CASCADE;
 
ALTER TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil ADD CONSTRAINT FK_Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil_4
    FOREIGN KEY (fk_Blog_ID_blog)
    REFERENCES Blog (ID_blog)
    ON DELETE NO ACTION;
 
ALTER TABLE Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil ADD CONSTRAINT FK_Interagir_PossoAjudar_FAQ_Depoimento_Blog_Perfil_5
    FOREIGN KEY (fk_Perfil_ID_Perfil, fk_Perfil_fk_Cliente_num_cpf_cnpj)
    REFERENCES Perfil (ID_Perfil, fk_Cliente_num_cpf_cnpj)
   ON DELETE CASCADE;