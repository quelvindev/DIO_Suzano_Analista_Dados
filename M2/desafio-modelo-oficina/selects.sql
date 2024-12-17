use oficina_os;
SELECT * FROM cliente as c, veiculo as v where v.idcliente = c.idCliente;

select * from marcaVeiculo as m, veiculo as v, cliente as c 
where v.idMarcaVeiculo = m.idMarcaVeiculo and v.idCliente = c.idCliente;