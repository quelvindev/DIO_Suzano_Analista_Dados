USE ecommerce;
INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44245-050','BA','Feira de Santana','Centro','Casa','13','Ao lado da Escola Luz',1);

INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44245-150','BA','Feira da Mata','Buticono','Predio','13','Ao lado da Escola Palmas',1);

INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44245-050','SP','São Paulo','Morumbi','Ap','88','',2);

INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44888-050','CE','Barra Nova','Ticico','Predio','13','Ao lado da Escola Luz',3);

INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44245-050','SE','Aracaju','Trobogi','galpão','13','Ao lado da coca cola',4);

INSERT INTO endereco(cep,estado,cidade,bairro,logradouro,numero,pontoReferencia,idCliente)
VALUES ('44245-050','BA','Pelotas','Alfalfa','Casa','69','Ao lado da Escola Luz',4);

select * from endereco;
