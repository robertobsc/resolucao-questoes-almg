select 
	ci.uf as uf, 
	ci.nome as nome, 
	count(cl.codigo) as total_clientes
from cliente cl 
	inner join cidade ci on cl.cidade = ci.codigo
group by ci.uf, ci.nome
	having total_clientes >= 2

-- Acho mais prudente usar o seguinte: having count(cl.codigo) >= 2
-- O seguro morreu de velho...

