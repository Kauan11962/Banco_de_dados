create database loja_online;
use loja_online;

create table clientes
(
	id_clientes int primary key auto_increment not null,
    nome varchar(100) not null,
    email varchar(100) not null,
    data_nascimento date
);

create table produtos
(
	id_produtos int primary key auto_increment not null,
    nome varchar(100) not null,
    preco decimal(10,2),
    estoque int(11),
    data_cadastro date
);

create table vendas
(
	id_vendas int primary key auto_increment not null,
    id_clientes int,
    id_produtos int,
    foreign key (id_clientes) references clientes(id_clientes),
    foreign key (id_produtos) references produtos(id_produtos),
    quantidade int(11),
    data_venda datetime
);

-- Inserindo produtos
INSERT INTO produtos (id_produtos, nome, preco, estoque, data_cadastro) VALUES
(1, 'Smartphone X', 1999.99, 50, '2023-01-15'),
(2, 'Laptop Pro', 3499.99, 30, '2023-02-01'),
(3, 'Fones Bluetooth', 299.99, 100, '2023-02-15'),
(4, 'Smartwatch', 799.99, 40, '2023-03-01'),
(5, 'Tablet Ultra', 1299.99, 25, '2023-03-15'),
(6, 'Câmera Digital', 899.99, 20, '2023-04-01'),
(7, 'Caixa de Som Portátil', 249.99, 60, '2023-04-15'),
(8, 'Monitor 4K', 1599.99, 15, '2023-05-01'),
(9, 'Teclado Mecânico', 399.99, 45, '2023-05-15'),
(10, 'Mouse Gamer', 199.99, 75, '2023-06-01');

-- Inserindo clientes
INSERT INTO clientes (id_clientes, nome, email, data_nascimento) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', '1985-03-10'),
(2, 'Carlos Oliveira', 'carlos.oliveira@email.com', '1990-07-22'),
(3, 'Mariana Santos', 'mariana.santos@email.com', '1988-11-05'),
(4, 'Pedro Souza', 'pedro.souza@email.com', '1995-01-30'),
(5, 'Juliana Lima', 'juliana.lima@email.com', '1992-09-15'),
(6, 'Fernando Costa', 'fernando.costa@email.com', '1987-06-18'),
(7, 'Camila Rodrigues', 'camila.rodrigues@email.com', '1993-04-25'),
(8, 'Ricardo Almeida', 'ricardo.almeida@email.com', '1991-08-12'),
(9, 'Beatriz Ferreira', 'beatriz.ferreira@email.com', '1989-12-03'),
(10, 'Gabriel Martins', 'gabriel.martins@email.com', '1994-02-28');

-- Inserindo vendas
INSERT INTO vendas (id_vendas, id_produtos, id_clientes, quantidade, data_venda) VALUES
(1, 1, 3, 1, '2023-06-15 10:30:00'),
(2, 2, 5, 1, '2023-06-16 14:45:00'),
(3, 3, 2, 2, '2023-06-17 09:15:00'),
(4, 4, 7, 1, '2023-06-18 16:20:00'),
(5, 5, 1, 1, '2023-06-19 11:00:00'),
(6, 6, 9, 1, '2023-06-20 13:30:00'),
(7, 7, 4, 2, '2023-06-21 15:45:00'),
(8, 8, 6, 1, '2023-06-22 10:00:00'),
(9, 9, 8, 1, '2023-06-23 12:15:00'),
(10, 10, 10, 3, '2023-06-24 17:30:00');

-- EX1
CREATE VIEW vw_valor_total_venda AS
SELECT 
    v.id_vendas AS id_vendas,
    p.nome AS produto,
    v.quantidade,
    p.preco,
    (v.quantidade * p.preco) AS valor_total
FROM vendas v
JOIN produtos p ON v.id_produtos = p.id_produtos;

-- EX2
CREATE VIEW vw_venda_desconto AS
SELECT 
    v.id_vendas AS id_vendas,
    p.nome AS produto,
    v.quantidade,
    p.preco,
    (v.quantidade * p.preco) AS valor_total,
    CASE 
        WHEN (v.quantidade * p.preco) > 1000 THEN (v.quantidade * p.preco) * 0.9
        ELSE (v.quantidade * p.preco)
    END AS valor_com_desconto
FROM vendas v
JOIN produtos p ON v.id_produtos = p.id_produtos;

-- EX3
CREATE VIEW vw_produtos_codigo_promocional AS
SELECT 
    p.id_produtos,
    UPPER(p.nome) AS nome_maiusculo,
    CONCAT(LEFT(p.nome, 3), RIGHT(p.id_produtos, 2)) AS codigo_promocional
FROM produtos p;

-- EX4
CREATE VIEW vw_venda_idade_trimestre AS
SELECT 
    v.id_vendas AS id_vendas,
    c.nome AS cliente,
    p.nome AS produto,
    v.data_venda,
    TIMESTAMPDIFF(YEAR, c.data_nascimento, v.data_venda) AS idade_cliente,
    QUARTER(v.data_venda) AS trimestre_venda
FROM vendas v
JOIN clientes c ON v.id_clientes = c.id_clientes
JOIN produtos p ON v.id_produtos = p.id_produtos;
