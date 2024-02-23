CREATE VIEW Detalhes_NotaFalta_Aluno AS

WITH TOTAL_PRESENCA_FALTAS AS (
		SELECT
			Frequencia.id_aluno
			, Frequencia.id_turma_ano_letivo
			, Frequencia.id_turma_disciplina
			, COUNT(Frequencia.id_turma_disciplina) QTD_REGISTROS
			, SUM(
				CASE WHEN Frequencia.frequencia = 'P'
				 		THEN 1
				 ELSE 0
				 END
			) QTD_PRESENCA
			, SUM(
				CASE WHEN Frequencia.frequencia = 'F'
					THEN 1
			 	ELSE 0
			 	END
			) QTD_FALTA
		FROM Frequencia 			
		GROUP BY Frequencia.id_aluno
			, Frequencia.id_turma_ano_letivo
			, Frequencia.id_turma_disciplina
)


SELECT
    Alunos.id_aluno,
    Alunos.nome AS nome_aluno,
    Disciplinas.nome AS disciplina,
    Cursos.nome AS curso,
    Serie_Ano.nome AS serie_ano,
    Serie_Turno.turno,
	Ano_Letivo.ano,
	Ano_Letivo.descricao AS desc_ano_letivo,
	Turma_Ano_Letivo.codturma,
    Status.descricao AS status_disciplina,
	
    BIM_1.id_bimestre AS ID_BIM1,
	BIM_1.descricao AS DESC_BIM1,
    Nota_Bim_1.nota AS NOTA_BIM1,

    BIM_2.id_bimestre AS ID_BIM2,
	BIM_2.descricao AS DESC_BIM2,
    Nota_Bim_2.nota AS NOTA_BIM2,
	
	BIM_3.id_bimestre AS ID_BIM3,
	BIM_3.descricao AS DESC_BIM3,
    Nota_Bim_3.nota AS NOTA_BIM3,
	
	BIM_4.id_bimestre AS ID_BIM4,
	BIM_4.descricao AS DESC_BIM4,
    Nota_Bim_4.nota AS NOTA_BIM4,
	
	TOTAL_PRESENCA_FALTAS.QTD_PRESENCA  AS quantidade_presenca,
    TOTAL_PRESENCA_FALTAS.QTD_FALTA AS quantidade_faltas
	
FROM Alunos
	INNER JOIN Aluno_Ano_Letivo
		ON Alunos.id_aluno = Aluno_Ano_Letivo.id_aluno
	
	INNER JOIN Turma_Ano_Letivo
		ON Aluno_Ano_Letivo.id_turma_ano_letivo = Turma_Ano_Letivo.id_turma_ano_letivo
		
	
	INNER JOIN Ano_Letivo
		ON Turma_Ano_Letivo.id_ano_letivo = Ano_Letivo.id_ano_letivo
	
	INNER JOIN Aluno_Disciplinas 
		ON Aluno_Ano_Letivo.id_aluno = Aluno_Disciplinas.id_aluno
		AND Aluno_Ano_Letivo.id_turma_ano_letivo = Aluno_Disciplinas.id_turma_ano_letivo
	
		
	INNER JOIN Turma_Disciplina 
		ON Turma_Ano_Letivo.id_turma_ano_letivo = Turma_Disciplina.id_turma_ano_letivo 
		AND Aluno_Disciplinas.id_turma_disciplina = Turma_Disciplina.id_turma_disciplina
		
	INNER JOIN Disciplinas 
		ON Turma_Disciplina.id_disciplina = Disciplinas.id_disciplina

	INNER JOIN Serie_Turno 
		ON Turma_Ano_Letivo.id_serie_turno = Serie_Turno.id_serie_turno
		
	INNER JOIN Serie_Ano 
		ON Serie_Turno.id_serie = Serie_Ano.id_serie
		
	INNER JOIN Cursos 
		ON Serie_Ano.id_curso = Cursos.id_curso

	
	INNER JOIN Status 
		ON Aluno_Disciplinas.id_status = Status.id_status
	
	LEFT JOIN Bimestre BIM_1
		ON Turma_Disciplina.id_turma_disciplina = BIM_1.id_turma_disciplina 
		AND BIM_1.descricao = '1º Bimestre'
	
	LEFT JOIN Bimestre BIM_2
		ON Turma_Disciplina.id_turma_disciplina = BIM_2.id_turma_disciplina 
		AND BIM_2.descricao = '2º Bimestre'
		
	LEFT JOIN Bimestre BIM_3
		ON Turma_Disciplina.id_turma_disciplina = BIM_3.id_turma_disciplina 
		AND BIM_3.descricao = '3º Bimestre'
		
	LEFT JOIN Bimestre BIM_4
		ON Turma_Disciplina.id_turma_disciplina = BIM_4.id_turma_disciplina 
		AND BIM_4.descricao = '4º Bimestre'
	
	
	LEFT JOIN Notas Nota_Bim_1 
		ON Aluno_Disciplinas.id_aluno = Nota_Bim_1.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = Nota_Bim_1.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = Nota_Bim_1.id_turma_disciplina
		AND BIM_1.id_bimestre = Nota_Bim_1.id_bimestre
		
	LEFT JOIN Notas Nota_Bim_2
		ON Aluno_Disciplinas.id_aluno = Nota_Bim_2.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = Nota_Bim_2.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = Nota_Bim_2.id_turma_disciplina
		AND BIM_2.id_bimestre = Nota_Bim_2.id_bimestre
		
	LEFT JOIN Notas Nota_Bim_3 
		ON Aluno_Disciplinas.id_aluno = Nota_Bim_3.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = Nota_Bim_3.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = Nota_Bim_3.id_turma_disciplina
		AND BIM_3.id_bimestre = Nota_Bim_3.id_bimestre
		
	LEFT JOIN Notas Nota_Bim_4
		ON Aluno_Disciplinas.id_aluno = Nota_Bim_4.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = Nota_Bim_4.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = Nota_Bim_4.id_turma_disciplina
		AND BIM_4.id_bimestre = Nota_Bim_4.id_bimestre
		
	LEFT JOIN TOTAL_PRESENCA_FALTAS 
		ON Aluno_Disciplinas.id_aluno = TOTAL_PRESENCA_FALTAS.id_aluno
		AND Aluno_Disciplinas.id_turma_ano_letivo = TOTAL_PRESENCA_FALTAS.id_turma_ano_letivo
		AND Turma_Disciplina.id_turma_disciplina = TOTAL_PRESENCA_FALTAS.id_turma_disciplina;
	