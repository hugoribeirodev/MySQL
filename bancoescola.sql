CREATE DATABASE db_Escola;
USE db_Escola;

CREATE TABLE tb_aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_matricula DATE
);

CREATE TABLE tb_professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    disciplina VARCHAR(50),
    cpf VARCHAR(14),
    estado_civil VARCHAR(20),
    nome_mae VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE tb_aula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    horario TIME,
    duracao INT,
    assunto VARCHAR(255),
    aluno_id INT,
    professor_id INT,
    FOREIGN KEY (aluno_id) REFERENCES tb_aluno(id),
    FOREIGN KEY (professor_id) REFERENCES tb_professor(id)
);

INSERT INTO tb_aluno (nome, idade, endereco, telefone, email, data_matricula) VALUES
('Ana Souza', 20, 'Rua A, 123', '123456789', 'ana@example.com', '2024-01-10'),
('Carlos Silva', 22, 'Rua B, 456', '987654321', 'carlos@example.com', '2024-02-12'),
('Fernanda Lima', 21, 'Rua C, 789', '345678901', 'fernanda@example.com', '2024-03-15'),
('João Pereira', 23, 'Rua D, 101', '567890123', 'joao@example.com', '2024-04-18'),
('Maria Oliveira', 25, 'Rua E, 202', '678901234', 'maria@example.com', '2024-05-20'),
('Pedro Costa', 24, 'Rua F, 303', '789012345', 'pedro@example.com', '2024-06-22'),
('Luciana Silva', 22, 'Rua G, 404', '890123456', 'luciana@example.com', '2024-07-25'),
('Renato Souza', 26, 'Rua H, 505', '901234567', 'renato@example.com', '2024-08-28'),
('Beatriz Santos', 20, 'Rua I, 606', '012345678', 'beatriz@example.com', '2024-09-30'),
('Gustavo Lima', 27, 'Rua J, 707', '123987654', 'gustavo@example.com', '2024-10-03');

INSERT INTO tb_professor (nome, disciplina, cpf, estado_civil, nome_mae, cidade) VALUES
('José Martins', 'Matemática', '12345678901', 'Casado', 'Maria Martins', 'São Paulo'),
('Cláudia Costa', 'Português', '98765432100', 'Solteira', 'Ana Costa', 'Rio de Janeiro'),
('Fernanda Lima', 'História', '34567890123', 'Casada', 'Beatriz Lima', 'Belo Horizonte'),
('Carlos Silva', 'Geografia', '56789012345', 'Divorciado', 'Patrícia Silva', 'Porto Alegre'),
('Lucas Pereira', 'Física', '67890123456', 'Viúvo', 'Eliane Pereira', 'Curitiba'),
('Mariana Rocha', 'Biologia', '78901234567', 'Casada', 'Laura Rocha', 'Salvador'),
('Renata Souza', 'Química', '89012345678', 'Solteira', 'Sandra Souza', 'Recife'),
('Ricardo Santos', 'Arte', '90123456789', 'Casado', 'Júlia Santos', 'Manaus'),
('Gabriela Costa', 'Educação Física', '01234567890', 'Solteira', 'Sofia Costa', 'Fortaleza'),
('Rafael Alves', 'Matemática', '12398765432', 'Divorciado', 'Carla Alves', 'São Paulo');

INSERT INTO tb_aula (data, horario, duracao, assunto, aluno_id, professor_id) VALUES
('2024-01-12', '08:00:00', 60, 'Álgebra', 1, 1),
('2024-01-13', '09:00:00', 60, 'Gramática', 2, 2),
('2024-01-14', '10:00:00', 60, 'Sociologia', 3, 3),
('2024-01-15', '11:00:00', 60, 'Geografia', 4, 4),
('2024-01-16', '14:00:00', 60, 'Física', 5, 5),
('2024-01-17', '15:00:00', 60, 'Química', 6, 6),
('2024-01-18', '16:00:00', 60, 'Arte', 7, 7),
('2024-01-19', '17:00:00', 60, 'Educação Física', 8, 8),
('2024-01-20', '18:00:00', 60, 'Cálculo', 9, 9),
('2024-01-21', '19:00:00', 60, 'Filosofia', 10, 10);

START TRANSACTION;

ALTER TABLE tb_professor ADD COLUMN estado_civil VARCHAR(20);
ALTER TABLE tb_professor ADD COLUMN nome_mae VARCHAR(100);
ALTER TABLE tb_professor MODIFY COLUMN cpf VARCHAR(20);

INSERT INTO tb_professor (nome, disciplina, cpf, estado_civil, nome_mae, cidade) VALUES
('Roberta Alves', 'Matemática', '23456789012', 'Solteira', 'Simone Alves', 'São Paulo'),
('João Silva', 'Biologia', '34567890123', 'Casado', 'Maria Silva', 'Rio de Janeiro'),
('Patrícia Lima', 'História', '45678901234', 'Viúva', 'Luciana Lima', 'Belo Horizonte');

ALTER TABLE tb_professor DROP COLUMN cidade;

UPDATE tb_professor SET disciplina = 'Literatura' WHERE id IN (6, 7, 8, 9, 10);

DELETE FROM tb_professor WHERE id IN (7, 10, 12);

ALTER TABLE tb_professor ADD COLUMN email VARCHAR(100);
UPDATE tb_professor SET email = 'solicitação em andamento';

ALTER TABLE tb_professor MODIFY COLUMN estado_civil CHAR(10);

ALTER TABLE tb_professor ADD COLUMN formacao_prof VARCHAR(50);

COMMIT;
