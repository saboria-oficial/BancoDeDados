--TABELAS DE RELACIONAMENTO 

-- FAZ A VERIFICA플O SE EXISTE UMA TABELA COM ESSE NOME E SE EXISTIR ELE APAGA

USE Saboria;

IF (OBJECT_ID(N'[dbo].[Iniciar]', 'U') IS NOT NULL)
	BEGIN
		DROP TABLE Iniciar
	END
GO

-- FAZ ACRIA플O DA TABELA INICIAR
CREATE TABLE Iniciar (
    fk_PessoaJuridica_ID_Restaurante					INTEGER,
    fk_PessoaJuridica_fk_Cliente_num_cpf_cnpj_cliente	INTEGER,
    fk_PerfilJuridico_ID_PerfilJuridico					INTEGER
);

--- ADICIONADO CONSTRAINT DE CHAVE ESTRANGEIRAS NA TABELA 'INICIAR'

ALTER TABLE Iniciar ADD CONSTRAINT FK_Iniciar_1
    FOREIGN KEY (fk_PessoaJuridica_ID_Restaurante, fk_PessoaJuridica_fk_Cliente_num_cpf_cnpj_cliente)
    REFERENCES PessoaJuridica (ID_Restaurante, fk_Cliente_ID_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE Iniciar ADD CONSTRAINT FK_Iniciar_2
    FOREIGN KEY (fk_PerfilJuridico_ID_PerfilJuridico)
    REFERENCES PerfilJuridico (ID_PerfilJuridico)
    ON DELETE CASCADE;


-----------------------------------------------------------


-- FAZ A VERIFICA플O SE EXISTE UMA TABELA COM ESSE NOME E SE EXISTIR ELE APAGA

IF (OBJECT_ID(N'[dbo].[Adicionar]', 'U') IS NOT NULL)
	BEGIN
		DROP TABLE Adicionar
	END
GO

--FAZ A CRIA플O DA TABELA Adicionar
CREATE TABLE Adicionar (
    fk_Cardapio_ID_Cardapio				INTEGER,
    fk_PerfilJuridico_ID_PerfilJuridico INTEGER
);

----- ADICIONADO CONSTRAINT DE CHAVE ESTRANGEIRAS NA TABELA 'ADICIONAR'

ALTER TABLE Adicionar ADD CONSTRAINT FK_Adicionar_1
    FOREIGN KEY (fk_Cardapio_ID_Cardapio)
    REFERENCES Cardapio (ID_Cardapio)
    ON DELETE CASCADE;
 
ALTER TABLE Adicionar ADD CONSTRAINT FK_Adicionar_2
    FOREIGN KEY (fk_PerfilJuridico_ID_PerfilJuridico)
    REFERENCES PerfilJuridico (ID_PerfilJuridico)
    ON DELETE CASCADE;
