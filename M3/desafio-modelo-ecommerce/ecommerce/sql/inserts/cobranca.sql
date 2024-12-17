USE ecommerce;

-- INSERT INTO cobranca(tipoCobranca,numeroCartao,validadeCartao,digitoCartao,chavePix,trilhaBoleto,idCLiente)
INSERT INTO cobranca(tipoCobranca,numeroCartao,validadeCartao,digitoCartao,idCLiente)
VALUES(1,'444-555-888-999','20210101','001',1);

INSERT INTO cobranca(tipoCobranca,numeroCartao,validadeCartao,digitoCartao,idCLiente)
VALUES(1,'444-555-888-4545','20210103','011',2);

INSERT INTO cobranca(tipoCobranca,chavePix,idCLiente)
VALUES(1,'14656595RE9RERER998',3);

INSERT INTO cobranca(tipoCobranca,trilhaBoleto,idCLiente)
VALUES(1,'email@14656595RE9RERER998.com',4);

INSERT INTO cobranca(tipoCobranca,chavePix,idCLiente)
VALUES(1,'14656595RE9RERER998email',4);


select * from cobranca;