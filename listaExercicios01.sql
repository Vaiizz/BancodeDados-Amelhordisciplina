SELECT titulo FROM livros;

SELECT nome FROM autores WHERE nascimento < '1900-01-01';

SELECT titulo FROM livros
JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';

SELECT alunos.nome FROM alunos
JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE matriculas.curso = 'Engenharia de Software';

SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto;

SELECT autores.nome, COUNT(livros.id) AS total_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome;

SELECT curso, COUNT(*) AS total_alunos
FROM matriculas
GROUP BY curso;

SELECT produto, AVG(receita) AS media_receita
FROM vendas
GROUP BY produto;

SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
HAVING SUM(receita) > 10000;

SELECT autores.nome
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
HAVING COUNT(livros.id) > 2;

SELECT autores.nome AS autor, livros.titulo AS livro
FROM livros
JOIN autores ON livros.autor_id = autores.id;

SELECT alunos.nome AS aluno, matriculas.curso
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT autores.nome AS autor, COALESCE(livros.titulo, 'Nenhum livro publicado') AS livro 
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;

SELECT alunos.nome AS aluno, COALESCE(matriculas.curso, 'Nenhum aluno matriculado') AS curso
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;
