# Banco-de-dados-MER

# QBank

## Visão Geral do Projeto

O banco de dados do projeto QBank é projetado para ser robusto e escalável, suportando o armazenamento eficiente de informações sobre contas bancárias, transações e usuários. Utilizando o MER, definimos as entidades principais, como "Conta", "Transação" e "Emprestimo", e seus relacionamentos, garantindo integridade e acessibilidade dos dados, fundamentais para a operação de uma aplicação bancária moderna.

## Integrantes do Grupo

- Agda da Silva Cavalcanti (https://github.com/Agda-Cavalcanti)
- Gabriel da Silva Oliveira Costa (https://github.com/GabrielCosta-99)
- Lucas Fonseca Rosa Magalhães (https://github.com/lucasfonsecarosamagalhaes)
- Luiz Gustavo Domingues Lacerda (https://github.com/Luiz-Gustavo-D-Lacerda)
- Pedro Tonidandel Mansur 12310667 (https://github.com/PedroTMansur)

## Tecnologias Utilizadas

- Drawio.
- SQL online.
- DBeaver
- Microsoft Azure
  
## Diagrama MER 

**O que é MER?**

MER (Modelo Entidade-Relacionamento) é uma representação gráfica que ilustra a estrutura de um banco de dados, mostrando entidades, atributos e os relacionamentos entre elas. Ele ajuda na visualização e no planejamento da arquitetura do banco de dados antes da implementação.

**Como utilizamos o Modelo Entidade-Relacionamento (MER) no QBank?**

No QBank, utilizamos o Modelo Entidade-Relacionamento (MER) de forma padronizada, seguindo as regras de negócios. Definimos claramente as entidades e seus relacionamentos, atribuindo chaves primárias e estrangeiras, além de especificar as cardinalidades e condições. Para implementar essas definições, utilizamos o DDL (Data Definition Language), garantindo a integridade dos dados e facilitando a manutenção e a escalabilidade da aplicação.

![MER](https://github.com/user-attachments/assets/5b3a2eb1-e085-4834-9593-99c59eff04c3)


**SQL - Structured Query Language**

SQL (Structured Query Language) é uma linguagem de programação projetada para gerenciar e manipular bancos de dados relacionais. Ela permite que os usuários realizem operações como consultas, inserções, atualizações e exclusões de dados. Com SQL, você pode definir estruturas de dados, controlar o acesso e garantir a integridade dos dados em um banco de dados.

## Tutorial: Testando as tabelas no SQL online

Neste tutorial, você aprenderá a testar as tabelas do QBank utilizando uma plataforma de SQL online. Vamos mostrar como carregar o script SQL do projeto e verificar se as tabelas foram criadas corretamente. Este processo é ideal para validar a estrutura do banco de dados de forma rápida, sem precisar configurar um ambiente local. É uma maneira prática de garantir que o banco de dados esteja funcionando conforme o esperado antes de integrá-lo à aplicação.

# Pré-requisitos

Antes de começar o teste das tabelas no SQL online, é necessário criar uma conta na plataforma. Para isso, siga os passos abaixo:

1- Acesse o site da plataforma de SQL online. (https://sqliteonline.com/)

2- Cadastre-se utilizando seu e-mail e crie uma senha.

![sqllogin](https://github.com/user-attachments/assets/a44fd5a3-16e7-4212-bed2-cdc2b5dc4439)

3- Após confirmar o cadastro, faça login na plataforma para começar a usar o ambiente de testes SQL.

# Passo a Passo: Criando as Tabelas no SQL Online

1- Copiar o Código da Tabela conta:

- No repositório Git, vá até a pasta "Tabelas" e abra o arquivo .sql. Encontre o código referente à criação da tabela conta e copie-o.

2- Renomear a Tabela Demo para conta:

- Ao entrar no SQL online, você verá uma tabela de exemplo chamada "demo".
- Renomeie esta tabela clicando no nome dela e altere para "conta".

![sqlrename2](https://github.com/user-attachments/assets/d6684ebb-0ba3-488c-b27d-f9a4781ceeca)
  
- Apague todo o conteúdo da tabela "demo" e cole o código copiado da tabela conta do arquivo SQL.
  
3- Executar o Script:

- Após colar o código, clique no botão de execução (geralmente identificado como "Run" ou similar) para criar a tabela conta.
- 
  ![tabelasql3](https://github.com/user-attachments/assets/1a30789f-6482-408a-89ee-60aed603442f)

- Verifique se a tabela foi criada corretamente e se todos os campos foram gerados como esperado.
  
4- Criar Novas Tabelas:

- No SQL online, clique no botão “+” (ou equivalente) para adicionar uma nova tabela.

![addtablesql](https://github.com/user-attachments/assets/fa68c3c3-a1bd-458a-877b-a170f286a1f2)
  
- Repita o processo: renomeie a nova tabela com o próximo nome que está no script do Git, por exemplo, cartao_credito.
  
5- Repetir o Processo para Todas as Tabelas:

- Para cada nova tabela que for criar, vá ao arquivo .sql na pasta SQL do repositório Git e copie o código SQL correspondente.
- Renomeie a nova tabela no SQL online e cole o código.
- Execute o script para criar a tabela.
  
6 - Verificar Todas as Tabelas:

- Continue repetindo esse processo até criar todas as tabelas (como emprestimo, transferencia, etc.) que estão no script SQL do repositório.
  
7- Finalizar e Verificar:

- Após criar todas as tabelas, verifique se todas elas foram criadas corretamente no SQL online, revisando os campos e relacionamentos conforme o script.


