CREATE TABLE IF NOT EXISTS Enderecos (
	id_endereco SMALLSERIAL PRIMARY KEY,
	cep VARCHAR(25) NOT NULL,
    rua VARCHAR(250) NOT NULL,
    numero VARCHAR(5) NOT NULL ,
    bairro VARCHAR(200) NOT NULL,
    cidade VARCHAR(250) NOT NULL,
    estado VARCHAR(250) NOT NULL,
    pais VARCHAR(250) NOT NULL
);
CREATE TABLE IF NOT EXISTS Responsavel (
	id_responsavel SMALLSERIAL PRIMARY KEY,
    nome_responsavel VARCHAR(200) NOT NULL,
    telefone_responsavel VARCHAR(200) NOT NULL,
    email_responsavel VARCHAR(200) NOT NULL
);


CREATE TABLE IF NOT EXISTS Alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo CHAR NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(254) NOT NULL,
	id_endereco SMALLINT REFERENCES Enderecos(id_endereco),
	id_responsavel SMALLINT NOT NULL REFERENCES Responsavel(id_responsavel)
);

CREATE TABLE Status (
    id_status SMALLSERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    indica_matriculado CHAR(1),--S/N
    indica_aprovado CHAR(1),
    indica_recuperacao CHAR(1),
    indica_reprovado CHAR(1)
);


CREATE TABLE Ano_Letivo (
    id_ano_letivo SMALLSERIAL PRIMARY KEY,
    ano VARCHAR(4) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);


CREATE TABLE Turno (
    id_turno SMALLSERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);


CREATE TABLE Cursos (
    id_curso SMALLSERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);


CREATE TABLE Disciplinas (
    id_disciplina SMALLSERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);


CREATE TABLE Professores (
    id_professor SMALLSERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo CHAR NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(254) NOT NULL,
    contato_emergencial VARCHAR(255) NOT NULL
);


CREATE TABLE Serie_Ano (
    id_serie SMALLSERIAL PRIMARY KEY,
    id_curso SMALLINT REFERENCES Cursos(id_curso) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE Serie_Disciplinas (
    id_serie SMALLINT REFERENCES Serie_Ano(id_serie) NOT NULL,
    id_disciplina SMALLINT REFERENCES Disciplinas(id_disciplina) NOT NULL,
    PRIMARY KEY (id_serie, id_disciplina)
);


CREATE TABLE Serie_Turno (
    id_serie_turno SMALLSERIAL PRIMARY KEY,
    id_serie SMALLINT REFERENCES Serie_Ano(id_serie) NOT NULL,
    id_turno SMALLINT REFERENCES Turno(id_turno) NOT NULL
);


CREATE TABLE Turma_Ano_Letivo (
    id_turma_ano_letivo SMALLSERIAL PRIMARY KEY,
    codturma VARCHAR(10) NOT NULL,
    id_ano_letivo SMALLINT REFERENCES Ano_Letivo(id_ano_letivo) NOT NULL,
    id_serie_turno SMALLINT REFERENCES Serie_Turno(id_serie_turno) NOT NULL,
    maximo_aluno SMALLINT NOT NULL
);

CREATE TABLE Turma_Disciplina (
    id_turma_disciplina SMALLSERIAL PRIMARY KEY,
    id_turma_ano_letivo SMALLINT REFERENCES Turma_Ano_Letivo(id_turma_ano_letivo) NOT NULL,
    id_disciplina SMALLINT REFERENCES Disciplinas(id_disciplina) NOT NULL
);


CREATE TABLE Prof_Turma_Disc (
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    id_professor SMALLINT REFERENCES Professores(id_professor) NOT NULL,
    PRIMARY KEY (id_turma_disciplina, id_professor)
);


CREATE TABLE Aulas (
    id_aulas SMALLSERIAL PRIMARY KEY,
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    data DATE NOT NULL,
    hora_inicio VARCHAR(5) NOT NULL,
    hora_fim VARCHAR(5) NOT NULL,
    aula SMALLINT NOT NULL
);


CREATE TABLE Bimestre (
    id_bimestre SMALLSERIAL PRIMARY KEY,
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    media_aprovacao DECIMAL(10,2) NOT NULL
);


CREATE TABLE Aluno_Ano_Letivo (
    id_aluno INTEGER REFERENCES Alunos(id_aluno) NOT NULL,
    id_turma_ano_letivo SMALLINT REFERENCES Turma_Ano_Letivo(id_turma_ano_letivo) NOT NULL,
    id_status SMALLINT REFERENCES Status(id_status) NOT NULL,
    PRIMARY KEY (id_aluno, id_turma_ano_letivo)
);


CREATE TABLE Aluno_Disciplinas (
    id_aluno INTEGER REFERENCES Alunos(id_aluno) NOT NULL,
    id_turma_ano_letivo SMALLINT REFERENCES Turma_Ano_Letivo(id_turma_ano_letivo) NOT NULL,
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    id_status SMALLINT REFERENCES Status(id_status) NOT NULL,
    PRIMARY KEY (id_aluno, id_turma_ano_letivo, id_turma_disciplina),
    FOREIGN KEY (id_aluno, id_turma_ano_letivo) REFERENCES Aluno_Ano_Letivo(id_aluno, id_turma_ano_letivo)
);


CREATE TABLE Frequencia (
    id_aluno INTEGER REFERENCES Alunos(id_aluno) NOT NULL,
    id_turma_ano_letivo SMALLINT REFERENCES Turma_Ano_Letivo(id_turma_ano_letivo) NOT NULL,
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    id_aulas SMALLINT REFERENCES Aulas(id_aulas) NOT NULL,
    PRIMARY KEY (id_aluno, id_turma_ano_letivo, id_turma_disciplina, id_aulas),
    FOREIGN KEY (id_aluno, id_turma_ano_letivo, id_turma_disciplina) REFERENCES Aluno_Disciplinas(id_aluno, id_turma_ano_letivo, id_turma_disciplina)
);


CREATE TABLE Notas (
    id_aluno INTEGER REFERENCES Alunos(id_aluno) NOT NULL,
    id_turma_ano_letivo SMALLINT REFERENCES Turma_Ano_Letivo(id_turma_ano_letivo) NOT NULL,
    id_turma_disciplina SMALLINT REFERENCES Turma_Disciplina(id_turma_disciplina) NOT NULL,
    id_bimestre SMALLINT REFERENCES Bimestre(id_bimestre) NOT NULL,
    nota DECIMAL(10,2),
    PRIMARY KEY (id_aluno, id_turma_ano_letivo, id_turma_disciplina, id_bimestre),
    FOREIGN KEY (id_aluno, id_turma_ano_letivo, id_turma_disciplina) REFERENCES Aluno_Disciplinas(id_aluno, id_turma_ano_letivo, id_turma_disciplina)
);
