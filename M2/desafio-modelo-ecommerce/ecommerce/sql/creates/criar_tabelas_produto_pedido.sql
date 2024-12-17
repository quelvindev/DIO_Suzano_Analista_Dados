USE ecommerce;

CREATE TABLE fornecedor(
idFornecedor INT NOT NULL AUTO_INCREMENT,
nomeFornecedor VARCHAR(30),
cnpj VARCHAR(18),
PRIMARY KEY (idFornecedor)
);

CREATE TABLE produto(
idProduto INT NOT NULL AUTO_INCREMENT,
nomeProduto VARCHAR(45),
embalagem DECIMAL(2),
idFornecedor INT,
PRIMARY KEY (idProduto),
CONSTRAINT fk_produto_fornecedor FOREIGN KEY (idFornecedor)
REFERENCES fornecedor(idFornecedor)
);

CREATE TABLE estoque (
idEstoque INT NOT NULL AUTO_INCREMENT,
quantidade DECIMAL(8,2),
quantidadeDisponivel DECIMAL(8,2),
quantidadeReservada DECIMAL(8,2),
idProduto INT NOT NULL,
idFornecedor INT NOT NULL, 
PRIMARY KEY (idEstoque),
CONSTRAINT fk_estoque_produto FOREIGN KEY (idProduto)
REFERENCES produto(idProduto),
CONSTRAINT fk_estoque_fornecedor FOREIGN KEY (idFornecedor)
REFERENCES fornecedor(idFornecedor)
);

CREATE TABLE pedido(
idPedido INT NOT NULL AUTO_INCREMENT,
quantidade DECIMAL(8,2),
statusPedido CHAR(1),
vlrFrete DECIMAL(8,2),
rastreio VARCHAR(45),
idCliente INT,
idProduto INT,
idFornecedor INT,
PRIMARY KEY (idPedido),
CONSTRAINT fk_pedido_cliente FOREIGN KEY (idCliente)
REFERENCES cliente(idCliente),
CONSTRAINT fk_pedido_produto FOREIGN KEY (idProduto)
REFERENCES produto(idProduto),
CONSTRAINT fk_pedido_fornecedor FOREIGN KEY (idFornecedor)
REFERENCES fornecedor(idFornecedor)

);