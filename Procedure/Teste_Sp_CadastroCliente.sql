---teste da Procedure Sp_CadastroCliente

USE Saboria

SELECT * FROM Cliente


---1 -CADASTRAR (INSERIR DADOS) 


EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, num_cpf_cnpj = '123.456.789-00',
@Nome = 'Digas',@Telefone = '123456789',@Email = 'digao@digas.com',
@Retricao = 'aaaa',@CEP = '02311010',@Senha = 'senha123'


EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, num_cpf_cnpj = '465.685.090-12' ,
@Nome = 'Vitor Renato Jorge silva',@Telefone = '(96) 98666-9547',@Email = 'vitorsilva@wredenborg.se',
@Retricao = 'Laticínios',@CEP =  '68906-126',@Senha = '8lRYcFZHXr'

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, num_cpf_cnpj = '465.685.090-12',
@Nome = 'Vitor Renato Jorge silva', @Telefone = '(96) 98666-9547',@Email = 'vitorsilva@wredenbor.com',
@Retricao = 'Laticínios',@CEP = '68906-126',@Senha = '81RYcFZHXr'

--2 DELETAR

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 1, num_cpf_cnpj = '123.456.789-00',
@Nome = 'Digas',@Telefone = '123456789',@Email = 'digao@digas.com',
@Retricao = 'aaaa',@CEP = '02311010',@Senha = 'senha123'

-- 3 ALTERAR DADOS

EXECUTE [dbo].[Sp_CadastroCliente] @Tipo_Acao = 3, @ID_Cliente = NULL,
@Nome = 'Julia',@Telefone = '0000000',@Email = 'JuliaDias@gmail.com',
@Restricao = 'Peixe',@CEP = '0000000',@SENHA = 'Amareleo', @Tipo = 'Pessoa Física'