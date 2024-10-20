
use emporio_turquinho;


-- exemplo 1
SELECT *
FROM pedidos
INNER JOIN clientes
on 
clientes.id_cliente = pedidos.id_cliente;

-- exemplo 2, filtrando
SELECT c.nome, c.endereco, p.datapedido
FROM clientes AS c
INNER JOIN pedidos AS p
ON c.id_cliente = p.id_cliente;

-- mesmo exemplo mas com o nome do funcionario tb
SELECT c.nome, c.endereco, p.datapedido, f.nome as nome_funcionario 
FROM clientes AS c
INNER JOIN pedidos AS p
ON c.id_cliente = p.id_cliente
inner join funcionarios as f
on f.id_funcionario = p.id_funcionario;


-- exemplo ordenando por nome
SELECT c.nome, c.endereco, p.datapedido, dp.quantidade, f.nome as nome_funcionario 
FROM clientes AS c
INNER JOIN pedidos AS p
ON c.id_cliente = p.id_cliente
inner join funcionarios as f
on f.id_funcionario = p.id_funcionario
inner join detalhes_pedido as dp
on p.id_pedido = dp.id_pedido
order by c.nome;