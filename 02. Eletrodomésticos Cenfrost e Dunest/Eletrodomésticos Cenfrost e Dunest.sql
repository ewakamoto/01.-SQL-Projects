CREATE DATABASE IF NOT EXISTS eletrodomésticos; 
USE eletrodomésticos; 

USE eletrodomésticos;

CREATE TABLE produtos(

    ID INT PRIMARY KEY NOT NULL,
    nome VARCHAR(250) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    data_lancamento DATE NOT NULL,
    cor VARCHAR(50) NOT NULL
);

CREATE TABLE vendas(
    ID_venda INT PRIMARY KEY NOT NULL,
    ID_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_produto) REFERENCES produtos(ID)
);

CREATE TABLE clientes(
    ID_cliente INT PRIMARY KEY NOT NULL,
    nome_compl VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    telefone VARCHAR(9) NOT NULL,
    cidade VARCHAR(100) NOT NULL
    
    );
    
    CREATE TABLE avaliacoes(
    ID_aval INT PRIMARY KEY NOT NULL,
    ID_produto INT NOT NULL,
    ID_cliente INT NOT NULL,
    nota INT NOT NULL,
    data_aval DATE NOT NULL,
    FOREIGN KEY (ID_produto) REFERENCES produtos(ID),
    FOREIGN KEY (ID_cliente) REFERENCES clientes(ID_cliente)
);

CREATE TABLE estoque(
    ID_produto INT NOT NULL,                                                                             
    quantidade INT,
    PRIMARY KEY (ID_produto),
    FOREIGN KEY (ID_produto) REFERENCES produtos(ID)
);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO produtos (ID, nome, categoria, marca, preco, data_lancamento, cor)
  
VALUES
(1, 'Geladeira Dunest Frost Free 350L', 'Geladeira', 'Dunest', 2361.11, '2023-05-24', 'Branca'),
(2, 'Geladeira Cenfrost Frost Free Duplex com 500L', 'Geladeira', 'Cenfrost', 3456.67, '2024-01-01', 'Cinza'), 
(3, 'Geladeira Dunest Frost Free 450L com supergaveta para hortifruti', 'Geladeira', 'Dunest', 3000.00, '2023-12-31', 'Branca'),
(4, 'Geladeira Cenfrost Frost Free 250L com supercongelador', 'Geladeira', 'Cenfrost', 1756.34, '2024-08-05', 'Branca'),
(5, 'Freezer Horizontal Dunest 142L', 'Freezer', 'Dunest', 1772.00, '2022-09-11', 'Branca'),
(6, 'Freezer Horizontal Cenfrost Duas Portas 234L', 'Freezer', 'Cenfrost', 2299.18, '2022-04-23', 'Cinza'),
(7, 'Freezer Vertical Dunest 100L', 'Freezer', 'Dunest', 1750.00, '2022-03-01', 'Branca'),
(8, 'Freezer Vertical Cenfrost 150L', 'Freezer', 'Cenfrost', 1900.00, '2022-08-05', 'Branca'),
(9, 'Ar-Condicionado Janela 12350 EconoDunest', 'Ar-Condicionado', 'Dunest', 2492.00, '2023-12-11', 'Cinza'),
(10, 'Ar-Condicionado Janela 10000 FrostMize', 'Ar-Condicionado', 'Cenfrost', 2000.00, '2022-09-22', 'Branca'),
(11, 'Ar-Condicionado Janela 5600 EconoNest', 'Ar-Condicionado', 'Dunest', 1750.31, '2023-06-25', 'Branca'),
(12, 'Ar-Condicionado Split Inverter Cenfrost', 'Ar-Condicionado', 'Cenfrost', 2099.00, '2024-09-17', 'Cinza'),
(13, 'Fogão 5 Bocas Cooknest', 'Fogão', 'Dunest', 1851.55, '2023-07-27', 'Preta'),
(14, 'Fogão 4 Bocas com mesa de vidro Cookfrost', 'Fogão', 'Cenfrost', 1340.22, '2024-03-04', 'Preta'),
(15, 'Fogão 4 Bocas Dunest com mesa de vidro com botões removíveis', 'Fogão', 'Dunest', 1849.00, '2024-02-29', 'Cinza'),
(16, 'Fogão 5 Bocas Cookfrost com mesa de vidro e timer digital', 'Fogão', 'Cenfrost', 1999.99, '2023-11-01', 'Preta'),
(17, 'Micro-Ondas Dunest 30L espelhado com função descongelar', 'Micro-Ondas', 'Dunest', 718.77, '2024-06-12', 'Cinza'),
(18, 'Micro-Ondas Cenfrost 20L com menu fácil', 'Micro-Ondas', 'Cenfrost', 563.99, '2024-02-09', 'Preta'),
(19, 'Micro-Ondas Dunest 25L com função descongelar e menu fácil', 'Micro-Ondas', 'Dunest', 888.88, '2024-12-10', 'Preta'),
(20, 'Micro-Ondas Cenfrost 32L com menu fácil', 'Micro-Ondas', 'Cenfrost', 749.00, '2024-07-07', 'Preta'),
(21, 'Cooktop 5 Bocas com controle fácil e acendimento automático Dunest', 'Cooktop', 'Dunest', 629.00, '2024-08-03', 'Preta'),
(22, 'Cooktop 4 Bocas Cookfrost', 'Cooktop', 'Cenfrost', 500.00, '2022-09-09', 'Preta'),
(23, 'Cooktop 5 Bocas Dunest Essencial', 'Cooktop', 'Dunest', 600.00, '2022-12-23', 'Preta'),
(24, 'Cooktop 4 Bocas Cookfrost Essencial', 'Cooktop', 'Cenfrost', 450.75, '2022-11-01', 'Preta'),
(25, 'Forno de embutir elétrico 30L com timer Dunest', 'Forno', 'Dunest', 1000.00, '2022-03-09', 'Cinza'),
(26, 'Forno de embutir elétrico 50L com timer sonoro CookFrost', 'Forno', 'Cenfrost', 1766.66, '2024-07-13', 'Cinza'),
(27, 'Forno de embutir elétrico 85L com grill Cooknest', 'Forno', 'Dunest', 1999.99, '2024-04-30', 'Preta'),
(28, 'Forno de embutir elétrico 47L com grill CookFrost', 'Forno', 'Cenfrost', 1675.00, '2024-05-05', 'Preta'),
(29, 'Coifa de Parede Dunest Inox 4 Bocas 50 cm', 'Coifa', 'Dunest', 1137.00, '2023-01-09', 'Cinza'),
(30, 'Coifa de Parede Cooknest Inox 5 Bocas 90 cm', 'Coifa', 'Cenfrost', 1619.00, '2024-06-05', 'Cinza'),
(31, 'Coifa de Parede Dunest Inox 6 Bocas 80 cm', 'Coifa', 'Dunest', 1297.00, '2024-02-01', 'Cinza'),
(32, 'Coifa de Parede Cooknest Inox 7 Bocas 70cm', 'Coifa', 'Cenfrost', 1500.05, '2022-08-09', 'Cinza'),
(33, 'Purificador de água refrigerado Dunest', 'Purificador', 'Dunest', 589.00, '2022-07-09', 'Cinza'),
(34, 'Purificador de água refrigerado Cenfrost com proteção antibactérias', 'Purificador', 'Cenfrost', 649.00, '2023-12-11', 'Branca'),
(35, 'Purificador de água refrigerado Dunest com 3 níveis de temperatura', 'Purificador', 'Dunest', 699.00, '2022-03-13', 'Vermelha'),
(36, 'Purificador de água refrigerado Cenfrost', 'Purificador', 'Cenfrost', 450.00, '2023-12-15', 'Preta');


