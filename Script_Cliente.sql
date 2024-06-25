
--Criação da tabela cliente 

CREATE TABLE Cliente (
    num_cpf_cnpj	VARCHAR(20) PRIMARY KEY,
    Nome			VARCHAR(255),
    Telefone		VARCHAR(50),
    Email			VARCHAR(255),
    Retricao		VARCHAR(255),
    CEP				VARCHAR(20),
    Senha			VARCHAR(255),
	Tipo_Usuario	VARCHAR(60)
);


--Inserindo valores nas tabelas clientes (PESSOAS FISICAS)

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('123.456.789-00', 'Digas', '123456789', 'digao@digas.com', 'aaaa', '12345-678', 'senha123');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('000.000.000-00', 'math', '00000000', 'math@digas.com', 'sssss', '00000-0000', 'senha000');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('465.685.090-00', 'Vitor Renato Jorge Costa', '(96) 98666-9397', 'vitor.renato.costa@wredenborg.se', 'Laticínios', '"68906-126', '8lRYcFZHXr');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('838.383.950-26', 'Jennifer Olivia Nina Campos', '(41) 2980-4775', 'jennifer_olivia_campos@gasparalmeida.com', 'Castanhas', '83215-490', 'jhwPnja4uk');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('637.647.770-44', 'Caroline Lúcia Isabella Drumond', '(24) 99718-6652', 'caroline_drumond@corp.inf.br', 'Laticínios', '23912-580', 'GYp6TggTuj');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('068.581.690-75', 'Manuel Rafael Viana', '(27) 99377-1354', 'manuel_rafael_viana@gmnail.com', 'frutos do mar', '29041-612', 'OxyOqYgrdD');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('377.039.650-22', 'Marlene Sara dos Santos', '(83) 99106-8594', 'marlene_sara_dossantos@zaniniengenharia.com.br', 'Laticínios', '58038-190', 'BXkFSJNFdp');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('738.015.940-25', 'Osvaldo Victor Ribeiro', '(68) 3926-0761', 'osvaldo-ribeiro95@etirama.com.br', 'Sacarose', '69901-731', 'PUWZYUe4Ur');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('018.291.010-56', 'Bruno Daniel Filipe Gomes', '(68) 98251-1526', 'bruno.daniel.gomes@defensoria.sp.gov.br', 'Glúten', '69921-198', 'nxX6Q0goRY');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('266.274.450-26', 'Vinicius Eduardo Barbosa', '(31) 99686-2919', 'viniciuseduardobarbosa@imobiliariamaciel.com.br', 'Glúten', '31810-150', 'QOSYFhfTfI');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('362.038.300-62', 'Benício Julio Nogueira', '(62) 98205-8059', 'benicio_nogueira@granvale.com.br', 'Castanha', '74393-430', 'o0GIG7n5Ln');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('359.133.450-29', 'Lorenzo Pedro Henrique Dias', '(21) 99913-2044', 'lorenzo_pedro_dias@directnet.com.br', 'Laticínios', '22715-070', 'sAxl5wRur5');

--Inserindo valores nas tabelas clientes (PESSOAS JURIDICA)

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('12.123.088/0001-18', 'Rebeca e João buger', '(11) 3699-0859', 'ti@rebecaejoaobugerltda.com.br', 'Laticínios', '06268-040', 'sAxl5wRur5');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('28.947.010/0001-58', 'Analu e Teresinha Pães e Doces ME', '(12) 2575-7015', 'ofiscla@analueteresinhapaesedocesme.cm.br', 'Glútens', '12224-702', 'FGtadin764');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('46.141.906/0001-27', 'Renato e Benício Doces & Salgados ME', '(11) 3692-3079', 'sac@renatoebeniciodocessalgadosme.com.br', 'Glútens', '08590-259', '009csDEWWt');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('03.276.268/0001-49', 'Miguel e Tânia Pizzaria ME', '(14) 3520-5867', 'financeiro@migueletaniapizzariame.com', 'Glútens', '08590-259', '009csDEWWt');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('63.726.226/0001-94', 'Sebastião e Bernardo Restaurante', '(98) 2777-3213', 'manutencao@sebastiaoebernardorestaurante.com.br', 'Laticínios', '65076-380', 'aawd4VGwS9E');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('55.985.738/0001-47', 'Itaquera Comida Mexicana', '(98) 2940-0801', 'ItaqueraMexicana@Comida.com.br', 'Castanha', '65071-291', 'ÇÇafBvUY5');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('03.946.641/0001-21', 'Brasa Quente', '(98) 2686-0373', 'Haburgueria@brasaquente.com.br', 'Ovo', '65054-751', 'SADpoPJN65');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('35.528.951/0001-12', 'Dahla', '(98) 3645-1079', 'Dahla@Veganos.com.br', 'Soja', '65026-230', 'PP975vgf');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('14.748.645/0001-11', 'Gr]ao da terra', '(11) 3692-3079', 'Grão@Terra.com.br', 'Frutos do mar', '65065-190', 'Qffcgvj8');

INSERT INTO Cliente (num_cpf_cnpj, Nome, Telefone, Email, Retricao, CEP, Senha)
VALUES ('63.846.901/0001-19', 'Tasty food', '(98) 2712-9209', 'tasty@food.com.br', 'Castanha', '65077-260', '5rt4cbj7');


select * from Cliente

-- Fazendo uma junção das tabelas cliente com a tabela Pessoa fisica atraves da chave estrangeira num_cpf_cnpj

select a.*, b.* from PessoaFisica as a 
inner join Cliente as b 
on a.num_cpf_cnpj_cliente=b.num_cpf_cnpj


 
