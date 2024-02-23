# Projeto Banco de Dados - Escola

***

<p style="text-align:center;">
<img src='https://img.freepik.com/vetores-premium/exterior-do-edificio-da-escola-moderna-bem-vindo-de-volta-a-escola-arquitetura-educacional-do-ensino-medio_625536-384.jpg?w=1380' width=600>
</p>


Esse repositório é referente ao projeto de Banco de Dados do curso de Engenheiro de dados da ADA Tech Santander Coders. O objetivo principal do projeto é ele ser possivel de ser aplicado para algum negócio e tenha utilidade prática.

Em meio a tantas opções, o grupo decidiu escolher trabalhar com a gestão de dados de uma escola, considerando o 1º ao 9º ano de ensino. Para isso, será preciso ter dados sobre alunos, professores, aulas, turmas, séries e muito mais.

Para o desenvolvimento proposto, foi utilizado o draw.io para desenho do diagrama de entidade relacionamento e o PostgreeSQL, tanto para criação e população das tabelas quanto para consultas SQL.

No caso, os dados usados para população são ficticios, apenas para exemplificar o funcionamento do projeto.

***

## Tabelas

Pensando na escola, algumas tabelas são imprescindiveis. Alunos, professores, disciplinas, turmas, séries, ano letivo, notas, frequência.

Contudo, foram criadas tabelas de relacionamento entre entidades para facilitar a comunicação do banco de dados. por exemplo, a tabela turmas_disciplinas vinculas todas as disciplinas para cada turma, turma_ano_letivo vincula todas as turmas por ano letivo, alunos_disciplina vinculam todas as disciplinas para cada aluno e por ai vai.

Utilizando o draw.io como base, foi possivel fazer o diagrama de entidade relacionamento a seguir para exemplificar, podendo ser acessada nesse [link](images/Modelo_de_Dados.pgerd.png):

<p style="text-align:center;">
<img src='https://raw.githubusercontent.com/RafaelQSantos-RQS/MySchoolDatabase/main/images/Modelo_de_Dados.pgerd.png'>
</p>

Tendo esse plano desenhado, coube a criação de tabelas no PostgreeSQL, respeitando os tipos de cada um dos atributos, assim como as ligações entre chaves primárias e estrangeiras. O arquivo no de criação das tabelas no formado SQL está presente nesse [link](Preparação/Create%20Tables.sql).

Sobre a população, foram feitas diretamente no arquivo SQL presente nesse [link](Preparação/Insert%20Data.sql). Lembrando, os dados utilizados são ficticios montados pela própria equipe para fins didáticos de como o modelo opera na prática.

***

## Consultas

***

## Insights
