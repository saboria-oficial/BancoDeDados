# Banco-de-Dados
Documentação detalhada do desenvolvimento do Banco de dados da plataforma Saboria, usando SQL SERVER.

# Criando o Banco de Dados

## MIT License

   ### 🟡 Parte 1 - Diagrama Entidade Relacionamento

O restaurante necessita de um sistema para gerenciar clientes, perfis e transações. 
Os clientes podem ser pessoas físicas ou jurídicas e têm seus dados pessoais cadastrados no sistema.
Cada cliente deve ter um único perfil, onde registram preferências e interações com o restaurante e vice-versa. 
Alguns registros ainda estão em desenvolvimento, mas não será necessário incluir esses dados no novo sistema.
Os clientes precisam ser cadastrados com dados pessoais (nome, telefone, e-mail, restrições alimentares, CEP e senha). 
As pessoas físicas possuem CPF, enquanto as pessoas jurídicas possuem CNPJ e tipo de culinária. 
Além disso, perfis específicos são mantidos para clientes, detalhando configurações de conta, favoritos e locais visitados.
Transações no sistema incluem registros de abertura de perfis, adição de itens aos cardápios e avaliações de restaurantes. 
Para cada transação, são registrados os detalhes do cliente, perfil associado, cardápio envolvido e outras informações relevantes. 
Além disso, o sistema deve permitir a gestão de pagamentos, que podem ser realizados via cartões de débito e crédito.
É ainda esperado informatizar a gestão de localizações, permitindo que clientes encontrem restaurantes próximos e registrem avaliações e interações. 
A partir disso, espera-se que o sistema gere relatórios detalhados sobre interações, preferências e avaliações dos clientes, facilitando a tomada de decisões gerenciais.

![Captura de tela 2024-06-24 194113](![Captura de tela 2024-06-24 194113](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/75bfebf9-d273-47cd-b1d0-1aa17d3801f2)
)


   ### 🟡Parte 2 - Diagrama Entidade Relacionamento

Os Restaurantes têm uma página personalizada, onde podem colocar seus pratos, detalhando ingredientes usados e modo de preparo, para que os clientes saibam que não há risco de contaminação cruzada.
Eles também podem adicionar matérias ao Blog, dando dicas de receitas caseiras ou de seus próprios pratos se desejarem. 
Dessa forma os clientes podem ter um relacionamento mais íntimo com seus estabelecimentos favoritos.
Conseguem adicionar o horário de funcionamento e responder perguntas diretas feitas por nossos usuários.


![Captura de tela 2024-06-24 194229](![Captura de tela 2024-06-24 194229](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/1e23104f-652d-4593-9a83-62eb7d6f0d45)


   ### 🟡Parte 3 - Alimentando o Banco de Dados

Criação de tabelas e propriedades com as seguintes finalidades:

   - Inclua ao menos 1 cliente.
   - Pelo menos 1 registro de cliente, Perfil Físico e Jurídico.
   - Cada tipo de perfil tem suas particularidades
   - CLientes e Restaurantes devem adicionar suas preferências.
   - Localização
   - Para restaurantes, pratos e preços e tipo de pagamento.
   - Usuários de tipo Peril Jurídico podem adicionar matérias úteis ao blog
   - Crie uma tabela para registrar problemas ocorridos dentro da plataforma, fiscalizados pelo usuário.
   - Forma de pagamento aceita pela plataforma (necessário especificar o tipo).
   - Endereços, todas as propriedades e particularidades de cada tipo de perfil.
   - Informações sobre cardápio e informações detalhadas do mode de preparo e ingredientes.

     ![Captura de tela 2024-06-24 193603](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/8d0229d3-a644-47e9-8773-d2383b56d3bf)

   ### 🟡Parte 4 - Alterando o banco de dados

     A plataforma de localização precisa ser alterada diversas vezes. Tanto restaurantes como clientes podem fazer alterações em suas páginas. Atulização de restrição ou adição de uma nova é necessário para manter a segurança da plataforma e na vida dos clientes. Crie alterações na página.

![Captura de tela 2024-06-26 180955](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/d56167a0-a48c-4657-8260-f6e24a0c6a8c)

   ### 🟡Parte 5 Consultas 

   Crie um script e nele inclua consultas que retornem:

   - Dados registrados no cadastro de pessoa jurídica:


![Captura de tela 2024-06-26 182353](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/8f91f53a-b526-4368-9cad-3854f0cb2c4d)


     

   - Dados registrados na tabela de pessoa física:
   

![Captura de tela 2024-06-26 182359](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/e71824c4-68fc-4f2c-844c-40f95e1e5641)


     

   - Dados inseridos na tabela Cliente:


![Captura de tela 2024-06-26 182407](https://github.com/saboria-oficial/BancoDeDados/assets/167265660/ec7ca3ad-d2b1-403f-8320-a1fe8aee6299)

