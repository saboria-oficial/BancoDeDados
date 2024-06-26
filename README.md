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

![Captura de tela 2024-06-24 194113](https://github.com/saboria-oficial/Banco-de-Dados/assets/167265660/2e138e5e-6879-4478-a202-93ff5e6fed1c)


### 🔹Parte 2 - Diagrama Entidade Relacionamento

Os Restaurantes têm uma página personalizada, onde podem colocar seus pratos, detalhando ingredientes usados e modo de preparo, para que os clientes saibam que não há risco de contaminação cruzada.
Eles também podem adicionar matérias ao Blog, dando dicas de receitas caseiras ou de seus próprios pratos se desejarem. 
Dessa forma os clientes podem ter um relacionamento mais íntimo com seus estabelecimentos favoritos.
Conseguem adicionar o horário de funcionamento e responder perguntas diretas feitas por nossos usuários.


![Captura de tela 2024-06-24 194229](https://github.com/saboria-oficial/Banco-de-Dados/assets/167265660/3a5ca468-27d1-4319-a788-641d54a83d9c)

# Parte 3 - Alimentando o Banco de Dados

1. **Cliente:**
   - Inclua ao menos 1 cliente.
   - Pelo menos 1 registro de cliente, Perfil Físico e Jurídico.
   - Cada tipo de perfil tem suas particularidades
   - CLientes e Restaurantes devem adicionar suas preferências.
   - Localização
   - Para restaurantes, pratos e preços e tipo de pagamento.
2. **Seção Blog**
   - Usuários de tipo Peril Jurídico podem adicionar matérias úteis ao blog
