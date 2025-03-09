01.	 Selecione todas as colunas da tabela salários: 
SELECT *
FROM salários;
USE salário
----------------------------------------------------------------------------
02.	 Selecione os funcionários com salários superiores a 5000: 
SELECT *
FROM salários
WHERE Salary > 5000;
USE salário
-----------------------------------------------------------------------------
03.	 Procure os salários dos funcionários entre 100.000 e 150.000:
SELECT *
FROM salários
WHERE Salary BETWEEN 100000 AND 150000;
USE salario
------------------------------------------------------------------------------
04.	 Liste número de funcionários por gênero:
SELECT COUNT(*)
FROM salários
GROUP BY Gender; 
USE salario  
-------------------------------------------------------------------------------
05.	 Encontre o salário mínimo e máximo:      
SELECT MIN(Salary)
FROM salários;
USE salario 

SELECT MAX(Salary)
FROM salários;
USE salario     
---------------------------------------------------------------------------------               
06.	  Encontre os funcionários cujo salário é maior que a média geral da empresa:
SELECT *
FROM salários
WHERE Salary > (SELECT AVG(Salary) FROM salários);
USE salario;
