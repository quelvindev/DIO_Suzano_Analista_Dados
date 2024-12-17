USE ecommerce;

INSERT INTO pedido(quantidade,statusPedido,vlrFrete,rasteio,idCliente,idProduto,idFornecedor)
VALUES (50,'F',10,'65WRRT',1,1,1);

INSERT INTO pedido(quantidade,statusPedido,vlrFrete,rasteio,idCliente,idProduto,idFornecedor)
VALUES (50,'B',10,'65YYUWRRT',1,2,2);

INSERT INTO pedido(quantidade,statusPedido,vlrFrete,rasteio,idCliente,idProduto,idFornecedor)
VALUES (50,'P',10,'65YYUWRRT',1,5,3);


SELECT * FROM produto;