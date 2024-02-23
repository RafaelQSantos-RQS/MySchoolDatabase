CREATE VIEW Listagem_Alunos_Notas_Prof_Disc AS
SELECT
	Cursos.nome AS curso,
    Serie_Ano.nome AS serie_ano,
    Serie_Turno.turno,
	Ano_Letivo.ano,
	Ano_Letivo.descricao AS desc_ano_letivo,
	Turma_Ano_Letivo.codturma,
    Alunos.id_aluno,
    Alunos.nome AS nome_aluno,
    Disciplinas.nome AS disciplina,
    Professores.nome AS nome_professor,
    Bimestre.id_bimestre,
	Bimestre.descricao AS descricao_bimestre,
    Notas.nota,
    Status.descricao AS status_disciplina
	
FROM Alunos
	JOIN Aluno_Ano_Letivo
		ON Alunos.id_aluno = Aluno_Ano_Letivo.id_aluno
	
	JOIN Turma_Ano_Letivo
		ON Aluno_Ano_Letivo.id_turma_ano_letivo = Turma_Ano_Letivo.id_turma_ano_letivo
		
	JOIN Ano_Letivo
		ON Turma_Ano_Letivo.id_ano_letivo = Ano_Letivo.id_ano_letivo
		
	JOIN Aluno_Disciplinas 
		ON Alunos.id_aluno = Aluno_Disciplinas.id_aluno
		
	JOIN Turma_Disciplina 
		ON Aluno_Disciplinas.id_turma_disciplina = Turma_Disciplina.id_turma_disciplina
	
	JOIN Status 
		ON Aluno_Disciplinas.id_status = Status.id_status	
		
	JOIN Disciplinas 
		ON Turma_Disciplina.id_disciplina = Disciplinas.id_disciplina
		
	JOIN Prof_Turma_Disc 
		ON Turma_Disciplina.id_turma_disciplina = Prof_Turma_Disc.id_turma_disciplina
		
	JOIN Professores 
		ON Prof_Turma_Disc.id_professor = Professores.id_professor
		
	LEFT JOIN Bimestre
		ON Turma_Disciplina.id_turma_disciplina = Bimestre.id_turma_disciplina 

	LEFT JOIN Notas 
		ON Aluno_Disciplinas.id_aluno = Notas.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = Notas.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = Notas.id_turma_disciplina
		AND Bimestre.id_bimestre = Notas.id_bimestre
		
	JOIN Serie_Turno 
		ON Turma_Ano_Letivo.id_serie_turno = Serie_Turno.id_serie_turno
		
	JOIN Serie_Ano 
		ON Serie_Turno.id_serie = Serie_Ano.id_serie
		
	JOIN Cursos 
		ON Serie_Ano.id_curso = Cursos.id_curso
		
--select * from Prof_Turma_Disc