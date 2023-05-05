Criando a tabela "clientes"
CREATE TABLE clientes (
id SERIAL,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);
Inserindo dados a tabela
INSERT INTO clientes ( nome, email) VALUES
('Natália', 'natalia.nfs@gmail.com'),
('Rafaela', 'rafa_bruna@gmail.com'),
('Renan', 'nan_rfs@gmail.com'),
('Lucas', 'limalucas@gmail.com'),
('Nicole', 'ni_cole123@gmail.com');

-- Criando a tabela "pedidos"
CREATE TABLE pedidos (
id SERIAL,
cliente_id INT NOT NULL,
data_pedido DATE NOT NULL,
valor DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos ( cliente_id, data_pedido, valor) VALUES
( 1, '2023-05-01', 24.99),
( 2, '2023-05-02', 150.00),
( 3, '2023-05-01', 9.99),
( 4, '2023-05-02', 100.00),
( 5, '2023-05-01', 24.99),
( 2, '2023-05-05', 15.00),
( 3, '2023-05-04', 6.99),
( 4, '2023-05-02', 10.00),
( 5, '2023-05-03', 35.50),
( 5, '2023-05-05', 75.50);

Criando a tabela "produtos"
CREATE TABLE produtos (
id SERIAL,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO produtos ( nome, preco) VALUES
('Afogadinho', 24.99),
('Pão de leite', 9.99),
('Naked cake', 150.00),
('Brownie', 6.99),
('Bolo mole', 20.00),
('Empadão', 100.00),
('Biscoito', 7.10),
('Cone recheado', 10),
('Pão de coco', 7.50),
('Bolo fofo', 15.10);

Criando a tabela "itens_pedido"
CREATE TABLE itens_pedido (
id SERIAL,
pedido_id INT NOT NULL,
produto_id INT NOT NULL,
quantidade INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
Inserindo alguns registros na tabela "itens_pedido"
INSERT INTO itens_pedido ( pedido_id,
produto_id, quantidade) VALUES
(2, 3, 1),
(4, 6, 1),
(3, 2, 1),
(1, 5, 1),
(6, 9, 2),
(10, 10, 5),
(7, 4, 1),
(5, 1, 1),
(9, 7, 5),
(8, 8, 1);
