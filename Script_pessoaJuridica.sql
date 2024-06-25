-- criação da tabela Pessoa Juridica

CREATE TABLE PessoaJuridica (
    ID_Restaurante			INTEGER IDENTITY PRIMARY KEY,
    Tipo_Culinaria			VARCHAR(100),
    CNPJ					VARCHAR(20),
    num_cpf_cnpj_cliente	VARCHAR(20),
    FOREIGN KEY (num_cpf_cnpj_cliente) REFERENCES Cliente(num_cpf_cnpj)
);

--inserir valores na tabela pessoa juridica (o mesmo cpf de clinete  tem que ser usado nessa tabela)

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Fast Food','12.123.088/0001-18','12.123.088/0001-18')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Pães e doces','28.947.010/0001-58','28.947.010/0001-58')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Doces e Salgados','46.141.906/0001-27','46.141.906/0001-27')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Italiana','03.276.268/0001-49','03.276.268/0001-49')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('tailandesa','63.726.226/0001-94','63.726.226/0001-94')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Mexicana','55.985.738/0001-47','55.985.738/0001-47')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Fast Food','03.946.641/0001-21','03.946.641/0001-21')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Vegetariana','35.528.951/0001-12','35.528.951/0001-12')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Grega','14.748.645/0001-11','14.748.645/0001-11')

insert into PessoaJuridica(Tipo_Culinaria,CNPJ,num_cpf_cnpj_cliente)
Values('Fast Food','63.846.901/0001-19','63.846.901/0001-19')


--seleciona a tabela pessoajuridica

select * from PessoaJuridica

--DELETA AS INFORMAÇÕES DE UMA TABELA

DELETE FROM PessoaJuridica;