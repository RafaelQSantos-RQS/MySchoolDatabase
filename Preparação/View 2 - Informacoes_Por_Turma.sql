CREATE VIEW Informacoes_Por_Turma AS
SELECT 
    Turma_Ano_Letivo.codturma AS Turma,
	Disciplinas.nome AS disciplina,
    Cursos.nome AS curso,
    Serie_Ano.nome AS serie_ano,
    Serie_Turno.turno,
	Ano_Letivo.ano,
	Ano_Letivo.descricao AS desc_ano_letivo,
    Alunos.nome AS Aluno,
    Notas.nota AS Nota,
    CASE 
        WHEN Notas.nota >= Bimestre.media_aprovacao THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS Situacao
FROM Turma_Ano_Letivo
	JOIN Ano_Letivo
		ON Turma_Ano_Letivo.id_ano_letivo = Ano_Letivo.id_ano_letivo
	JOIN Turma_Disciplina
		ON Turma_Disciplina.id_turma_ano_letivo = Turma_Ano_Letivo.id_turma_ano_letivo
		
	JOIN Aluno_Disciplinas
		ON Turma_Disciplina.id_turma_disciplina = Aluno_Disciplinas.id_turma_disciplina
		
	JOIN Alunos
		ON Aluno_Disciplinas.id_aluno = Alunos.id_aluno
	
	JOIN Disciplinas 
		ON Turma_Disciplina.id_disciplina = Disciplinas.id_disciplina

	JOIN Serie_Turno 
		ON Turma_Ano_Letivo.id_serie_turno = Serie_Turno.id_serie_turno
		
	JOIN Serie_Ano 
		ON Serie_Turno.id_serie = Serie_Ano.id_serie
		
	JOIN Cursos 
		ON Serie_Ano.id_curso = Cursos.id_curso

	LEFT JOIN Notas 
		ON Aluno_Disciplinas.id_aluno = Notas.id_aluno
	   AND Aluno_Disciplinas.id_turma_ano_letivo = Notas.id_turma_ano_letivo
	   AND Turma_Disciplina.id_turma_disciplina = Notas.id_turma_disciplina
	   
	LEFT JOIN Bimestre
		ON Notas.id_bimestre = Bimestre.id_bimestre;