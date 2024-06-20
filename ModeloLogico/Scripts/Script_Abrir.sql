
--CRIAÇÕA DA TABELA DE RELACIONAMENTO 'ABRIR'

CREATE TABLE Abrir (
    fk_PessoaFisica_ID_Usuario				INTEGER,
    fk_PessoaFisica_num_cpf_cnpj_cliente	VARCHAR(20),
    fk_PerfilFisico_ID_PerfilFisico			INTEGER
);

select * from Abrir;

DROP TABLE Abrir;

ALTER TABLE Abrir ADD CONSTRAINT FK_Abrir_2
    FOREIGN KEY (fk_PerfilFisico_ID_PerfilFisico)
    REFERENCES PerfilFisico (ID_PerfilFisico)
    ON DELETE CASCADE;

ALTER TABLE Abrir ADD CONSTRAINT FK_Abrir_1
    FOREIGN KEY (fk_PessoaFisica_ID_Usuario)
    REFERENCES PessoaFisica (ID_Usuario)
    ON DELETE CASCADE;

 
-- ESSA CONSTRAIT NÃO QUIS CRIAR POR QUE ELA NÃO É UMA CHAVE PRIMARIA!!!!!!

/*ALTER TABLE Abrir ADD CONSTRAINT FK_Abrir_3
    FOREIGN KEY (fk_PessoaFisica_num_cpf_cnpj_cliente)
    REFERENCES PessoaFisica (num_cpf_cnpj_cliente)
    ON DELETE CASCADE; */
 



select * from PessoaFisica;