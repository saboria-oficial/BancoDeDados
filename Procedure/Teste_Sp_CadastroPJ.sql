---Teste Procedure Sp_CadastroPJ

USE Saboria

SELECT * FROM PessoaJuridica


---O ID_Restaurante está dando erro
 
EXECUTE [dbo].[Sp_CadastroPJ] @Tipo_acao = 1, @ID_Restaurante = NULL, 
@Tipo_Culinaria = 'Italiana', @CNPJ =  '232432435'

EXECUTE [dbo].[Sp_CadastroPJ] @Tipo_acao = 1, @ID_Restaurante = NULL, 
@Tipo_Culinaria = 'Grega', @CNPJ =  '111111'

------------------------------------------------------------------------------

EXECUTE [dbo].[Sp_CadastroPJ] @Tipo_acao = 2, @ID_Restaurante = NULL, 
@Tipo_Culinaria = 'Grega', @CNPJ =  '111111'


 
