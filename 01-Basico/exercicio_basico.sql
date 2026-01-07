-- Criação da tabela empregados
CREATE TABLE empregados (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    ordenado DECIMAL(8,2) NOT NULL,
    telefone BIGINT NULL,
    email VARCHAR(100) NULL,
    ativo TINYINT(1) NOT NULL
);

-- Inserção dos dados
INSERT INTO empregados (id, nome, cargo, ordenado, telefone, email, ativo) VALUES 
(1, 'Bruno', 'Empregado', 750.00, 916666666, 'bruno@empresaxpto.com', 1),
(2, 'Marco', 'Gestor', 1200.00, 964444444, 'marco@hotmail.com', 0),
(3, 'Tiago', 'CEO', 2400.00, 96, 'tiago@empresaxpto.com', 1),
(4, 'Maria', 'Consultora', 699.99, NULL, NULL, 1),
(5, 'Joaquim', 'Vendedor', 700.00, NULL, 'joaquim@live.com', 1),
(6, 'Joana', 'Empregado', 999.00, 256888888, 'joana@outlook.com', 1);

