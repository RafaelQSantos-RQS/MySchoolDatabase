INSERT INTO Status (descricao, indica_matriculado, indica_aprovado, indica_recuperacao, indica_reprovado)
VALUES ('Matriculado', 'S', 'N', 'N', 'N'),
       ('Aprovado', 'S', 'S', 'N', 'N'),
       ('Recuperação', 'S', 'N', 'S', 'N'),
       ('Reprovado', 'S', 'N', 'N', 'S');

INSERT INTO Ano_Letivo (ano, descricao)
VALUES ('2022', 'Ano Letivo 2022'),
       ('2023', 'Ano Letivo 2023'),
	   ('2024', 'Ano Letivo 2024');
	   
INSERT INTO Cursos (nome, descricao)
VALUES ('Ensino Fundamental I', 'Curso para alunos do 1º ao 5º ano'),
       ('Ensino Fundamental II', 'Curso para alunos do 6º ao 9º ano');
	   
INSERT INTO Disciplinas (nome, descricao)
VALUES ('Matemática', 'Disciplina de Matemática'),
       ('Português', 'Disciplina de Português'),
	   ('Inglês', 'Disciplina de Inglês'),
       ('Ciências', 'Disciplina de Ciências'),
	   ('Geografia', 'Disciplina de Geografia'),
	   ('História', 'Disciplina de História'),
	   ('Educação Física', 'Disciplina de Educação Física'),
	   ('Artes', 'Disciplina de Artes')   
	   ;	   
	   
INSERT INTO Serie_Ano (id_curso, nome, descricao)
VALUES (1, '1º Ano', 'Primeiro Ano do Ensino Fundamental'),
       (1, '2º Ano', 'Segundo Ano do Ensino Fundamental'),
	   (1, '3º Ano', 'Terceiro Ano do Ensino Fundamental'),
	   (1, '4º Ano', 'Quarto Ano do Ensino Fundamental'),
	   (1, '5º Ano', 'Quinto Ano do Ensino Fundamental'),
	   (2, '6º Ano', 'Sexto Ano do Ensino Fundamental'),
	   (2, '7º Ano', 'Setimo Ano do Ensino Fundamental'),
	   (2, '8º Ano', 'Oitavo Ano do Ensino Fundamental'),
	   (2, '9º Ano', 'Nono Ano do Ensino Fundamental')
	   ;
	   
INSERT INTO Serie_Disciplinas (id_serie, id_disciplina)
VALUES (1, 1), -- 1º Ano: Matemática
	(1, 2), -- 1º Ano: Português
	(1, 3), -- 1º Ano: Inglês
	(1, 4), -- 1º Ano: Ciências
	(1, 5), -- 1º Ano: Geografia
	(1, 6), -- 1º Ano: Historia
	(1, 7), -- 1º Ano: Ed. Fisica
	(1, 8), -- 1º Ano: Artes

	(2, 1), -- 2º Ano: Matemática
	(2, 2), -- 2º Ano: Português
	(2, 3), -- 2º Ano: Inglês
	(2, 4), -- 2º Ano: Ciências
	(2, 5), -- 2º Ano: Geografia
	(2, 6), -- 2º Ano: Historia
	(2, 7), -- 2º Ano: Ed. Fisica
	(2, 8), -- 2º Ano: Artes

	(3, 1), -- 3º Ano: Matemática
	(3, 2), -- 3º Ano: Português
	(3, 3), -- 3º Ano: Inglês
	(3, 4), -- 3º Ano: Ciências
	(3, 5), -- 3º Ano: Geografia
	(3, 6), -- 3º Ano: Historia
	(3, 7), -- 3º Ano: Ed. Fisica
	(3, 8), -- 3º Ano: Artes

	(4, 1), -- 4º Ano: Matemática
	(4, 2), -- 4º Ano: Português
	(4, 3), -- 4º Ano: Inglês
	(4, 4), -- 4º Ano: Ciências
	(4, 5), -- 4º Ano: Geografia
	(4, 6), -- 4º Ano: Historia
	(4, 7), -- 4º Ano: Ed. Fisica
	(4, 8), -- 4º Ano: Artes

	(5, 1), -- 5º Ano: Matemática
	(5, 2), -- 5º Ano: Português
	(5, 3), -- 5º Ano: Inglês
	(5, 4), -- 5º Ano: Ciências
	(5, 5), -- 5º Ano: Geografia
	(5, 6), -- 5º Ano: Historia
	(5, 7), -- 5º Ano: Ed. Fisica
	(5, 8), -- 5º Ano: Artes

	(6, 1), -- 6º Ano: Matemática
	(6, 2), -- 6º Ano: Português
	(6, 3), -- 6º Ano: Inglês
	(6, 4), -- 6º Ano: Ciências
	(6, 5), -- 6º Ano: Geografia
	(6, 6), -- 6º Ano: Historia
	(6, 7), -- 6º Ano: Ed. Fisica
	(6, 8), -- 6º Ano: Artes

	(7, 1), -- 7º Ano: Matemática
	(7, 2), -- 7º Ano: Português
	(7, 3), -- 7º Ano: Inglês
	(7, 4), -- 7º Ano: Ciências
	(7, 5), -- 7º Ano: Geografia
	(7, 6), -- 7º Ano: Historia
	(7, 7), -- 7º Ano: Ed. Fisica
	(7, 8), -- 7º Ano: Artes

	(8, 1), -- 8º Ano: Matemática
	(8, 2), -- 8º Ano: Português
	(8, 3), -- 8º Ano: Inglês
	(8, 4), -- 8º Ano: Ciências
	(8, 5), -- 8º Ano: Geografia
	(8, 6), -- 8º Ano: Historia
	(8, 7), -- 8º Ano: Ed. Fisica
	(8, 8), -- 8º Ano: Artes

	(9, 1), -- 9º Ano: Matemática
	(9, 2), -- 9º Ano: Português
	(9, 3), -- 9º Ano: Inglês
	(9, 4), -- 9º Ano: Ciências
	(9, 5), -- 9º Ano: Geografia
	(9, 6), -- 9º Ano: Historia
	(9, 7), -- 9º Ano: Ed. Fisica
	(9, 8) -- 9º Ano: Artes
	;
	
	
