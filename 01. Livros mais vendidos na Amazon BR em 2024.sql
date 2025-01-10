CREATE DATABASE IF NOT EXISTS livros24;
USE livros24; 

CREATE TABLE topbooks24_amzbr(

   id INT PRIMARY KEY,
   nome VARCHAR(200), -- Título do livro traduzido em português
   valor DECIMAL(10,2), -- Valores sempre mudam no Amazon
   autor VARCHAR(50),
   ano_publicacao INT, -- Ano de publicação do livro traduzido
   idioma_original VARCHAR(50), 
   editora VARCHAR(50), -- Editora que publicou no Brasil
   num_pags INT -- Páginas do livro traduzido
   );

   INSERT INTO topbooks24_amzbr (id, nome, valor, autor, ano_publicacao, idioma_original, editora, num_pags)
   VALUES 
      (1, 'Café com Deus Pai 2025',73.00,'Júnior Rostirola',2024,'Português','Vélos',424),
      (2, 'A Biblioteca da Meia-Noite',43.70,'Matt Haig',2021,'Inglês','Bertrand Brasil',308),
      (3, 'É Assim Que Acaba',40.74,'Colleen Hoover',2018,'Inglês','Galera Record',368),
      (4, 'É Assim Que Começa',41.93,'Colleen Hoover',2022,'Inglês','Galera Record',336),
      (5, 'O Homem Mais Rico da Babilônia',22.70,'George S.Clason',2017,'Inglês','HarperCollins',160),
      (6, 'Tudo é Rio',47.40,'Carla Madeira',2021,'Português','Record',210),
      (7, 'A Psicologia Financeira',31.97,'Morgan Housel',2021,'Inglês','HarperCollins',304),
      (8, 'Verity',39.53,'Colleen Hoover',2020,'Inglês','Galera Record',320),
      (9, 'Perigoso!',14.90,'Tim Warnes',2022,'Inglês','Ciranda Cultural',32),
      (10, 'Como Fazer Amigos e Influenciar as Pessoas',40.73,'Dale Carnegie',2019,'Inglês','Sextante',256),
      (11, 'Hábitos Atômicos: Um Método Fácil e Comprovado de Criar Bons Hábitos e Se Livrar dos Maus.',42.63,'James Clear',2019,'Inglês','Alta Life',332),
      (12, 'Os segredos da mente milionária: Aprenda a enriquecer mudando seus conceitos sobre o dinheiro e adotando os hábitos das pessoas bem-sucedidas',34.60,'T. Harv Eker',2006,'Inglês','Sextante',176),
      (13, 'O livro que você gostaria que seus pais tivessem lido: (e seus filhos ficarão gratos por você ler)',44.78,'Philippa Perry',2020,'Inglês','Fontanar',320),
      (14, 'Nada pode me ferir',42.45,'David Goggins',2023,'Inglês','Sextante',320),
      (15, 'Forte: Devocionais para uma vida poderosa e apaixonada',28.55,'Lisa Bevere',2020,'Inglês','Thomas Nelson',208),
      (16, 'A empregada', 41.93,'Freida McFadden',2023,'Inglês','Arqueiro',304),
      (17, 'O Pequeno Príncipe - Edição de Luxo Almofadada',19.09,'Antoine de Saint-Exupéry',2023,'Francês','Garnier',96),
      (18, 'O Deus que destrói sonhos',22.87,'Rodrigo Bibo',2021,'Português','Thomas Nelson',160),
      (19, 'A paciente silenciosa',44.98,'Alex Michaelides',2019,'Inglês','Record',364),
      (20, 'A hora da estrela: Edição comemorativa',23.27,'Clarice Lispector',2020,'Português','Rocco',88),
      (21, 'Mais esperto que o Diabo: O mistério revelado da liberdade e do sucesso',29.90,'Napoleon Hill',2014,'Inglês','Citadel',208),
      (22, 'A coragem de ser imperfeito: Como aceitar a própria vulnerabilidade, vencer a vergonha e ousar ser quem você é',34.60,'Brené Brown',2016,'Inglês','Sextante',208),
      (23, 'Imperfeitos',21.78,'Christina Lauren',2022,'Inglês','Faro Editorial',256),
      (24, 'Essencialismo: A disciplinada busca por menos',41.53,'Greg McKeown',2015,'Inglês','Sextante',272),
      (25, 'Os sete maridos de Evelyn Hugo',33.90,'Taylor Jenkins Reid',2019,'Inglês','Paralela',360);

SELECT *
      FROM topbooks24_amzbr; 
