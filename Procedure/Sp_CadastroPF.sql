---PROCEDURE CADASTRO Pessoa Fisica 

USE Saboria
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

---Consulta se existe um Procedure com esse nome, caso exista ele apaga ela

IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'Sp_CadastroPF')
	BEGIN 
		DROP PROCEDURE Sp_CadastroPF
	END
GO

---Criação da Procedure
CREATE PROCEDURE [dbo].[Sp_CadastroPF]

	@Tipo_Acao INTEGER, -- 1- Incluir, 2- Apagar, 3- Alterar
	@ID_Usuario INTEGER = NULL, 
	@ID_Cliente INTEGER = NULL, 
	@CPF VARCHAR(20) = NULL

AS 



BEGIN --INICIO PROCEDURE

---Bloco de validação cadastro - Cadastro já existe na tabela

	IF (@Tipo_Acao = 1)

	BEGIN 
		 IF EXISTS(SELECT CPF FROM Saboria.dbo.PessoaFisica
					WHERE CPF = @CPF)
		SELECT 'CPF já cadastrado' as analíse

	---Bloco para Inserir o Novo Cadastro (BLOCO INSERT)

	ELSE 

	INSERT INTO PessoaFisica(CPF)
	VALUES(@CPF)

	END

	---Bloco para apagar o cadastro (BLOCO DELETE)

	IF(@Tipo_Acao = 2)

	BEGIN
		DELETE FROM PessoaFisica
		WHERE CPF = @CPF
	END

	---Bloco para a alteração do Produto (BLOCO UPDATE)

	IF (@Tipo_Acao = 3)

	BEGIN 
		UPDATE PessoaFisica
		SET CPF = @CPF
		WHERE CPF = @CPF

	END

END ---Fim da Procedure

	