INSERT INTO Enderecos (cep, rua, numero, bairro, cidade, estado, pais)
VALUES
('00000-000', 'Rua A', '123', 'Bairro X', 'Rio Branco', 'Acre', 'Brasil'),
('11111-111', 'Rua B', '456', 'Bairro Y', 'Maceió', 'Alagoas', 'Brasil'),
('22222-222', 'Rua C', '789', 'Bairro Z', 'Macapá', 'Amapá', 'Brasil'),
('33333-333', 'Rua D', '101', 'Bairro W', 'Manaus', 'Amazonas', 'Brasil'),
('44444-444', 'Rua E', '112', 'Bairro V', 'Salvador', 'Bahia', 'Brasil'),
('55555-555', 'Rua F', '131', 'Bairro U', 'Fortaleza', 'Ceará', 'Brasil'),
('66666-666', 'Rua G', '415', 'Bairro T', 'Brasília', 'Distrito Federal', 'Brasil'),
('77777-777', 'Rua H', '618', 'Bairro S', 'Vitória', 'Espírito Santo', 'Brasil'),
('88888-888', 'Rua I', '920', 'Bairro R', 'Goiânia', 'Goiás', 'Brasil'),
('99999-999', 'Rua J', '223', 'Bairro Q', 'São Luís', 'Maranhão', 'Brasil'),
('10101-010', 'Rua K', '524', 'Bairro P', 'Cuiabá', 'Mato Grosso', 'Brasil'),
('20202-020', 'Rua L', '826', 'Bairro O', 'Campo Grande', 'Mato Grosso do Sul', 'Brasil'),
('30303-030', 'Rua M', '137', 'Bairro N', 'Belo Horizonte', 'Minas Gerais', 'Brasil'),
('40404-040', 'Rua N', '248', 'Bairro M', 'Belém', 'Pará', 'Brasil'),
('50505-050', 'Rua O', '359', 'Bairro L', 'João Pessoa', 'Paraíba', 'Brasil');

INSERT INTO Responsavel (nome_responsavel, telefone_responsavel, email_responsavel)
VALUES
('Fulano de Tal', '(XX) XXXX-XXXX', 'fulano@example.com'),
('Ciclano de Tal', '(XX) XXXX-XXXX', 'ciclano@example.com'),
('Beltrano de Tal', '(XX) XXXX-XXXX', 'beltrano@example.com'),
('Maria da Silva', '(XX) XXXX-XXXX', 'maria.silva@example.com'),
('José Pereira', '(XX) XXXX-XXXX', 'jose.pereira@example.com'),
('Ana Oliveira', '(XX) XXXX-XXXX', 'ana.oliveira@example.com'),
('João Souza', '(XX) XXXX-XXXX', 'joao.souza@example.com'),
('Carla Santos', '(XX) XXXX-XXXX', 'carla.santos@example.com'),
('Marcos Lima', '(XX) XXXX-XXXX', 'marcos.lima@example.com'),
('Sandra Oliveira', '(XX) XXXX-XXXX', 'sandra.oliveira@example.com'),
('Roberto Silva', '(XX) XXXX-XXXX', 'roberto.silva@example.com'),
('Amanda Costa', '(XX) XXXX-XXXX', 'amanda.costa@example.com'),
('Ricardo Almeida', '(XX) XXXX-XXXX', 'ricardo.almeida@example.com'),
('Camila Pereira', '(XX) XXXX-XXXX', 'camila.pereira@example.com'),
('Eduardo Santos', '(XX) XXXX-XXXX', 'eduardo.santos@example.com');

