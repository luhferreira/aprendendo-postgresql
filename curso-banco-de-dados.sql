CREATE TABLE itens_pedido (
id SERIAL, 
pedido_id INT NOT NULL,
produto_id INT NOT NULL,
quantidade INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

