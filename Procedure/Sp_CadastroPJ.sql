---PROCEDURE Sp_CadastroPJ

USE Saboria
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
---Verifica a existencia de um Procedure com o nome Sp_CadastroPJ se existir ele apaga

IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'Sp_CadastroPJ')
	BEGIN
		DROP PROCEDURE Sp_CadastroPJ
	END
GO

---Criação da Procedure 
CREATE PROCEDURE [dbo].[Sp_CadastroPJ]

	@Tipo_acao INTEGER, -- 1- Incluir, 2- Apagar, 3- Alterar
	@ID_Restaurante INTEGER = NULL,	
	@Tipo_Culinaria VARCHAR (120) = NULL,
	@CNPJ VARCHAR(30) = NULL

AS

BEGIN--INICIO PROCEDURE

---Bloco de validação cadastro - Cadastro já existe na tabela

	IF(@Tipo_acao = 1)

	BEGIN
		IF EXISTS(SELECT CNPJ FROM Saboria.dbo.PessoaJuridica
			  WHERE CNPJ = @CNPJ)

		SELECT 'CNPJ já cadastrado' AS analíse

---Bloco para Inserir o Novo Cadastro (BLOCO INSERT)

	ELSE 
	 
		INSERT INTO PessoaJuridica (Tipo_Culinaria,CNPJ)
		VALUES (@Tipo_Culinaria, @CNPJ)

	END


---Bloco para apagar o cadastro (BLOCO DELETE)

	ELSE 
		IF(@Tipo_acao = 2)

		BEGIN
			DELETE FROM PessoaJuridica
			WHERE CNPJ = @CNPJ
		END
---Bloco para a alteração do Produto (BLOCO UPDATE)

		ELSE 
		IF (@Tipo_Acao = 3)

	BEGIN 
		UPDATE PessoaJuridica
		SET Tipo_Culinaria = @Tipo_Culinaria, CNPJ =  @CNPJ
		WHERE CNPJ = @CNPJ

	END

END ---Fim da Procedure



 		