INSERT INTO Alunos (nome, data_nascimento, sexo, telefone, email, id_endereco, id_responsavel)
VALUES
('Sophie Lima', '2008-01-20', 'F', '(11) 1234-5678', 'sophie.lima@email.com', 1, 1),
('Benjamin Castro', '2009-04-15', 'M', '(11) 2345-6789', 'benjamin.castro@email.com', 2, 2),
('Eloah Barbosa', '2007-07-10', 'F', '(11) 3456-7890', 'eloah.barbosa@email.com', 3, 3),
('Leonardo Silva', '2008-05-25', 'M', '(11) 4567-8901', 'leonardo.silva@email.com', 4, 4),
('Valentina Oliveira', '2009-09-30', 'F', '(11) 5678-9012', 'valentina.oliveira@email.com', 5, 5),
('Davi Rocha', '2007-12-05', 'M', '(11) 6789-0123', 'davi.rocha@email.com', 6, 6),
('Melissa Gonçalves', '2008-10-18', 'F', '(11) 7890-1234', 'melissa.goncalves@email.com', 7, 7),
('Theo Barbosa', '2009-02-12', 'M', '(11) 8901-2345', 'theo.barbosa@email.com', 8, 8),
('Bianca Santos', '2007-11-28', 'F', '(11) 9012-3456', 'bianca.santos@email.com', 9, 9),
('Daniel Pereira', '2008-08-03', 'M', '(11) 0123-4567', 'daniel.pereira@email.com', 10, 10),
('Alice Almeida', '2009-03-14', 'F', '(11) 1234-5678', 'alice.almeida@email.com', 11, 11),
('Luan Costa', '2007-06-27', 'M', '(11) 2345-6789', 'luan.costa@email.com', 12, 12),
('Carolina Oliveira', '2008-04-19', 'F', '(11) 3456-7890', 'carolina.oliveira@email.com', 13, 13),
('Enzo Castro', '2009-01-22', 'M', '(11) 4567-8901', 'enzo.castro@email.com', 14, 14),
('Larissa Lima', '2007-10-07', 'F', '(11) 5678-9012', 'larissa.lima@email.com', 15, 15),
('Vinicius Rocha', '2008-07-02', 'M', '(11) 6789-0123', 'vinicius.rocha@email.com', 6, 5),
('Ana Clara Barbosa', '2009-11-17', 'F', '(11) 7890-1234', 'anaclara.barbosa@email.com', 7, 4),
('Lucas Silva', '2007-08-30', 'M', '(11) 9012-3456', 'lucas.silva@email.com', 8, 3),
('Isabela Gonçalves', '2008-05-05', 'F', '(11) 0123-4567', 'isabela.goncalves@email.com', 9, 2),
('Gabriel Oliveira', '2009-12-10', 'M', '(11) 1234-5678', 'gabriel.oliveira@email.com', 2, 1),
('Yasmin Rocha', '2007-09-23', 'F', '(11) 2345-6789', 'yasmin.rocha@email.com', 1, 15),
('Matheus Almeida', '2008-06-08', 'M', '(11) 3456-7890', 'matheus.almeida@email.com', 2, 14),
('Laura Lima', '2009-02-13', 'F', '(11) 4567-8901', 'laura.lima@email.com', 3, 13),
('Felipe Barbosa', '2007-12-28', 'M', '(11) 5678-9012', 'felipe.barbosa@email.com', 4, 12),
('Valentina Castro', '2008-11-03', 'F', '(11) 6789-0123', 'valentina.castro@email.com', 5, 11),
('Miguel Souza', '2009-07-20', 'M', '(11) 7890-1234', 'miguel.souza@email.com', 1, 10),
('Julia Costa', '2007-08-15', 'F', '(11) 8901-2345', 'julia.costa@email.com', 2, 9),
('Gustavo Oliveira', '2008-10-28', 'M', '(11) 9012-3456', 'gustavo.oliveira@email.com', 3, 8),
('Helena Santos', '2007-11-01', 'F', '(11) 0123-4567', 'helena.santos@email.com', 4, 7),
('Pedro Lima', '2009-01-14', 'M', '(11) 1234-5678', 'pedro.lima@email.com', 5, 6),
('Manuela Silva', '2007-12-07', 'F', '(11) 2345-6789', 'manuela.silva@email.com', 6, 5),
('Arthur Costa', '2008-05-22', 'M', '(11) 3456-7890', 'arthur.costa@email.com', 7, 4),
('Isabel Oliveira', '2009-03-05', 'F', '(11) 4567-8901', 'isabel.oliveira@email.com', 8, 3),
('Pedro Barbosa', '2007-06-18', 'M', '(11) 5678-9012', 'pedro.barbosa@email.com', 9, 2),
('Lorena Almeida', '2008-08-31', 'F', '(11) 6789-0123', 'lorena.almeida@email.com', 10, 1),
('Gabriel Souza', '2009-04-16', 'M', '(11) 7890-1234', 'gabriel.souza@email.com', 11, 15),
('Laura Costa', '2007-10-29', 'F', '(11) 8901-2345', 'laura.costa@email.com', 12, 14),
('Enzo Oliveira', '2008-02-11', 'M', '(11) 9012-3456', 'enzo.oliveira@email.com', 13, 13),
('Luiza Lima', '2007-07-26', 'F', '(11) 0123-4567', 'luiza.lima@email.com', 14, 12),
('Lucas Pereira', '2009-09-09', 'M', '(11) 1234-5678', 'lucas.pereira@email.com', 15, 11),
('Maria Oliveira', '2008-11-22', 'F', '(11) 2345-6789', 'maria.oliveira@email.com', 8, 10),
('Thiago Silva', '2007-04-05', 'M', '(11) 3456-7890', 'thiago.silva@email.com', 9, 9),
('Ana Laura Costa', '2009-08-18', 'F', '(11) 4567-8901', 'analaura.costa@email.com', 8, 8),
('Felipe Almeida', '2007-01-31', 'M', '(11) 5678-9012', 'felipe.almeida@email.com', 9, 7),
('Leticia Barbosa', '2008-03-14', 'F', '(11) 6789-0123', 'leticia.barbosa@email.com', 6, 6),
('Samuel Santos', '2009-05-27', 'M', '(11) 7890-1234', 'samuel.santos@email.com', 3, 5),
('Mariana Lima', '2007-09-10', 'F', '(11) 8901-2345', 'mariana.lima@email.com', 4, 4),
('David Oliveira', '2008-12-23', 'M', '(11) 9012-3456', 'david.oliveira@email.com', 1, 3),
('Alice Barbosa', '2007-02-06', 'F', '(11) 0123-4567', 'alice.barbosa@email.com', 2, 2),
('Luan Costa', '2009-10-19', 'M', '(11) 1234-5678', 'luan.costa@email.com', 5, 1);

