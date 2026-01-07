# Gestão de Estágios

## Objetivo
Desenvolver uma base de dados relacional em MySQL para gerir os estágios dos alunos, registando informações sobre alunos, empresas, tutores e avaliações.

## Estrutura da Base de Dados
- **Alunos**: regista os dados académicos básicos dos alunos.
- **Empresas**: regista empresas que acolhem estagiários.
- **Tutores**: regista os tutores responsáveis pelos alunos nas empresas.
- **Estágios**: relaciona cada estágio com um aluno, uma empresa e um tutor, incluindo datas de início e fim.
- **Avaliações**: permite registar notas e observações do estágio.

## Scripts incluídos
1. `01-criacao-tabelas.sql` – Criação de todas as tabelas com as relações.
2. `02-inserir-dados.sql` – Inserção de dados fictícios (mínimo 5 registos por tabela).
3. `03-consultas.sql` – Consultas importantes:
   - Listar todos os alunos e as empresas onde estão a estagiar.
   - Consultar os tutores e os alunos que acompanham.
   - Obter a lista de estágios ativos.
   - Listar os estágios por empresa.

## Aprendizados
- Criação de **bases de dados relacionais** e integridade referencial.
- Utilização de **JOINs** para consultar múltiplas tabelas.
- Aplicação de filtros de datas para estágios ativos.
- Organização de dados de forma eficiente para consultas de gestão.


