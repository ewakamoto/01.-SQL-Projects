1. Selecione todos os dados da tabela.
SELECT *
FROM salariosunesp;
USE salarios_unesp
------------------------------------------------------------------------
2.	Liste os servidores que possuem vencimento acima de 30000.
SELECT *
FROM salariosunesp
WHERE Vencimento > 30000; 
USE salarios_unesp
------------------------------------------------------------------------
3.	Liste os servidores que possuem um salário líquido acima de 40.000.
SELECT *
FROM salariosunesp
WHERE Salário > 40000;
USE salarios_unesp
------------------------------------------------------------------------
4.	Selecione os servidores cujo nome começa com "Z".
SELECT *
FROM salariosunesp
WHERE Nome LIKE 'Z%';
USE salarios_unesp
------------------------------------------------------------------------
5.	Calcule a média do salário líquido.
SELECT AVG(Salário)
FROM salariosunesp;
USE salarios_unesp
-------------------------------------------------------------------------
6.	Encontre o maior salário líquido.
SELECT MAX(Salário)
FROM salariosunesp;
USE salarios_unesp
-------------------------------------------------------------------------
7.	Descubra o menor vencimento.
SELECT MIN(Vencimento)
FROM salariosunesp;
USE salarios_unesp
--------------------------------------------------------------------------
8.	Conte quantos servidores existem na tabela.
SELECT COUNT(Nome)
FROM salariosunesp;
USE salarios_unesp
---------------------------------------------------------------------------
9.	Calcule o total de remuneração paga a todos os servidores.
SELECT SUM(Ganho)
FROM salariosunesp;
USE salarios_unesp
---------------------------------------------------------------------------
10.	 Encontre a média salarial por função.
SELECT Cargo, AVG(Salário)
FROM salariosunesp
GROUP BY Cargo;
USE salarios_unesp
----------------------------------------------------------------------------
11.	 Descubra quantos servidores possuem jornada inferior a 40 horas.
SELECT Nome
FROM salariosunesp
WHERE Jornada < 40;
USE salarios_unesp
------------------------------------------------------------------------------
12.	 Encontre o maior salário líquido por função.
SELECT Cargo, MAX(Salário)
FROM salariosunesp
GROUP BY Cargo;
USE salarios_unesp
-------------------------------------------------------------------------------
13.	 Liste os servidores cujo salário líquido é maior que a média de sua função.
SELECT * 
FROM salariosunesp 
WHERE Salário > (SELECT AVG(Salário) FROM salariosunesp);
USE salarios_unesp
--------------------------------------------------------------------------------
14.	 Exiba os servidores com os 10 maiores salários líquidos.
SELECT * 
FROM (
    SELECT *, RANK() OVER (ORDER BY Salário DESC) AS Ranking
    FROM salariosunesp
) AS temp
--------------------------------------------------------------------------------
15.	 Liste os servidores que ganham abaixo da média do salário líquido.
SELECT * 
FROM salariosunesp 
WHERE Salário < (SELECT AVG(Salário) FROM salariosunesp);
USE salarios_unesp;
---------------------------------------------------------------------------------
16.	 Calcule a média salarial por função utilizando a função OVER().
SELECT *, 
       AVG(Salário) OVER (PARTITION BY Cargo) AS Media_Salarial
FROM salariosunesp;
USE salarios_unesp
----------------------------------------------------------------------------------
17.	 Descubra os servidores com os maiores salários dentro de cada função.
SELECT *
FROM (
    SELECT *, 
           RANK() OVER (PARTITION BY Cargo ORDER BY Salário DESC) AS Ranking
    FROM salariosunesp
) AS temp
WHERE Ranking = 1;
USE salarios_unesp
----------------------------------------------------------------------------------
18.	 Liste os servidores cujo sobrenome terminam em “Silva”.
SELECT Nome
FROM salariosunesp
WHERE Nome LIKE "%Silva";
USE salarios_unesp
----------------------------------------------------------------------------------
19.	 Descubra o maior desconto.
SELECT MAX(Descontos)
FROM salariosunesp;
USE salarios_unesp
----------------------------------------------------------------------------------
20.	 Exiba o salário de cada servidor e a diferença para média geral.
SELECT *, 
       Salário - AVG(Salário) OVER () AS Diferenca
FROM salariosunesp;
USE salarios_unesp
-----------------------------------------------------------------------------------