SELECT *
FROM produtos
------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO estoque (ID_produto, quantidade)

VALUES

(1, 100),
(2, 150),
(3, 75),
(4, 50),
(5, 20),
(6, 25),
(7, 40),
(8, 45),
(9, 10),
(10, 15),
(11, 30),
(12, 20),
(13, 35),
(14, 14),
(15, 26),
(16, 34),
(17, 12),
(18, 23),
(19, 11),
(20, 47),
(21, 66),
(22, 33),
(23, 42),
(24, 19),
(25, 49), 
(26, 13),
(27, 38),
(28, 21),
(29, 28),
(30, 17), 
(31, 5),                      
(32, 3),
(33, 9),
(34, 2),
(35, 6),
(36, 7);

SELECT *
FROM estoque; 
------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO clientes (ID_cliente, nome_compl, email, telefone, cidade)

VALUES

(50, 'Ana da Silva', 'anasilva@dunest.com',922223333, 'SP'),
(51, 'Breno Munhoz del Moreno', 'brenomoreno@cenfrost.com',923456789, 'Mogi das Cruzes'),
(52, 'Carla Solange de Melo', 'carlamelo@dunest.com', 987654321, 'Campinas'),
(53, 'Daniel Bastos do Lopes Santos', 'danielsantos@cenfrost.com', 912345678, 'Suzano'),
(54, 'Elisa Mourinho', 'elisamourinho@dunest.com', 943218765, 'Piracicaba'),
(55, 'Fábio Cerri de Almeida', 'fabiocerri@cenfrost.com', 987651234, 'Cordeirópolis'),
(56, 'Gustavo Maciel dos Sanches', 'gustavomaciel@dunest.com', 911223344, 'Cunha'),
(57, 'Helena Amaral Takeda', 'hamaral@cenfrost.com', 955667788, 'Assis'),
(58, 'Ícaro Lopes Mendes', 'icarolopes@dunest.com', 911112222, 'Ourinhos'),
(59, 'Juliana das Flores', 'julianaflores@cenfrost.com', 933334444, 'Caieiras'),
(60, 'Kelvin Scotts', 'kelvinscotts@dunest.com', 955556666, 'Itu'),
(61, 'Lara Souza Menezes', 'laramenezes@cenfrost.com', 977778888, 'Holambra'),
(62, 'Mário Gomes Abreu', 'marioabreu@dunest.com', 934345656, 'Registro'),
(63, 'Naiara Amorim Teixeira', 'nateixeira@cenfrost.com', 912123434, 'Sorocaba'),
(64, 'Olavo Jesus da Rocha', 'olavorocha@dunest.com', 945456767, 'Adamantina'), 
(65, 'Patrícia Avelar Borges', 'patavelar@cenfrost.com', 989891111, 'Araras'),
(66, 'Quintino Antunes', 'quiantunes@dunest.com', 922224444, 'Barueri'),
(67, 'Regiane Pereira Carvalho', 'regicarvalho@cenfrost.com', 933336666, 'Diadema'),
(68, 'Sérgio Gomes Contini', 'sergiogomes@dunest.com', 946527878, 'Guararema'),
(69, 'Thalita Duarte de Dutra', 'thalitadutra@cenfrost.com', 981817272, 'Igaratá'),
(70, 'Ulisses da Costa Rodrigues', 'ulissescosta@dunest.com', 973374121, 'Jales'),
(71, 'Vitória Rios Romanini', 'vitoriarios@cenfrost.com', 915153030, 'Olímpia'),
(72, 'William Vasconcelos Resende', 'williamresende@dunest.com', 960605050, 'Pedreira'),
(73, 'Xavieira Santana', 'xavierasantana@cenfrost.com', 925255050, 'Salto'),
(74, 'Yuri Saraiva Stein', 'yuristein@dunest.com', 945459090, 'Taubaté'),
(75, 'Zara Serafim','zaraserafim@cenfrost.com', 912122424, 'Santos');

