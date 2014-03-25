CREATE TABLE cidade (
	codigo int not null,
	nome varchar(100) not null,
	uf char(2) not null,
	primary key (codigo),
	unique (nome)
);

CREATE TABLE cliente (
	codigo int not null,
	nome varchar(100) not null,
	cpf char(11) not null,
	telefone varchar(50) not null,
	cidade int null,
	primary key (codigo),
	unique (cpf),
	foreign key (cidade) references cidade (codigo)
);

CREATE TABLE produto (
	codigo int not null,
	nome varchar(100) not null,
	valor_unitario numeric(7,2)  not null,
	primary key (codigo),
	-- o original está com vírgula no final
	-- unique (nome),
	unique (nome)
);

CREATE TABLE compra (
	seq int not null,
	cliente int not null,
	data datetime not null,
	primary key (seq),
	foreign key (cliente) references cliente (codigo)
);

CREATE TABLE item_compra (
	compra int not null,
	produto int not null,
	quantidade numeric(7,2) not null,
	primary key (compra,produto),
	foreign key (compra) references compra (seq), 
	foreign key (produto) references produto (codigo)
);