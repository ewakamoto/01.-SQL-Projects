Exercícios: 
-- 1. Encontre todos os livros com valor superior a 40.00
SELECT *
FROM topbooks24_amzbr
WHERE valor > 40.00;

-- 2. Mostre os livros em ordem decrescente de valor
SELECT *
FROM topbooks24_amzbr
ORDER BY valor DESC; 

-- 3. Encontre os livros publicados em 2021
SELECT *
FROM topbooks24_amzbr
WHERE ano_publicacao = 2021;

-- 4. Ache o livro mais caro
SELECT MAX(valor)
FROM topbooks24_amzbr;

-- 5. Encontre o livro mais barato
SELECT MIN(valor)
FROM topbooks24_amzbr;

-- 6. Calcule a média dos preços dos livros
SELECT AVG(valor)
FROM topbooks24_amzbr;

-- 7. Quais livros os quais o idioma original é português
SELECT COUNT(idioma_original)
FROM topbooks24_amzbr
WHERE idioma_original = 'Português';

-- 8. Exiba a quantidade total de páginas dos livros em inglês
SELECT SUM(num_pags)
FROM topbooks24_amzbr
WHERE idioma_original = 'Inglês';

-- 9. Encontre a quantidade de livros de Colleen Hoover na tabela
SELECT *
FROM topbooks24_amzbr
WHERE autor = 'Colleen Hoover';

-- 10. Calcule o preço médio dos livros em português
SELECT AVG(valor)
FROM topbooks24_amzbr
WHERE idioma_original = 'Português';

-- 11. Identifique os livros com mais de 200 páginas e preço abaixo de 50
SELECT nome, num_pags, valor
FROM topbooks24_amzbr
WHERE valor < 50.00 AND num_pags > 200;

-- 12. Ache os livros com o nome iniciando com 'A'.
SELECT nome
FROM topbooks24_amzbr
WHERE nome LIKE 'A%';

-- 13. Escolha os livros da editora 'Sextante'
SELECT nome
FROM topbooks24_amzbr
WHERE editora = 'Sextante';

-- 14. Exiba os livros em ordem alfabética de título.
SELECT nome
FROM topbooks24_amzbr
ORDER BY nome ASC; 

-- 15. Calcule o preço total de livros publicados após 2020.
SELECT SUM(valor)
FROM topbooks24_amzbr
WHERE ano_publicacao > 2020;

-- 16. Ache os livros com preço abaixo da média.
SELECT *
FROM topbooks24_amzbr
WHERE valor < (SELECT AVG(valor) FROM topbooks24_amzbr);

-- 17. Determine o número de livros por ano de publicação.
SELECT ano_publicacao, COUNT(*) AS livros
FROM topbooks24_amzbr
GROUP BY ano_publicacao
ORDER BY ano_publicacao;

-- 18. Encontre o preço total dos livros em cada idioma.
SELECT idioma_original, SUM(valor) AS total
FROM topbooks24_amzbr
GROUP BY idioma_original
ORDER BY total;

-- 19.  Calcule o preço médio dos livros por editora.
SELECT editora, AVG(valor) AS preço_médio
FROM topbooks24_amzbr
GROUP BY editora
ORDER BY preço_médio;

-- 20.  Encontre os livros com número de páginas divisível por 8.
SELECT *
FROM topbooks24_amzbr
WHERE num_pags % 8;
