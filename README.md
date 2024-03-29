# Projeto Banco de Dados - Escola

***

<p style="text-align:center;" align="center">
<img src='https://img.freepik.com/vetores-premium/exterior-do-edificio-da-escola-moderna-bem-vindo-de-volta-a-escola-arquitetura-educacional-do-ensino-medio_625536-384.jpg?w=1380' width=600>
</p>


Esse repositório é referente ao projeto de Banco de Dados do curso de Engenheiro de dados da ADA Tech Santander Coders, utilizando o PostgreSQL como banco de dados. O objetivo principal do projeto é criar uma base de dados com potencial de ser aplicada em um contexto de negócios real e tenha utilidade prática.

Em meio a tantas opções, o grupo optou por desenvolver uma estrutura de banco de dados para a gestão de dados de uma escola, considerando o 1º ao 9º ano do ensino fundamental. Para isso, é necessário armazenar dados sobre alunos, professores, aulas, turmas, séries e outros aspectos relacionados.

Para a implementação inicial do projeto, utilizamos o draw.io para o desenho do diagrama de entidade-relacionamento, devido ele ser online e permitir a iteração multiusuario, e o PostgreSQL para a criação, população das tabelas, criação de Views e execução de consultas SQL.


Os dados utilizados para população são fictícios, servindo apenas como exemplos para ilustrar o funcionamento do projeto.

***

## Diagrama Entidade Relacionamento

Pensando na escola, algumas tabelas são imprescindiveis. Alunos, professores, disciplinas, turmas, séries, ano letivo, notas, frequência.

No entanto, foram elaboradas tabelas de relacionamento entre entidades para aprimorar a interação no banco de dados. Por exemplo, a tabela turmas_disciplinas associa todas as disciplinas a cada turma, enquanto a turma_ano_letivo relaciona todas as turmas a um determinado ano letivo. Da mesma forma, a tabela alunos_disciplina estabelece as conexões entre cada aluno e suas disciplinas correspondentes, e assim por diante.

Inicialmente utilizamos o draw.io como ferramenta inicial de modelagem, e posteriormente o Postgres para concretizar o modelo de entidades e relacionamentos. Assim, foi possível criar o diagrama de entidade-relacionamento a seguir para exemplificar o projeto. Você pode acessá-lo neste [link](images/Modelo_de_Dados.pgerd.png):

<p style="text-align:center;">
<img src='https://raw.githubusercontent.com/RafaelQSantos-RQS/MySchoolDatabase/main/images/Modelo_de_Dados.pgerd.png'>
</p>

Tendo esse plano desenhado, coube a criação de tabelas no PostgresSQL, respeitando os tipos de cada um dos atributos, assim como as ligações entre chaves primárias e estrangeiras. O arquivo de criação das tabelas no formado SQL está presente nesse [link](Preparação/Create%20Tables.sql).

Sobre a população, foram feitas diretamente no arquivo SQL presente nesse [link](Preparação/Insert%20Data.sql). Lembrando, os dados utilizados são ficticios montados pela própria equipe para fins didáticos.

***
### Descrição das Tabelas

Detalhando mais a fundo, aqui estão presentes todas as tabelas e suas descrições:

1. **Enderecos**: Esta tabela armazena informações de endereços, como CEP, rua, número, bairro, cidade, estado e país. Ela é utilizada para manter registros de endereços associados a alunos e outros elementos do sistema.

2. **Responsavel:** Nesta tabela são registradas informações sobre os responsáveis dos alunos, incluindo nome, telefone e email. Esses dados são relacionados aos alunos por meio da chave estrangeira id_responsavel na tabela Alunos.

3. **Alunos:** Aqui são armazenados os dados dos alunos, como nome, data de nascimento, sexo, telefone, email e referências aos seus respectivos endereços e responsáveis por meio das chaves estrangeiras id_endereco e id_responsavel.

