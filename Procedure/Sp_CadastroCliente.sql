---PROCEDURE CADASTRO CLIENTE O OBJETIVO DESSA PROCEDURE � FAZER O CADASTRO, APAGAR E ALTERAR CLIENTES EM NOSSO BANCO DE DADOS

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

---Cria��o da Procedure
CREATE PROCEDURE [dbo].[Sp_CadastroCliente]

	@Tipo_Acao INTEGER, -- 1- Incluir, 2- Apagar, 3- Alterar
	@num_cpf_cnpj INTEGER = NULL, 
	@Nome VARCHAR(60) = NULL,
	@Telefone VARCHAR(20) = NULL,
	@Email VARCHAR(50) = NULL,
	@Retricao VARCHAR(60) = NULL,
	@CEP VARCHAR(30) = NULL,
	@Senha VARCHAR(40) = NULL

AS 

BEGIN --INICIO PROCEDURE

---Bloco de valida��o cadastro - Cadastro j� existe na tabela

	IF (@Tipo_Acao = 1)

	BEGIN 
		 IF EXISTS(SELECT num_cpf_cnpj FROM Saboria.dbo.Cliente
					WHERE num_cpf_cnpj = @num_cpf_cnpj)
		SELECT 'CPF/CNPJ j� cadastrado' as anal�se

	---Bloco para Inserir o Novo Cadastro (BLOCO INSERT)

	ELSE 

	INSERT INTO Cliente(num_cpf_cnpj, Nome,Telefone,Email,Retricao,CEP,Senha)
	VALUES(@num_cpf_cnpj, @Nome,@Telefone,@Email,@Retricao,@CEP,@Senha)

	END

	---Bloco para apagar o cadastro (BLOCO DELETE)

	ELSE

		IF(@Tipo_Acao = 2)

	BEGIN
		DELETE FROM Cliente
		WHERE Email = @Email
	END

	---Bloco para a altera��o do Produto (BLOCO UPDATE)

	ELSE 
		IF (@Tipo_Acao = 3)

	BEGIN 
		UPDATE Cliente
		SET num_cpf_cnpj = @num_cpf_cnpj, Nome = @Nome, Telefone = @Telefone, Email = @Email,
		Retricao = @Retricao, CEP = @CEP, Senha = @Senha
		WHERE num_cpf_cnpj = @num_cpf_cnpj

	END

END ---Fim da Procedure

	select * from Cliente

