-- ====================================
-- Tabela: alunos
-- ====================================
DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(45) NOT NULL,
    data_nascimento DATE NOT NULL,
    nota_curso DECIMAL(4,2) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO alunos (id_aluno, nome_aluno, data_nascimento, nota_curso, id_curso) VALUES
(1,'Lucas Menezes','2001-12-13',18.00,2),
(2,'Armando Coiton','2000-06-24',13.10,1),
(3,'Jorge Lol','2003-01-08',12.23,5),
(4,'Mento Lopes','1999-10-10',16.56,2),
(5,'Francisca Menezes','2002-09-17',12.50,3),
(6,'Manuel Silva','2000-11-02',14.00,4),
(7,'Vulo Ghost','2003-08-15',9.00,4);

-- ====================================
-- Tabela: avaliacao
-- ====================================
DROP TABLE IF EXISTS avaliacao;

CREATE TABLE avaliacao (
    id_aval INT AUTO_INCREMENT PRIMARY KEY,
    nota DECIMAL(4,2) NOT NULL,
    observacoes VARCHAR(300) DEFAULT 'Sem observações'
);

INSERT INTO avaliacao (id_aval, nota, observacoes) VALUES
(1,17.00,'Sem observações'),
(2,15.00,'Sem observações'),
(3,12.00,'Sem observações'),
(4,10.00,'Sem observações'),
(5,9.00,'Sem observações'),
(6,14.00,'Sem observações'),
(7,18.00,'Sem observações');

-- ====================================
-- Tabela: coordenadores
-- ====================================
DROP TABLE IF EXISTS coordenadores;

CREATE TABLE coordenadores (
    id_coord INT AUTO_INCREMENT PRIMARY KEY,
    nome_coord VARCHAR(55) NOT NULL,
    contacto_coord VARCHAR(15),
    email_coord VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO coordenadores (id_coord, nome_coord, contacto_coord, email_coord) VALUES
(1,'Maria Lopes','99999991','maria@email.com'),
(2,'Joao Lopes','99993991','joao@email.com'),
(3,'Marilo Lopes','95499991','marilo@email.com'),
(4,'Admilson Lopes','99549991','ad@email.com'),
(5,'Manate Lopes','99965991','manate@email.com');

-- ====================================
-- Tabela: cursos
-- ====================================
DROP TABLE IF EXISTS cursos;

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(45) NOT NULL,
    duracao INT COMMENT 'Anos',
    nivel INT COMMENT 'Nível QNQ',
    id_coord INT,
    FOREIGN KEY (id_coord) REFERENCES coordenadores(id_coord)
);

INSERT INTO cursos (id_curso, nome_curso, duracao, nivel, id_coord) VALUES
(1,'Gestão de Informação',2,5,3),
(2,'Folha de Cálculo',1,4,3),
(3,'Análise de Dados',1,5,3),
(4,'Inglês',1,3,1),
(5,'Matematica',1,4,2),
(6,'Português',1,5,4);

-- ====================================
-- Tabela: emp_responsavel
-- ====================================
DROP TABLE IF EXISTS emp_responsavel;

CREATE TABLE emp_responsavel (
    id_resp INT AUTO_INCREMENT PRIMARY KEY,
    nome_resp VARCHAR(45) NOT NULL,
    contacto_resp VARCHAR(15) NOT NULL,
    email_resp VARCHAR(45) NOT NULL UNIQUE
);

INSERT INTO emp_responsavel (id_resp, nome_resp, contacto_resp, email_resp) VALUES
(1,'Sandra Guerra','9000032','sandra@gmail.com'),
(2,'Mario Rocha','90032032','rocha@gmail.com'),
(3,'Sofia Mendes','9000043','sofia@gmail.com');

-- ====================================
-- Tabela: empresas
-- ====================================
DROP TABLE IF EXISTS empresas;

CREATE TABLE empresas (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nome_empresa VARCHAR(155) NOT NULL,
    morada_emp VARCHAR(255) NOT NULL,
    contacto VARCHAR(15),
    id_resp INT,
    FOREIGN KEY (id_resp) REFERENCES emp_responsavel(id_resp)
);

INSERT INTO empresas (id_empresa, nome_empresa, morada_emp, contacto, id_resp) VALUES
(1,'Illimited work','Rua xpt','234485',2),
(2,'ISOF WORLD','Rua 2tpt','2344546',3),
(3,'Market CEIO','Rua Atd','234463',1);

-- ====================================
-- Tabela: tutores
-- ====================================
DROP TABLE IF EXISTS tutores;

CREATE TABLE tutores (
    id_tutor INT AUTO_INCREMENT PRIMARY KEY,
    nome_tutor VARCHAR(45) NOT NULL,
    contacto_tutor VARCHAR(15) NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa)
);

INSERT INTO tutores (id_tutor, nome_tutor, contacto_tutor, id_empresa) VALUES
(1,'Pedro Yow','7575775',1),
(2,'Mario Sell','7575325',3),
(3,'Marcio Horta','7532775',2),
(4,'Marcia yell','7574575',3),
(5,'Lindo Boss','7576775',2);

-- ====================================
-- Tabela: estagioo
-- ====================================
DROP TABLE IF EXISTS estagioo;

CREATE TABLE estagioo (
    id_estagio INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    id_aluno INT,
    id_empresa INT,
    id_tutor INT,
    id_aval INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa),
    FOREIGN KEY (id_tutor) REFERENCES tutores(id_tutor),
    FOREIGN KEY (id_aval) REFERENCES avaliacao(id_aval)
);
