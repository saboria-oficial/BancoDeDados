--Criação da tabela Pessoa Fisica

CREATE TABLE PessoaFisica (
    ID_Usuario				INTEGER IDENTITY PRIMARY KEY,
    CPF						VARCHAR(20),
    num_cpf_cnpj_cliente	VARCHAR(20),
    FOREIGN KEY (num_cpf_cnpj_cliente) REFERENCES Cliente(num_cpf_cnpj)
);

select * from PessoaFisica


--Inserindo valores nas tabelas PessoaFisica 

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('123.456.789-00', '123.456.789-00');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('000.000.000-00', '000.000.000-00');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('465.685.090-00', '465.685.090-00'); -- feito

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('838.383.950-26', '838.383.950-26');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('637.647.770-44', '637.647.770-44');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('068.581.690-75', '068.581.690-75');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('377.039.650-22', '377.039.650-22');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('738.015.940-25', '738.015.940-25');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('018.291.010-56', '018.291.010-56');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('266.274.450-26', '266.274.450-26');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('362.038.300-62', '362.038.300-62');

INSERT INTO PessoaFisica (CPF,  num_cpf_cnpj_cliente)
VALUES ('359.133.450-29', '359.133.450-29');








------

ALTER TABLE PessoaFisica ADD CONSTRAINT FK_PessoaFisica_2
    FOREIGN KEY (num_cpf_cnpj_cliente)
    REFERENCES Cliente (num_cpf_cnpj)
    ON DELETE CASCADE;

	select * from PessoaFisica
	select * from Cliente

	ALTER TABLE PessoaFisica ADD CONSTRAINT PK_PessoaFisica
	PRIMARY KEY(num_cpf_cnpj_cliente)