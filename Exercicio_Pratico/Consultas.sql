-- =============================================
-- Consulta: Listar todos os alunos e as empresas onde estão a estagiar
-- Mostra o nome do aluno, o nome da empresa e as datas de início e fim do estágio
-- Ordenado pelo nome do aluno
-- =============================================
SELECT 
    alunos.nome_aluno AS "Aluno",
    empresas.nome_empresa AS "Empresa",
    estagioo.data_inicio AS "Início do Estágio",
    estagioo.data_fim AS "Fim do Estágio"
FROM estagioo
INNER JOIN alunos ON estagioo.id_aluno = alunos.id_aluno
INNER JOIN empresas ON estagioo.id_empresa = empresas.id_empresa
ORDER BY alunos.nome_aluno;


-- =============================================
-- Consulta: Listar tutores e os alunos que acompanham
-- Mostra o nome do tutor e o nome do aluno correspondente
-- =============================================
SELECT 
    tutores.nome_tutor AS "Tutor",
    alunos.nome_aluno AS "Aluno"
FROM estagioo
INNER JOIN tutores 
    ON estagioo.id_tutor = tutores.id_tutor
INNER JOIN alunos 
    ON estagioo.id_aluno = alunos.id_aluno;