SELECT *
FROM clientes;
-----------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO vendas (ID_venda, ID_produto, quantidade, data_venda, valor_total)

VALUES

(100, 4, 1, '2024-09-01', 1756.34),
(101, 4, 2, '2024-10-02', 3512.68),
(102, 11, 1, '2023-08-04', 1750.31),
(103, 18, 1, '2024-02-10', 563.99),
(104, 33, 2, '2023-01-12', 1178.00),
(105, 36, 3, '2024-12-31', 1350.00),
(106, 24, 1, '2023-03-28', 450.75),
(107, 4, 1, '2024-11-03', 1756.34),
(108, 19, 1, '2024-12-20', 888.88),
(109, 17, 1, '2024-07-22', 718.77),
(110, 2, 1, '2024-10-16', 3456.67),
(111, 6,, 1, '2023-06-09', 2299.18),
(112, 10, 1, '2022-12-21', 2000.00),
(113, 11, 1, '2023-12-05', 1750.31),
(114, 14, 1, '2024-05-29', 1340.22),
(115, 25, 1, '2022-04-17', 1000.00),
(116, 34, 1, '2024-07-13', 649.00),
(117, 35, 1, '2022-04-15', 699.00),
(118, 16, 1, '2024-06-19', 1999.99),
(119, 25, 1, '2022-10-06', 1000.00),
(120, 32, 1, '2022-09-20', 1500.05),
(121, 19, 1, '2024-12-22', 888.88),
(122, 3, 1, '2024-03-23', 3000.00),
(123, 5, 1, '2022-11-07', 1772.00),
(124, 22, 1, '2023-09-15', 500.00),
(125, 1, 1, '2023-06-22', 2361.11);

SELECT *
FROM vendas; 
-----------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO avaliacoes (ID_aval, ID_produto, ID_cliente, nota, data_aval)

VALUES

(200, 4, 50, 4, '2024-09-10'),
(201, 4, 51, 5, '2024-10-05'),
(202, 11, 52, 5, '2023-08-09'),
(203, 18, 53, 3, '2024-02-14'),
(204, 33, 54, 5, '2023-02-02'),
(205, 36, 55, 5, '2025-01-10'),
(206, 24, 56, 4, '2023-04-01'),
(207, 4, 57, 3, '2024-11-10'),
(208, 19, 58, 4, '2024-12-25'),
(209, 17, 59, 5, '2024-07-29'),
(210, 2, 60, 2, '2024-10-20'),
(211, 6, 61, 1, '2023-06-17'),
(212, 10, 62, 3, '2022-12-28'),
(213, 11, 63, 4, '2023-12-12'),
(214, 14, 64, 4, '2024-06-12'),
(215, 25, 65, 5, '2022-04-21'),
(216, 34, 66, 5, '2024-07-19'),
(217, 35, 67, 1, '2022-04-23'),
(218, 16, 68, 2, '2024-06-30'),
(219, 25, 69, 3, '2022-10-10'),
(220, 32, 70, 4, '2022-09-27'),
(221, 19, 71, 5, '2024-12-28'),
(222, 3, 72, 1, '2024-04-01'),
(223, 5, 73, 2, '2022-11-13'),
(224, 22, 74, 3, '2023-09-22'),
(225, 1, 75, 5, '2023-06-29')

SELECT *
FROM avaliações; 

