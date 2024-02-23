# Projeto Banco de Dados - Escola

***

<p style="text-align:center;">
<img src='https://img.freepik.com/vetores-premium/exterior-do-edificio-da-escola-moderna-bem-vindo-de-volta-a-escola-arquitetura-educacional-do-ensino-medio_625536-384.jpg?w=1380' width=600>
</p>


Esse repositório é referente ao projeto de Banco de Dados do curso de Engenheiro de dados da ADA Tech Santander Coders, utilizando o PostgreSQL como banco de dados. O objetivo principal do projeto é criar uma base de dados com potencial de ser aplicada em um contexto de negócios real e tenha utilidade prática.

Em meio a tantas opções, o grupo optou por desenvolver uma estrutura de banco de dados para a gestão de dados de uma escola, considerando o 1º ao 9º ano do ensino fundamental. Para isso, é necessário armazenar dados sobre alunos, professores, aulas, turmas, séries e outros aspectos relacionados.

Para a implementação inicial do projeto, utilizamos o draw.io para o desenho do diagrama de entidade-relacionamento, devido ele ser online e permitir a iteração multiusuario, e o PostgreSQL para a criação, população das tabelas, criação de Views e execução de consultas SQL.


Os dados utilizados para população são fictícios, servindo apenas como exemplos para ilustrar o funcionamento do projeto.

***

## Tabelas

Pensando na escola, algumas tabelas são imprescindiveis. Alunos, professores, disciplinas, turmas, séries, ano letivo, notas, frequência.

No entanto, foram elaboradas tabelas de relacionamento entre entidades para aprimorar a interação no banco de dados. Por exemplo, a tabela turmas_disciplinas associa todas as disciplinas a cada turma, enquanto a turma_ano_letivo relaciona todas as turmas a um determinado ano letivo. Da mesma forma, a tabela alunos_disciplina estabelece as conexões entre cada aluno e suas disciplinas correspondentes, e assim por diante.

Inicialmente utilizamos o draw.io como ferramenta inicial de modelagem, e posteriormente o Postgres para concretizar o modelo de entidades e relacionamentos. Assim, foi possível criar o diagrama de entidade-relacionamento a seguir para exemplificar o projeto. Você pode acessá-lo neste [link](images/Modelo_de_Dados.pgerd.png):

<p style="text-align:center;">
<img src='https://raw.githubusercontent.com/RafaelQSantos-RQS/MySchoolDatabase/main/images/Modelo_de_Dados.pgerd.png'>
</p>

Tendo esse plano desenhado, coube a criação de tabelas no PostgresSQL, respeitando os tipos de cada um dos atributos, assim como as ligações entre chaves primárias e estrangeiras. O arquivo de criação das tabelas no formado SQL está presente nesse [link](Preparação/Create%20Tables.sql).

Sobre a população, foram feitas diretamente no arquivo SQL presente nesse [link](Preparação/Insert%20Data.sql). Lembrando, os dados utilizados são ficticios montados pela própria equipe para fins didáticos.

***

## Consultas

***

## Insights
