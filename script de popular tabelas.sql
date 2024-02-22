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