INSERT INTO Professores (nome, data_nascimento, sexo, telefone, email, contato_emergencial)
VALUES 
('Marcos Oliveira', '1985-03-25', 'M', '555-1357', 'marcos@example.com', '555-9999'),
('Camila Santos', '1990-07-12', 'F', '555-2468', 'camila@example.com', '555-8888'),
('Rafael Souza', '1980-11-30', 'M', '555-3579', 'rafael@example.com', '555-7777'),
('Carlos Machado', '1978-05-12', 'M', '555-1111', 'carlos.machado@example.com', '555-1000'),
('Renata Ferreira', '1983-09-28', 'F', '555-2222', 'renata.ferreira@example.com', '555-2000'),
('Antônio Costa', '1975-02-15', 'M', '555-3333', 'antonio.costa@example.com', '555-3000'),
('Patrícia Oliveira', '1980-11-08', 'F', '555-4444', 'patricia.oliveira@example.com', '555-4000'),
('Rodrigo Almeida', '1987-07-03', 'M', '555-5555', 'rodrigo.almeida@example.com', '555-5000'),
('Mariana Santos', '1982-04-20', 'F', '555-6666', 'mariana.santos@example.com', '555-6000'),
('Gustavo Pereira', '1979-10-10', 'M', '555-7777', 'gustavo.pereira@example.com', '555-7000'),
('Laura Oliveira', '1985-06-17', 'F', '555-8888', 'laura.oliveira@example.com', '555-8000'),
('Rafaela Fernandes', '1989-03-04', 'F', '555-9999', 'rafaela.fernandes@example.com', '555-9000');

INSERT INTO Serie_Turno (id_serie, turno)
VALUES 
    (1, 'Manhã'),  -- Exemplo: 1º Ano - Turno da Manhã
    (1, 'Tarde'),  -- Exemplo: 1º Ano - Turno da Tarde
    (2, 'Manhã'),  -- Exemplo: 2º Ano - Turno da Manhã
    (2, 'Tarde'),  -- Exemplo: 2º Ano - Turno da Tarde
    (3, 'Manhã'),  -- Exemplo: 3º Ano - Turno da Manhã
    (3, 'Tarde'),  -- Exemplo: 3º Ano - Turno da Tarde
    (4, 'Manhã'),  -- Exemplo: 4º Ano - Turno da Manhã
    (4, 'Tarde'),  -- Exemplo: 4º Ano - Turno da Tarde
    (5, 'Manhã'),  -- Exemplo: 5º Ano - Turno da Manhã
    (5, 'Tarde'),  -- Exemplo: 5º Ano - Turno da Tarde
    (6, 'Manhã'),  -- Exemplo: 6º Ano - Turno da Manhã
    (6, 'Tarde'),  -- Exemplo: 6º Ano - Turno da Tarde
    (7, 'Manhã'),  -- Exemplo: 7º Ano - Turno da Manhã
    (7, 'Tarde'),  -- Exemplo: 7º Ano - Turno da Tarde
    (8, 'Manhã'),  -- Exemplo: 8º Ano - Turno da Manhã
    (8, 'Tarde'),  -- Exemplo: 8º Ano - Turno da Tarde
    (9, 'Manhã'),  -- Exemplo: 9º Ano - Turno da Manhã
    (9, 'Tarde');  -- Exemplo: 9º Ano - Turno da Tarde


