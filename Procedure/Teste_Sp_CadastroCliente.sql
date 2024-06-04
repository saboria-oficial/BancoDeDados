---teste da Procedure Sp_CadastroCliente

USE Saboria

SELECT * FROM Cliente


---1 -CADASTRAR (INSERIR DADOS) 


EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, @ID_Cliente = NULL,
@Nome = 'Julia',@Telefone = '22046297',@Email = 'JuliaDias@gmail.com',
@Restricao = 'Latcionio',@CEP = '02311010',@SENHA = 'Amareleo', @Tipo = 'Pessoa Física'


EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, @ID_Cliente = NULL,
@Nome = 'Samanta',@Telefone = '986556853',@Email = 'samanta@gmail.com',
@Restricao = 'leite',@CEP = '0220201433',@SENHA = 'Amareleo', @Tipo = 'Pessoa Física'

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, @ID_Cliente = NULL,
@Nome = 'Sasa',@Telefone = '99999999',@Email = 'sasa@gmail.com',
@Restricao = 'ovo',@CEP = '9999999',@SENHA = 'aaaaaaa', @Tipo = 'Pessoa Juridíca'


--2 DELETAR

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 2, @ID_Cliente = NULL,
@Nome = 'Samanta',@Telefone = NULL,@Email = 'samanta@gmail.com',
@Restricao = NULL,@CEP = NULL,@SENHA = 'Amareleo', @Tipo = 'Pessoa Física'


-- 3 ALTERAR DADOS

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 3, @ID_Cliente = NULL,
@Nome = 'Julia',@Telefone = '0000000',@Email = 'JuliaDias@gmail.com',
@Restricao = 'Peixe',@CEP = '0000000',@SENHA = 'Amareleo', @Tipo = 'Pessoa Física'