---PROCEDURE CADASTRO CLIENTE 

USE Saboria
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

---Consulta se existe um Procedure com esse nome, caso exista ele apaga ela

IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'Sp_CadastroCliente')
	BEGIN 
		DROP PROCEDURE Sp_CadastroCliente 
	END
GO

---Criação da Procedure
CREATE PROCEDURE [dbo].[Sp_CadastroCliente]

	@Tipo_Acao INTEGER, -- 1- Incluir, 2- Apagar, 3- Alterar
	@ID_Cliente INTEGER = NULL, 
	@Nome VARCHAR(60) = NULL,
	@Telefone VARCHAR(20) = NULL,
	@Email VARCHAR(50) = NULL,
	@Restricao VARCHAR(60) = NULL,
	@CEP VARCHAR(30) = NULL,
	@SENHA VARCHAR(40) = NULL,
	@Tipo VARCHAR(20) = NULL

AS 

BEGIN --INICIO PROCEDURE

---Bloco de validação cadastro - Cadastro já existe na tabela

	IF (@Tipo_Acao = 1)

	BEGIN 
		 IF EXISTS(SELECT Email FROM Saboria.dbo.Cliente
					WHERE Email = @Email)
		SELECT 'Email já cadastrado' as analíse

	---Bloco para Inserir o Novo Cadastro (BLOCO INSERT)

	ELSE 

	INSERT INTO Cliente(Nome,Telefone,Email,Restricao,CEP,SENHA,Tipo)
	VALUES(@Nome,@Telefone,@Email,@Restricao,@CEP,@SENHA,@Tipo)

	END

	---Bloco para apagar o cadastro (BLOCO DELETE)

	ELSE

		IF(@Tipo_Acao = 2)

	BEGIN
		DELETE FROM Cliente
		WHERE Email = @Email
	END

	---Bloco para a alteração do Produto (BLOCO UPDATE)

	ELSE 
		IF (@Tipo_Acao = 3)

	BEGIN 
		UPDATE Cliente
		SET Nome = @Nome, Telefone = @Telefone, Email = @Email,
		Restricao = @Restricao, CEP = @CEP, SENHA = @SENHA, Tipo = @Tipo
		WHERE Email = @Email

	END

END ---Fim da Procedure

	