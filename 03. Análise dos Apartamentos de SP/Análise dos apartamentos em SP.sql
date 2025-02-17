01.	 Descubra os 10 primeiros registros
SELECT *
FROM apartamento_sp
LIMIT 10;
USE apartamentos
----------------------------------------------------------------------------
02.	 Ache os apartamentos com mais de 1 quarto
SELECT rooms
FROM apartamento_sp
WHERE rooms > 1;
USE apartamentos
-----------------------------------------------------------------------------
03.	 Mostre os apartamentos mais baratos
SELECT *
FROM apartamento_sp
ORDER BY apt_price ASC;
USE apartamentos
------------------------------------------------------------------------------
04.	 Filtre os preços dos aluguéis dos condomínios entre 200 e 650
SELECT condominium_fees
FROM apartamento_sp
WHERE condominium_fees BETWEEN 200 AND 600;
USE apartamentos
-------------------------------------------------------------------------------
05.	 Conte quantos apartamentos estão em Cambuci
SELECT COUNT(neighborhood)
FROM apartamento_sp
WHERE neighborhood = "Cambuci";
USE apartamentos
-------------------------------------------------------------------------------
06.	 Mostre o preço médio dos apartamentos
SELECT AVG(apt_price)
FROM apartamento_sp;
USE apartamentos
--------------------------------------------------------------------------------
07.	 Descubra o apartamento mais barato
SELECT MIN(apt_price)
FROM apartamento_sp;
USE apartamentos
----------------------------------------------------------------------------------
08.	 Descubra o apartamento mais caro
SELECT MAX(apt_price)
FROM apartamento_sp;
USE apartamentos
----------------------------------------------------------------------------------
09.	 Liste a quantidade de apartamentos por bairro
SELECT COUNT(neighborhood) 
FROM apartamento_sp
GROUP BY neighborhood;
USE apartamentos
-----------------------------------------------------------------------------------
10.	 Mostre a média de preço por bairro
SELECT AVG(apt_price), neighborhood
FROM apartamento_sp
GROUP BY neighborhood;
USE apartamentos
------------------------------------------------------------------------------------
11.	 Liste os apartamentos cujo preço está acima da média
SELECT * FROM apartamento_sp
WHERE apt_price > (SELECT AVG(apt_price) 
FROM apartamento_sp);
USE apartamentos
-------------------------------------------------------------------------------------
12.	 Adicione uma coluna com a posição de cada apartamento em relação ao preço dentro do bairro
SELECT neighborhood, apt_price, 
RANK() OVER (PARTITION BY neighborhood ORDER BY apt_price DESC) AS rank_preco 
FROM apartamento_sp;
USE apartamentos
--------------------------------------------------------------------------------------
