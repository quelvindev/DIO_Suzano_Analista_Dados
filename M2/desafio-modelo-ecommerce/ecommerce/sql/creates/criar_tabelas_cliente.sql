-- CRIANDO TABELAS
CREATE TABLE cliente (
idCliente INT NOT NULL AUTO_INCREMENT,
nomeCliente  VARCHAR(20),
sobrenomeCliente VARCHAR(40),
tipoCliente CHAR(1),
cpfcnpj VARCHAR(18),
PRIMARY KEY (idCliente)
) ;
CREATE TABLE endereco (
idEndereco INT NOT NULL AUTO_INCREMENT,
cep VARCHAR(9),
estado VARCHAR(2),
cidade VARCHAR(20),
bairro VARCHAR(20),
logradouro VARCHAR(15),
numero VARCHAR(5),
pontoReferencia VARCHAR(30),
idCliente INT,
PRIMARY KEY (idEndereco),
CONSTRAINT fk_endereco_cliente FOREIGN KEY (idCliente)
REFERENCES cliente(IdCliente)
);


CREATE TABLE cobranca(
idCobranca INT NOT NULL AUTO_INCREMENT,
tipoCobranca CHAR(1),
numeroCartao VARCHAR(16),
validadeCartao DATE,
digitoCartao VARCHAR(3),
chavePix VARCHAR(40),
trilhaBoleto VARCHAR(50),
idCliente INT,
PRIMARY KEY (idCobranca),
CONSTRAINT fk_idCliente_cobranca FOREIGN KEY (idCliente)
REFERENCES cliente(IdCliente)

);


SELECT * FROM cobranca;