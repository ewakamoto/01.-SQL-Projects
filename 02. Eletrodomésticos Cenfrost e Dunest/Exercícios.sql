01.	Selecione todos os dados da tabela vendas:
SELECT *
FROM vendas;
USE eletrodomésticos;
-----------------------------------------------------------------------
02.	Descubra os nomes e os preços de todos os produtos da tabela produtos: 
SELECT nome, preco
FROM produtos;
USE eletrodomésticos;
-----------------------------------------------------------------------
03.	Descubra apenas os clientes que moram na cidade de "Campinas":
SELECT nome_compl, cidade
FROM clientes
WHERE cidade = 'Campinas';
USE eletrodomésticos;
------------------------------------------------------------------------
04.	 Ache todos os produtos da categoria "Geladeira":
SELECT *
FROM produtos
WHERE categoria = 'Geladeira';
USE eletrodomésticos;
------------------------------------------------------------------------
05.	 Mostre as avaliações de produtos com nota maior ou igual a 4:
SELECT *
FROM avaliacoes
WHERE nota >= 4;
USE eletrodomésticos;
-----------------------------------------------------------------------
06.	 Mostre todas as vendas realizadas após "2024-01-01":
SELECT *
FROM vendas
WHERE data_venda > '2024-01-01';
USE eletrodomésticos;
------------------------------------------------------------------------
07.	 Encontre todos os produtos da marca "Dunest" com preço inferior a 2000:
SELECT *
FROM produtos
WHERE marca = 'Dunest' AND preco < 2000;
USE eletrodomésticos;
-------------------------------------------------------------------------
08.	 Liste os clientes com e-mails que terminam em "@dunest.com":
SELECT *
FROM clientes
WHERE email LIKE '%@dunest.com';
USE eletrodomésticos;
-------------------------------------------------------------------------
09.	 Selecione as avaliações feitas em "2024-09-10":
SELECT *
FROM avaliacoes
WHERE data_aval = '2024-09-10';
USE eletrodomésticos;
-------------------------------------------------------------------------
10.	Mostre as vendas de produtos com IDs entre 10 e 20:
SELECT *
FROM produtos
WHERE ID BETWEEN 10 AND 20; 
USE eletrodomésticos;
-------------------------------------------------------------------------
11.	Encontre produtos lançados em 2023: 
SELECT *
FROM produtos
WHERE YEAR(data_lancamento) = 2023;
USE eletrodomésticos;
--------------------------------------------------------------------------
12.	 Liste todos os produtos que não são brancos:
SELECT *
FROM produtos
WHERE NOT cor = 'Branca';
USE eletrodomésticos;
---------------------------------------------------------------------------
13.	 Liste os clientes cujo nome começa com "A":
SELECT *
FROM clientes
WHERE nome_compl LIKE 'A%';
USE eletrodomésticos;
---------------------------------------------------------------------------
14.	 Selecione as vendas cujo valor total é maior que 3000:
SELECT *
FROM vendas
WHERE valor_total > 3000; 
USE eletrodomésticos;
--------------------------------------------------------------------------
15.	 Mostre os nomes dos produtos com preços acima de 2500:
SELECT nome, preco
FROM produtos
WHERE preco > 2500;
USE eletrodomésticos;
-------------------------------------------------------------------------
16.	 Encontre clientes cujo telefone comece com "92":
SELECT *
FROM clientes
WHERE telefone LIKE '92%';
USE eletrodomésticos;
--------------------------------------------------------------------------
17.	 Liste todos os dados de avaliações com notas inferiores a 3: 
SELECT *
FROM avaliacoes
WHERE nota < 3; 
USE eletrodomésticos;
--------------------------------------------------------------------------
18.	 Mostre as vendas feitas no mês de setembro de qualquer ano: 
SELECT *
FROM vendas
WHERE MONTH (data_venda) = 9;
USE eletrodomésticos;
--------------------------------------------------------------------------
19.	 Liste os produtos que possuem "super" no nome:
SELECT *
FROM produtos
WHERE nome LIKE '%super%';
USE eletrodomésticos;
---------------------------------------------------------------------------
20.	 Selecione as vendas cuja quantidade é exatamente 2: 
SELECT *
FROM vendas
WHERE quantidade = 2; 
USE eletrodomésticos;
----------------------------------------------------------------------------
21.	Encontre o valor médio das vendas:
SELECT AVG (valor_total)
FROM vendas; 
USE eletrodomésticos;
----------------------------------------------------------------------------
22.	 Calcule o total de produtos vendidos (soma das quantidades):
SELECT SUM (quantidade)
FROM vendas; 
USE eletrodomésticos;
----------------------------------------------------------------------------
23.	 Determine a quantidade de clientes na tabela clientes:
SELECT COUNT (nome_compl)
FROM clientes;
USE eletrodomésticos;
-----------------------------------------------------------------------------
24.	 Mostre o produto mais caro da tabela produtos:
SELECT MAX(preco)
FROM produtos;
USE eletrodomésticos;
-----------------------------------------------------------------------------
25.	 Liste o total de vendas por produto (ID_produto): 
SELECT ID_produto, SUM(quantidade) AS total_vendas
FROM vendas
GROUP BY ID_produto
ORDER BY total_vendas DESC;
USE eletrodomésticos;
-----------------------------------------------------------------------------
26.	 Calcule a média de preços de produtos por categoria:
SELECT AVG(preco)
FROM produtos
GROUP BY categoria; 
USE eletrodomésticos;
------------------------------------------------------------------------------
27.	 Determine o preço médio por cor dos produtos:
SELECT AVG(preco) AS cor_preco
FROM produtos
GROUP BY cor;
USE eletrodomésticos;
------------------------------------------------------------------------------
28.	 Liste todos os produtos do arquivo estoque.csv com quantidade inferior a 50:
SELECT *
FROM estoque
WHERE quantidade < 50;
USE eletrodomésticos;
------------------------------------------------------------------------------
29.	 Calcule a quantidade total de produtos disponíveis em estoque:
SELECT SUM(quantidade)
FROM estoque;
USE eletrodomésticos;
------------------------------------------------------------------------------
30.	 Retorne o nome dos produtos vendidos no arquivo vendas.csv: 
SELECT p.nome, p.ID
FROM produtos AS p
LEFT JOIN vendas ON p.ID = p.nome;
USE eletrodomésticos;
-----------------------------------------------------------------------------
31.	Retorne os nomes dos produtos que nunca foram vendidos:
SELECT p.nome
FROM produtos AS p
LEFT JOIN vendas AS v
ON p.ID = v.ID_produto
WHERE v.ID_produto IS NULL;
------------------------------------------------------------------------------
32.	Liste as avaliações feitas para produtos com quantidade em estoque menor que 20: 
SELECT a.nota, a.ID_produto, e.quantidade
FROM avaliacoes AS a
LEFT JOIN estoque AS e
ON a.ID_produto = e.ID_produto
WHERE e.quantidade < 20;
------------------------------------------------------------------------------