4. **Status:** A tabela Status mantém registros dos diferentes status de matrícula dos alunos, indicando se estão matriculados, aprovados, em recuperação ou reprovados.

5. **Ano_Letivo:** Esta tabela armazena informações sobre os anos letivos, incluindo o ano e uma descrição. Ela é utilizada para gerenciar os anos acadêmicos em que os alunos estão matriculados.

6. **Cursos:** Aqui são registrados os diferentes cursos oferecidos pela instituição, contendo nome e descrição do curso. Por exemplo, 'Ensino Fundamental I'.

7. **Disciplinas:** Nesta tabela são cadastradas as disciplinas disponíveis, incluindo nome e descrição.

8. **Professores:** Aqui são registrados os dados dos professores, incluindo nome, data de nascimento, sexo, telefone, email e informações de contato de emergência.

9. **Serie_Ano:** Esta tabela armazena as séries de cada curso, associando-as aos cursos por meio da chave estrangeira id_curso. Por exemplo, 1º Ano, 2º Ano ... etc.

10. **Serie_Disciplinas:** A tabela Serie_Disciplinas estabelece a relação entre as séries e as disciplinas oferecidas, permitindo associar disciplinas específicas a cada série.

11. **Serie_Turno:** Aqui são registrados os turnos disponíveis para cada série, como manhã, tarde e noite.

12. **Turma_Ano_Letivo:** Esta tabela mantém registros das turmas criadas em cada ano letivo, contendo um código de turma, referências ao ano letivo e ao turno da série, além de indicar o número máximo de alunos permitidos na turma.

13. **Turma_Disciplina:** Nesta tabela são associadas as disciplinas oferecidas em cada turma, permitindo gerenciar quais disciplinas são ministradas em determinada turma.

14. **Prof_Turma_Disc:** Aqui são registradas as associações entre professores e as disciplinas ministradas em cada turma.

15. **Aulas:** Esta tabela registra as aulas ministradas, contendo informações como a turma disciplina associada, data, hora de início e fim da aula, e número da aula.

16. **Bimestre:** Aqui são cadastrados os diferentes bimestres do ano letivo, incluindo descrição, valor e média de aprovação.

17. **Aluno_Ano_Letivo:** Esta tabela associa os alunos aos anos letivos em que estão matriculados, indicando também o status de matrícula de cada aluno em determinado ano letivo.

18. **Aluno_Disciplinas:** Nesta tabela são associados os alunos às disciplinas de cada ano letivo em que estão matriculados, incluindo o status de matrícula do aluno em cada disciplina.

19. **Frequencia:** Aqui são registradas as frequências dos alunos em cada aula, indicando se o aluno esteve presente ou ausente.

20. **Notas:** Esta tabela registra as notas dos alunos em cada disciplina e bimestre, contendo informações como id do aluno, ano letivo, disciplina, bimestre e nota.

***

## Views

Sobre as views criadas, pensamos em 3 especificas relacionadas ao escopo do projeto. O arquivo de criação das views pode ser acessado com esse [link](Preparação/)

- 1º é sobre o histórico geral do aluno e considera os seguintes dados no geral: nome do aluno, disciplina, curso, serie, turma, turno, ano, status da matricula, nota 1º Bimestre, nota 2º Bimestre, nota 3º Bimestre, nota 4º Bimestre, Qnte. de Presenças e Faltas.

- 2º é sobre a relação aluno-nota por disciplina, e uma coluna informando se o aluno está acima ou abaixo da média das notas nos bimestres.
    
- 3º é sobre os dados de cada um dos responsáveis, considerando os seguintes campos principalmente: nome do resposável, telefone, email, nome do aluno, curso, serie, turma, turno, ano e status da matricula.

- 4º é sobre a relação aluno-nota por professor, o que trás essas colunas no geral: curso, serie, turma, turno, ano, disciplina, nome_professor, bimestre, nota, status da matricula.
 

PS: Lembrando que essas são apenas 4 das muitas views possiveis de serem criadas pensando no banco de dados.
