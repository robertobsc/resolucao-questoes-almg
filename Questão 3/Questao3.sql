-- Solução 1: reproduz a saída EXATAMENTE como a mostrada na imagem da questão
select
	cl.nome as nome_cliente,
	ci.nome as cidade
from cliente cl 
	left join cidade ci on cl.codigo = ci.codigo
where cl.codigo not in (select co.cliente from compra co)
order by cl.nome

-- Solução 2: responde à consulta como pedido no escrito no enunciado
select
	cl.nome as nome_cliente,
	ci.nome as cidade
from cliente cl
	left join cidade ci on cl.cidade = ci.codigo
where cl.codigo not in 
	(select co.cliente from compra co)
order by cl.nome

-- 1 Eu gosto de escrever menos, mas também é possível usar NOT EXISTS:
--   ... where not exists (select 1 from compra co where co.cliente = cl.codigo)
-- 2 É possível resolver fazendo left join com compra e avaliando os nulos.
-- 3 A eficiência da consulta não está em voga, portanto, prefiro o NOT IN.
-- 4 Perceba que o autor da questão "errou" no LEFT JOIN ... ON ...
-- 5 Eu coloquei ambas soluções na prova, mas esta questão deve ser anulada. :P