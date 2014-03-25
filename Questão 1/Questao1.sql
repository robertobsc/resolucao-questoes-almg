select	
	cl.nome as nome_cliente, 
	co.data as data_compra,
	co.seq as seq_compra,
	sum(ic.quantidade) as quantidade_total,
	sum(ic.quantidade * pr.valor_unitario) as valor_total_compra
from cliente cl 
	inner join compra co on cl.codigo = co.cliente
	inner join item_compra ic on co.seq = ic.compra
	inner join produto pr on ic.produto = pr.codigo
group by cl.nome, co.data, co.seq
order by cl.nome