INSERT INTO Turma_Ano_Letivo (codturma, id_ano_letivo, id_serie_turno, maximo_aluno)
VALUES 
    ('A1-2022', 1, 1, 30),  -- Turma A1, Ano Letivo 2022, 1º Ano Manhã, Máximo de 30 alunos
    ('A2-2022', 1, 2, 25),  -- Turma A2, Ano Letivo 2022, 1º Ano Tarde, Máximo de 25 alunos
    ('B1-2022', 1, 3, 28),  -- Turma B1, Ano Letivo 2022, 2º Ano Manhã, Máximo de 28 alunos
    ('B2-2022', 1, 4, 27),  -- Turma B2, Ano Letivo 2022, 2º Ano Tarde, Máximo de 27 alunos
    ('C1-2022', 1, 5, 32),  -- Turma C1, Ano Letivo 2022, 3º Ano Manhã, Máximo de 32 alunos
    ('C2-2022', 1, 6, 29),  -- Turma C2, Ano Letivo 2022, 3º Ano Tarde, Máximo de 29 alunos
    ('D1-2022', 1, 7, 31),  -- Turma D1, Ano Letivo 2022, 4º Ano Manhã, Máximo de 31 alunos
    ('D2-2022', 1, 8, 26),  -- Turma D2, Ano Letivo 2022, 4º Ano Tarde, Máximo de 26 alunos
    ('E1-2022', 1, 9, 33),  -- Turma E1, Ano Letivo 2022, 5º Ano Manhã, Máximo de 33 alunos
    ('E2-2022', 1, 10, 24), -- Turma E2, Ano Letivo 2022, 5º Ano Tarde, Máximo de 24 alunos
    ('F1-2022', 1, 11, 30), -- Turma F1, Ano Letivo 2022, 6º Ano Manhã, Máximo de 30 alunos
    ('F2-2022', 1, 12, 25), -- Turma F2, Ano Letivo 2022, 6º Ano Tarde, Máximo de 25 alunos
    ('G1-2022', 1, 13, 28), -- Turma G1, Ano Letivo 2022, 7º Ano Manhã, Máximo de 28 alunos
    ('G2-2022', 1, 14, 27), -- Turma G2, Ano Letivo 2022, 7º Ano Tarde, Máximo de 27 alunos
    ('H1-2022', 1, 15, 32), -- Turma H1, Ano Letivo 2022, 8º Ano Manhã, Máximo de 32 alunos
    ('H2-2022', 1, 16, 29), -- Turma H2, Ano Letivo 2022, 8º Ano Tarde, Máximo de 29 alunos
    ('I1-2022', 1, 17, 31), -- Turma I1, Ano Letivo 2022, 9º Ano Manhã, Máximo de 31 alunos
    ('I2-2022', 1, 18, 26), -- Turma I2, Ano Letivo 2022, 9º Ano Tarde, Máximo de 26 alunos
    ('A1-2023', 2, 1, 30),  -- Turma A1, Ano Letivo 2023, 1º Ano Manhã, Máximo de 30 alunos
    ('A2-2023', 2, 2, 25),  -- Turma A2, Ano Letivo 2023, 1º Ano Tarde, Máximo de 25 alunos
    ('B1-2023', 2, 3, 28),  -- Turma B1, Ano Letivo 2023, 2º Ano Manhã, Máximo de 28 alunos
    ('B2-2023', 2, 4, 27),  -- Turma B2, Ano Letivo 2023, 2º Ano Tarde, Máximo de 27 alunos
    ('C1-2023', 2, 5, 32),  -- Turma C1, Ano Letivo 2023, 3º Ano Manhã, Máximo de 32 alunos
    ('C2-2023', 2, 6, 29),  -- Turma C2, Ano Letivo 2023, 3º Ano Tarde, Máximo de 29 alunos
    ('D1-2023', 2, 7, 31),  -- Turma D1, Ano Letivo 2023, 4º Ano Manhã, Máximo de 31 alunos
    ('D2-2023', 2, 8, 26),  -- Turma D2, Ano Letivo 2023, 4º Ano Tarde, Máximo de 26 alunos
    ('E1-2023', 2, 9, 33),  -- Turma E1, Ano Letivo 2023, 5º Ano Manhã, Máximo de 33 alunos
    ('E2-2023', 2, 10, 24), -- Turma E2, Ano Letivo 2023, 5º Ano Tarde, Máximo de 24 alunos
    ('F1-2023', 2, 11, 30), -- Turma F1, Ano Letivo 2023, 6º Ano Manhã, Máximo de 30 alunos
    ('F2-2023', 2, 12, 25), -- Turma F2, Ano Letivo 2023, 6º Ano Tarde, Máximo de 25 alunos
    ('G1-2023', 2, 13, 28), -- Turma G1, Ano Letivo 2023, 7º Ano Manhã, Máximo de 28 alunos
    ('G2-2023', 2, 14, 27), -- Turma G2, Ano Letivo 2023, 7º Ano Tarde, Máximo de 27 alunos
    ('H1-2023', 2, 15, 32), -- Turma H1, Ano Letivo 2023, 8º Ano Manhã, Máximo de 32 alunos
    ('H2-2023', 2, 16, 29), -- Turma H2, Ano Letivo 2023, 8º Ano Tarde, Máximo de 29 alunos
    ('I1-2023', 2, 17, 31), -- Turma I1, Ano Letivo 2023, 9º Ano Manhã, Máximo de 31 alunos
    ('I2-2023', 2, 18, 26), -- Turma I2, Ano Letivo 2023, 9º Ano Tarde, Máximo de 26 alunos
    ('A1-2024', 3, 1, 30),  -- Turma A1, Ano Letivo 2024, 1º Ano Manhã, Máximo de 30 alunos
    ('A2-2024', 3, 2, 25),  -- Turma A2, Ano Letivo 2024, 1º Ano Tarde, Máximo de 25 alunos
    ('B1-2024', 3, 3, 28),  -- Turma B1, Ano Letivo 2024, 2º Ano Manhã, Máximo de 28 alunos
    ('B2-2024', 3, 4, 27),  -- Turma B2, Ano Letivo 2024, 2º Ano Tarde, Máximo de 27 alunos
    ('C1-2024', 3, 5, 32),  -- Turma C1, Ano Letivo 2024, 3º Ano Manhã, Máximo de 32 alunos
    ('C2-2024', 3, 6, 29),  -- Turma C2, Ano Letivo 2024, 3º Ano Tarde, Máximo de 29 alunos
    ('D1-2024', 3, 7, 31),  -- Turma D1, Ano Letivo 2024, 4º Ano Manhã, Máximo de 31 alunos
    ('D2-2024', 3, 8, 26),  -- Turma D2, Ano Letivo 2024, 4º Ano Tarde, Máximo de 26 alunos
    ('E1-2024', 3, 9, 33),  -- Turma E1, Ano Letivo 2024, 5º Ano Manhã, Máximo de 33 alunos
    ('E2-2024', 3, 10, 24), -- Turma E2, Ano Letivo 2024, 5º Ano Tarde, Máximo de 24 alunos
    ('F1-2024', 3, 11, 30), -- Turma F1, Ano Letivo 2024, 6º Ano Manhã, Máximo de 30 alunos
    ('F2-2024', 3, 12, 25), -- Turma F2, Ano Letivo 2024, 6º Ano Tarde, Máximo de 25 alunos
    ('G1-2024', 3, 13, 28), -- Turma G1, Ano Letivo 2024, 7º Ano Manhã, Máximo de 28 alunos
    ('G2-2024', 3, 14, 27), -- Turma G2, Ano Letivo 2024, 7º Ano Tarde, Máximo de 27 alunos
    ('H1-2024', 3, 15, 32), -- Turma H1, Ano Letivo 2024, 8º Ano Manhã, Máximo de 32 alunos
    ('H2-2024', 3, 16, 29), -- Turma H2, Ano Letivo 2024, 8º Ano Tarde, Máximo de 29 alunos
    ('I1-2024', 3, 17, 31), -- Turma I1, Ano Letivo 2024, 9º Ano Manhã, Máximo de 31 alunos
    ('I2-2024', 3, 18, 26); -- Turma I2, Ano Letivo 2024, 9º Ano Tarde, Máximo de 26 alunos

