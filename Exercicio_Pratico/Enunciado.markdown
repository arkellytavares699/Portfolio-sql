# Exercício Prático - Gestão de Estágios

## Cenário
Uma escola profissional pretende implementar um sistema de gestão de estágios dos seus alunos em empresas.  
O objetivo é registar e acompanhar os estágios realizados ao longo do ano letivo, bem como os dados associados aos alunos, empresas, tutores e avaliações.

---

## Contexto
Deverás criar uma base de dados relacional em MySQL que permita:

1. Gerir a informação dos **alunos** e os seus dados académicos básicos;  
2. Registar as **empresas** que acolhem estagiários e os respetivos **tutores**;  
3. Relacionar cada **estágio** com um aluno, uma empresa e um tutor;  
4. Registar as **datas de início e fim** dos estágios;  
5. Permitir registar uma **avaliação final** do estágio (ex: nota, observações).

---

## Requisitos

### 1. Criação da Base de Dados e Tabelas
- Criar a base de dados em MySQL.  
- Criar tabelas para:  
  - Alunos  
  - Empresas  
  - Tutores  
  - Estágios  
  - Avaliações  

- Definir **primary keys**, **foreign keys** e relações entre tabelas.

### 2. Inserção de Dados
- Inserir dados fictícios em todas as tabelas.  
- Mínimo de **5 registos por tabela**.

### 3. Consultas SQL
Deverás criar consultas que respondam às seguintes questões:

- Listar todos os alunos e as empresas onde estão a estagiar.  
- Consultar os tutores e os alunos que acompanham.  
- Obter a lista de estágios ativos (a decorrer na data atual).  
- Listar os estágios por empresa.

---

## Estrutura do Projeto


