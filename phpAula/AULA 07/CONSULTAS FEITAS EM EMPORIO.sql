-- consultas realizadas no emporio

use emporio_turquinho;
SELECT * FROM clientes;

SELECT nome, cidade, pais FROM clientes
order by pais;

-- A seguinte instrução SQL seleciona apenas os valores DISTINCT da 
-- coluna "País" na tabela "Clientes":
SELECT DISTINCT pais FROM clientes
order by pais desc;


/* ALIAS DE COLUNAS */
SELECT NOME AS USUARIO, CIDADE, PAIS FROM CLIENTES;

SELECT NOME AS N, CIDADE, PAIS, ENDERECO AS E FROM CLIENTES;

SELECT NOME, ENDERECO, CIDADE, PAIS, NOW() AS DATA_HORA FROM CLIENTES;

/* FILTRANDO DADOS COM WHERE E LIKE */
SELECT NOME, CIDADE, PAIS FROM CLIENTES;

/* FILTRANDO */
SELECT NOME, PAIS FROM CLIENTES
WHERE PAIS = 'BRAZIL';

SELECT * FROM CLIENTES;
SELECT NOME, PAIS FROM CLIENTES
WHERE PAIS = 'GERMANY';

SELECT NOME, ENDERECO FROM CLIENTES
WHERE PAIS = 'BRAZIL';

-- ordem descendente
SELECT NOME, CIDADE, PAIS FROM CLIENTES
WHERE CIDADE = 'JAU' OR PAIS ='BRAZIL'
ORDER BY CIDADE DESC;

-- A cláusula LIMIT  é usada para especificar o número de registros a serem retornados.
SELECT * FROM clientes
LIMIT 5;

-- A seguinte instrução SQL seleciona todos os clientes da tabela "Clientes",
-- classificados em ordem crescente pelo "País" e em ordem 
-- decrescente pela coluna "NomeDoCliente":
SELECT * FROM clientes
ORDER BY pais ASC, nome DESC;

-- Operadores na cláusula WHERE
SELECT * FROM produtos WHERE preco = 18;

SELECT * FROM produtos WHERE preco > 18
order by preco desc;

SELECT * FROM produtos WHERE preco <= 18
order by preco desc;

SELECT * FROM produtos WHERE preco <> 18
order by preco desc;

-- valor entre 50 e 60
SELECT * FROM produtos WHERE preco
BETWEEN 50 AND 60;

-- filtrar os clientes que comelam com S
SELECT * FROM clientes  WHERE
 cidade LIKE 's%';

-- caractere curinga _ substitui um caractere
SELECT * FROM CLIENTES WHERE
CIDADE LIKE '_a_';

SELECT * FROM clientes
WHERE cidade IN ('Paris','London');

SELECT * FROM CLIENTES
WHERE CIDADE IN ('SÃO PAULO', 'RIO DE JANEIRO');


/* UTILIZANDO O LIKE 
O LIKE   é usado em uma cláusula WHERE  para procurar
 um padrão especificado em uma coluna.
 CARACTER CORINGA % -> QUALQUER COISA */

SELECT * FROM clientes
where nome like 'a%';

select * from clientes 
where nome like 'w%';

-- A seguinte instrução SQL seleciona todos os clientes com um nome_contato 
-- que começa com "a" e termina com "o":
SELECT * FROM clientes
WHERE nome_contato LIKE 'a%o';

/* OPERADORES LÓGICOS 
OR -> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, 
BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
AND -> PARA QUE A SAIDA SEJA VERDADEIRA TODAS 
AS CONDICOES PRECISAM SER VERDADEIRAS.
*/
/* OR - OU */
SELECT * FROM clientes
WHERE pais = 'Brazil' AND cidade = 'São Paulo';

SELECT * FROM clientes
WHERE pais = 'Brazil' OR pais = 'Spain';

SELECT * FROM clientes
WHERE NOT pais = 'Brazil';

SELECT * FROM clientes
WHERE pais = 'Germany' AND (cidade = 'Berlin' OR cidade = 'Stuttgart');

/*A COUNT()função retorna o número de linhas que 
correspondem a um 
critério especificado.
Sintaxe COUNT()
SELECT COUNT(column_name)
FROM table_name
WHERE condition;*/

SELECT COUNT(*) AS 'Quantidade de Registros da Tabela Cliente'
 FROM CLIENTES;
 
select count(preco) as 'qde de produtos com preco =18' 
from produtos
where preco = 18;

select count(preco) as 'qde de produtos com preco>18'
from produtos
where preco > 18;

/*A AVG()função retorna o valor médio de uma coluna numérica. 
Sintaxe AVG()
SELECT AVG(column_name)
FROM table_name
WHERE condition;*/

SELECT AVG(preco) as 'valor médio dos produtos'
FROM produtos;

SELECT max(preco) as 'maior valor dos produtos'
FROM produtos;

SELECT min(preco) as 'menor valor dos produtos'
from produtos;

select sum(preco) as 'soma dos precos'
from produtos;