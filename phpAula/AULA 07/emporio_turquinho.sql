CREATE DATABASE emporio_turquinho;
use emporio_turquinho;


-- criando a tabela clientes
CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
nome_contato VARCHAR (100),
endereco VARCHAR (255),
cidade VARCHAR(100),
CEP     VARCHAR(20),
pais VARCHAR (100),
telefone VARCHAR (20)
);


CREATE TABLE funcionarios(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
sobrenome VARCHAR (50),
nome VARCHAR (50),
data_nasc DATETIME,
foto VARCHAR (50),
observacoes VARCHAR (1024)
);


create table transportadoras(
id_transportadora INT AUTO_INCREMENT PRIMARY KEY,
nome_transp VARCHAR (100),
telefone VARCHAR(20)
);


CREATE TABLE categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR (50),
descricao VARCHAR (255)
);


CREATE TABLE fornecedores(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50),
nome_contato VARCHAR(50),
endereco VARCHAR (100),
cidade VARCHAR (100),
CEP VARCHAR(20), 
pais VARCHAR (50),
telefone VARCHAR (20)
);

CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_prod VARCHAR (50),
id_fornecedor INT,
id_categoria INT,
unidade VARCHAR (50),
preco DECIMAL (10,2),
foreign key (id_fornecedor) references fornecedores (id_fornecedor),
foreign key (id_categoria) references categorias (id_categoria)
 );

CREATE TABLE pedidos(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_funcionario INT,
datapedido DATETIME,
id_transportadora INT,
FOREIGN KEY (id_cliente) references clientes (id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
FOREIGN KEY (id_transportadora) REFERENCES transportadoras (id_transportadora)
);

CREATE TABLE detalhes_pedido(
id_detalhes_pedido INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
quantidade INT,
FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido),
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
);

-- vamos inserir dados pelo Workbench
