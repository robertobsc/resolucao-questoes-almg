-- cidades
insert into cidade values (1, 'Belo Horizonte', 'MG');
insert into cidade values (2, 'Contagem', 'MG');
insert into cidade values (3, 'Betim', 'MG');
insert into cidade values (4, 'Rio de Janeiro', 'RJ');
insert into cidade values (5, 'Sao Paulo', 'SP');

-- produtos
insert into produto values (1, 'Refrigerante', 3.5);
insert into produto values (2, 'Suco', 4.5);
insert into produto values (3, 'Bola', 10.0);
insert into produto values (4, 'Bicicleta', 150.0);
insert into produto values (5, 'Skate', 180.0);
insert into produto values (6, 'Cadeira', 59.5);
insert into produto values (7, 'Mesa', 99.5);
insert into produto values (8, 'Livro de Regras', 30.0);

-- clientes
insert into cliente values (1, 'Jose da Silva', '11111111111', '1111-1111', 1);
insert into cliente values (2, 'Maria da Silva', '11111111112', '2222-2222', 1);
insert into cliente values (3, 'Joao Oliveira', '11111111113', '3333-3333', 2);
insert into cliente values (4, 'Beatriz Martis', '1111111114', '4444-4444', 4);
insert into cliente values (5, 'Eduardo Oliveira', '1111111115', '5555-5555', null);

-- compras 
-- obs: como não há questões relacionadas às datas, define-se a data atual para a compra
-- obs: datetime() é função do SQLite 3, deve-se ajustar para o SGBDR que for utilizado.
insert into compra values (1, 1, datetime());
insert into compra values (2, 3, datetime());
insert into compra values (3, 4, datetime());
insert into compra values (4, 1, datetime());
insert into compra values (5, 1, datetime());

-- itens de compra
insert into item_compra values (1, 1, 4.0);
insert into item_compra values (1, 2, 6.0);
insert into item_compra values (1, 6, 4.0);
insert into item_compra values (1, 7, 1.0);
insert into item_compra values (2, 3, 2.0);
insert into item_compra values (2, 4, 1.0);
insert into item_compra values (2, 7, 1.0);
insert into item_compra values (3, 3, 1.0);
insert into item_compra values (3, 4, 2.0);
insert into item_compra values (4, 6, 4.0);
insert into item_compra values (4, 7, 1.0);
insert into item_compra values (5, 7, 1.0);
