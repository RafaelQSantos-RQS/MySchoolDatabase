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
	   (2, '9º Ano', 'Nono Ano do Ensino Fundamental');