use ecommerce;
SELECT 
	cliente.idCliente,
    cliente.nomeCliente,
    cliente.sobrenomeCliente,
    case when cliente.tipoCliente = 1 then 'fisica' else 'juridica'end,
    endereco.cep,
    endereco.estado,
    endereco.cidade,
    endereco.bairro
FROM cliente,endereco where cliente.idCliente = endereco.idCliente
ORDER BY 
endereco.idEndereco DESC;

SELECT 
	f.idFornecedor,
    f.nomeFornecedor,
    p.nomeProduto
FROM produto as p, fornecedor as f where p.idfornecedor = f.idfornecedor ;




