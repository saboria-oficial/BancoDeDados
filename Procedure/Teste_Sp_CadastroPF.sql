---teste da Procedure Sp_CadastroPF

USE Saboria

SELECT * FROM PessoaFisica

---Inicio da transação e garante que tudo está funcionando

BEGIN TRAN 

--COMMIT TRAN 

--ROLLBACK

---1 -CADASTRAR (INSERIR DADOS) 

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = '1', @CPF = '2324331353'

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = NULL, @CPF = '00000000'

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = NULL, @CPF = '4545454545'



--2 DELETAR

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = NULL, @CPF = '4545454545'


-- 3 ALTERAR DADOS

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = NULL, @CPF = '22222222'

EXECUTE [dbo].[Sp_CadastroPF] @Tipo_Acao = 1, @ID_Usuario = NULL,
@ID_Cliente = NULL, @CPF = '999999999'