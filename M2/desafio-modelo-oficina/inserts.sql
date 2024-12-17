use oficina_os;

INSERT INTO   marcaVeiculo (idMarcaVeiculo,descricao)
VALUES (1,'Ford');

INSERT INTO   marcaVeiculo (idMarcaVeiculo,descricao)
VALUES (2,'Hulday');

INSERT INTO cliente(idcliente,nomeCLiente) 
VALUES(1,'Roberio');

INSERT INTO veiculo(idveiculo,nomeVeiculo,idmarcaVeiculo,placa,idCliente)
VALUES(1,'Colora',1,'jjj-8800',1);


SELECT * FROM marcaVeiculo;