INSERT INTO Turma_Disciplina (id_turma_ano_letivo, id_disciplina)
VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),
(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),
(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),
(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),
(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),
(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),
(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),
(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),
(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),
(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),
(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),
(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),
(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),
(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),
(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),
(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),
(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),
(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(18,7),(18,8),
(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(19,7),(19,8),
(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(20,7),(20,8),
(21,1),(21,2),(21,3),(21,4),(21,5),(21,6),(21,7),(21,8),
(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(22,7),(22,8),
(23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(23,7),(23,8),
(24,1),(24,2),(24,3),(24,4),(24,5),(24,6),(24,7),(24,8),
(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(25,7),(25,8),
(26,1),(26,2),(26,3),(26,4),(26,5),(26,6),(26,7),(26,8),
(27,1),(27,2),(27,3),(27,4),(27,5),(27,6),(27,7),(27,8),
(28,1),(28,2),(28,3),(28,4),(28,5),(28,6),(28,7),(28,8),
(29,1),(29,2),(29,3),(29,4),(29,5),(29,6),(29,7),(29,8),
(30,1),(30,2),(30,3),(30,4),(30,5),(30,6),(30,7),(30,8),
(31,1),(31,2),(31,3),(31,4),(31,5),(31,6),(31,7),(31,8),
(32,1),(32,2),(32,3),(32,4),(32,5),(32,6),(32,7),(32,8),
(33,1),(33,2),(33,3),(33,4),(33,5),(33,6),(33,7),(33,8),
(34,1),(34,2),(34,3),(34,4),(34,5),(34,6),(34,7),(34,8),
(35,1),(35,2),(35,3),(35,4),(35,5),(35,6),(35,7),(35,8),
(36,1),(36,2),(36,3),(36,4),(36,5),(36,6),(36,7),(36,8),
(37,1),(37,2),(37,3),(37,4),(37,5),(37,6),(37,7),(37,8),
(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(38,7),(38,8),
(39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(39,7),(39,8),
(40,1),(40,2),(40,3),(40,4),(40,5),(40,6),(40,7),(40,8),
(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(41,7),(41,8),
(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(42,8),
(43,1),(43,2),(43,3),(43,4),(43,5),(43,6),(43,7),(43,8),
(44,1),(44,2),(44,3),(44,4),(44,5),(44,6),(44,7),(44,8),
(45,1),(45,2),(45,3),(45,4),(45,5),(45,6),(45,7),(45,8),
(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(46,7),(46,8),
(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(47,7),(47,8),
(48,1),(48,2),(48,3),(48,4),(48,5),(48,6),(48,7),(48,8),
(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(49,7),(49,8),
(50,1),(50,2),(50,3),(50,4),(50,5),(50,6),(50,7),(50,8),
(51,1),(51,2),(51,3),(51,4),(51,5),(51,6),(51,7),(51,8),
(52,1),(52,2),(52,3),(52,4),(52,5),(52,6),(52,7),(52,8),
(53,1),(53,2),(53,3),(53,4),(53,5),(53,6),(53,7),(53,8),
(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(54,7),(54,8);

INSERT INTO Prof_Turma_Disc (id_turma_disciplina, id_professor)
VALUES
(1,12),(2,10),(3,7),(4,5),(5,11),(6,8),(7,9),(8,2),(9,6),
(10,9),(11,6),(12,7),(13,1),(14,3),(15,10),(16,5),(17,2),(18,8),
(19,7),(20,8),(21,4),(22,5),(23,6),(24,11),(25,2),(26,10),(27,9),
(28,8),(29,12),(30,4),(31,3),(32,11),(33,1),(34,6),(35,7),(36,9),
(37,3),(38,9),(39,8),(40,11),(41,5),(42,4),(43,1),(44,2),(45,6),
(46,10),(47,11),(48,6),(49,3),(50,2),(51,9),(52,4),(53,1),(54,5),
(55,4),(56,1),(57,12),(58,11),(59,9),(60,6),(61,7),(62,2),(63,3),
(64,7),(65,4),(66,1),(67,5),(68,6),(69,12),(70,2),(71,11),(72,9),
(73,1),(74,7),(75,4),(76,9),(77,5),(78,12),(79,10),(80,3),(81,2),
(82,4),(83,5),(84,12),(85,3),(86,8),(87,10),(88,2),(89,6),(90,11),
(91,12),(92,10),(93,2),(94,3),(95,7),(96,4),(97,5),(98,1),(99,11),
(100,3),(101,6),(102,2),(103,10),(104,11),(105,9),(106,1),(107,8),(108,7),
(109,3),(110,10),(111,5),(112,11),(113,12),(114,6),(115,9),(116,8),(117,1),
(118,1),(119,8),(120,12),(121,4),(122,5),(123,3),(124,10),(125,7),(126,6),
(127,2),(128,10),(129,7),(130,5),(131,1),(132,3),(133,12),(134,4),(135,9),
(136,4),(137,11),(138,10),(139,12),(140,2),(141,7),(142,3),(143,1),(144,8),
(145,4),(146,3),(147,10),(148,9),(149,7),(150,5),(151,8),(152,12),(153,2),
(154,5),(155,1),(156,11),(157,8),(158,6),(159,4),(160,10),(161,3),(162,9),
(163,4),(164,8),(165,9),(166,1),(167,12),(168,7),(169,6),(170,11),(171,3),
(172,8),(173,2),(174,7),(175,11),(176,6),(177,3),(178,5),(179,1),(180,4),
(181,3),(182,8),(183,1),(184,10),(185,4),(186,6),(187,5),(188,9),(189,12),
(190,3),(191,1),(192,4),(193,8),(194,12),(195,2),(196,11),(197,7),(198,9),
(199,7),(200,6),(201,5),(202,2),(203,4),(204,9),(205,1),(206,11),(207,12),
(208,8),(209,12),(210,2),(211,3),(212,4),(213,5),(214,6),(215,7),(216,9),
(217,5),(218,12),(219,3),(220,4),(221,8),(222,2),(223,9),(224,7),(225,10),
(226,8),(227,10),(228,5),(229,1),(230,12),(231,6),(232,4),(233,11),(234,9),
(235,4),(236,8),(237,6),(238,12),(239,11),(240,9),(241,7),(242,3),(243,5),
(244,12),(245,3),(246,10),(247,11),(248,4),(249,1),(250,7),(251,9),(252,8),
(253,10),(254,2),(255,12),(256,7),(257,9),(258,4),(259,5),(260,1),(261,3),
(262,5),(263,1),(264,2),(265,9),(266,10),(267,3),(268,6),(269,12),(270,7),
(271,12),(272,2),(273,6),(274,3),(275,9),(276,5),(277,8),(278,4),(279,1),
(280,10),(281,7),(282,2),(283,11),(284,9),(285,8),(286,5),(287,12),(288,4),
(289,1),(290,9),(291,11),(292,12),(293,3),(294,10),(295,4),(296,7),(297,2),
(298,7),(299,3),(300,4),(301,9),(302,1),(303,11),(304,6),(305,2),(306,12),
(307,1),(308,2),(309,9),(310,8),(311,10),(312,11),(313,12),(314,4),(315,6),
(316,11),(317,8),(318,10),(319,7),(320,12),(321,9),(322,5),(323,2),(324,3),
(325,6),(326,7),(327,2),(328,8),(329,10),(330,5),(331,12),(332,4),(333,11),
(334,8),(335,10),(336,11),(337,4),(338,2),(339,6),(340,1),(341,12),(342,9),
(343,7),(344,3),(345,8),(346,4),(347,6),(348,9),(349,1),(350,12),(351,11),
(352,9),(353,3),(354,2),(355,1),(356,7),(357,11),(358,10),(359,5),(360,8),
(361,1),(362,12),(363,3),(364,9),(365,8),(366,2),(367,5),(368,4),(369,11),
(370,11),(371,8),(372,1),(373,2),(374,9),(375,4),(376,12),(377,10),(378,6),
(379,4),(380,2),(381,5),(382,9),(383,11),(384,12),(385,10),(386,1),(387,8),
(388,8),(389,5),(390,12),(391,1),(392,2),(393,4),(394,3),(395,6),(396,11),
(397,5),(398,6),(399,11),(400,10),(401,1),(402,3),(403,7),(404,2),(405,12),
(406,5),(407,9),(408,7),(409,6),(410,10),(411,1),(412,2),(413,3),(414,12),
(415,10),(416,11),(417,5),(418,7),(419,3),(420,2),(421,4),(422,8),(423,12),
(424,3),(425,10),(426,5),(427,1),(428,8),(429,12),(430,2),(431,7),(432,11);


INSERT INTO Aulas (id_turma_disciplina, "data", hora_inicio, hora_fim, aula)
SELECT id_turma_disciplina, TO_DATE('2024-02-01', 'YYYY-MM-DD'), '08:00', '10:00', 1  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-02', 'YYYY-MM-DD'), '08:00', '10:00', 2  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-05', 'YYYY-MM-DD'), '08:00', '10:00', 3  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-06', 'YYYY-MM-DD'), '08:00', '10:00', 4  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-07', 'YYYY-MM-DD'), '08:00', '10:00', 5  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-08', 'YYYY-MM-DD'), '08:00', '10:00', 6  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-09', 'YYYY-MM-DD'), '08:00', '10:00', 7  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-15', 'YYYY-MM-DD'), '08:00', '10:00', 8  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-16', 'YYYY-MM-DD'), '08:00', '10:00', 9  FROM turma_disciplina
UNION
SELECT id_turma_disciplina, TO_DATE('2024-02-16', 'YYYY-MM-DD'), '14:00', '17:00', 10  FROM turma_disciplina
;

INSERT INTO Bimestre (id_turma_disciplina, descricao, valor, media_aprovacao)
SELECT id_turma_disciplina, '1º Bimestre', 100, 70 FROM turma_disciplina
UNION
SELECT id_turma_disciplina, '2º Bimestre', 100, 70 FROM turma_disciplina
UNION
SELECT id_turma_disciplina, '3º Bimestre', 100, 70 FROM turma_disciplina
UNION
SELECT id_turma_disciplina, '4º Bimestre', 100, 70 FROM turma_disciplina
;

WITH TURMAS AS (SELECT ROW_NUMBER() OVER (ORDER BY ID_TURMA_ANO_LETIVO) NUM, * FROM Turma_Ano_Letivo WHERE ID_ANO_LETIVO = 3)

INSERT INTO Aluno_Ano_Letivo (id_aluno, id_turma_ano_letivo, id_status)
SELECT id_aluno, id_turma_ano_letivo, 1
FROM Alunos
	, TURMAS

WHERE (TURMAS.NUM = 1 AND ALUNOS.ID_ALUNO <= 6 )
	OR (TURMAS.NUM = 2 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 3 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 4 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 5 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 6 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 7 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 8 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
	OR (TURMAS.NUM = 9 AND ALUNOS.ID_ALUNO > (TURMAS.NUM-1)*6 AND ALUNOS.ID_ALUNO <= TURMAS.NUM*6)
;

INSERT INTO Aluno_Disciplinas (id_aluno, id_turma_ano_letivo, id_turma_disciplina, id_status)
select aluno_Ano_Letivo.id_aluno,  aluno_Ano_Letivo.id_turma_ano_letivo, Turma_Disciplina.id_turma_disciplina, 1
from aluno_Ano_Letivo
	JOIN Turma_Disciplina
		ON Turma_Disciplina.id_turma_ano_letivo = aluno_Ano_Letivo.id_turma_ano_letivo
;

WITH ALUNO_AULAS AS (SELECT Aluno_Disciplinas.id_aluno
				  	, Aluno_Disciplinas.id_turma_ano_letivo
				  	, Aluno_Disciplinas.id_turma_disciplina
				  	, Aulas.id_aulas
				  	/* GERANDO FALTA ALEATORIAMENTE */
					, CASE WHEN CAST( (Aulas.id_aulas / Aluno_Disciplinas.id_aluno) AS INTEGER) % 2  = 0
				  		THEN 'P' --presenca
				  		ELSE 'F' --falta
				  	END "frequencia"
				  FROM Aluno_Disciplinas
					JOIN Aulas
						ON Aulas.id_turma_disciplina = Aluno_Disciplinas.id_turma_disciplina
				  
				 )
INSERT INTO Frequencia (id_aluno, id_turma_ano_letivo, id_turma_disciplina, id_aulas, frequencia)
SELECT * FROM ALUNO_AULAS
;

WITH NOTAS_ALUNO AS (
 	SELECT Aluno_Disciplinas.id_aluno
		, Aluno_Disciplinas.id_turma_ano_letivo
		, Aluno_Disciplinas.id_turma_disciplina
		, Bimestre.id_bimestre
		/* GERANDO NOTA ALEATORIAMENTE */
		, ROUND( CAST(random()*100 AS numeric), 1) "NOTA"
	  FROM Aluno_Disciplinas
		JOIN Bimestre
			ON Bimestre.id_turma_disciplina = Aluno_Disciplinas.id_turma_disciplina
	  
)
INSERT INTO Notas (id_aluno, id_turma_ano_letivo, id_turma_disciplina, id_bimestre, nota)
SELECT * FROM NOTAS_ALUNO
;


