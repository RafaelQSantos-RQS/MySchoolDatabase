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
('50505-050', 'Rua O', '359', 'Bairro L', 'João Pessoa', 'Paraíba', 'Brasil')
;
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
('Eduardo Santos', '(XX) XXXX-XXXX', 'eduardo.santos@example.com')
;

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
('Luan Costa', '2009-10-19', 'M', '(11) 1234-5678', 'luan.costa@email.com', 5, 1)
;

