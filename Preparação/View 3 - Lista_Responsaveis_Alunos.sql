CREATE VIEW Lista_Responsaveis_Alunos AS
SELECT
    Responsavel.nome_responsavel,
	Responsavel.telefone_responsavel,
	Responsavel.email_responsavel,
    Alunos.nome AS nome_aluno,
    Ano_Letivo.ano,
	Ano_Letivo.descricao AS desc_ano_letivo,
    Turma_Ano_Letivo.codturma,
	Status.descricao as status,
	Cursos.nome AS curso,
    Serie_Ano.nome AS serie_ano,
    Serie_Turno.turno

	
FROM Alunos
	LEFT JOIN Responsavel 
		ON Alunos.id_responsavel = Responsavel.id_responsavel
	
	JOIN Aluno_Ano_Letivo 
		ON Alunos.id_aluno = Aluno_Ano_Letivo.id_aluno
	
	JOIN Turma_Ano_Letivo 
		ON Aluno_Ano_Letivo.id_turma_ano_letivo = Turma_Ano_Letivo.id_turma_ano_letivo
	
	JOIN Status 
		ON Aluno_Ano_Letivo.id_status = Status.id_status
	
	JOIN Ano_Letivo 
		ON Turma_Ano_Letivo.id_ano_letivo = Ano_Letivo.id_ano_letivo
		
	JOIN Serie_Turno 
		ON Turma_Ano_Letivo.id_serie_turno = Serie_Turno.id_serie_turno
		
	JOIN Serie_Ano 
		ON Serie_Turno.id_serie = Serie_Ano.id_serie
		
	JOIN Cursos 
		ON Serie_Ano.id_curso = Cursos.id_curso