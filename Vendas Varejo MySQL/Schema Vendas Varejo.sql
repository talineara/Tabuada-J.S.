create database Vendas_Varejo;

create table cliente(
IdCliente INT NOT NULL auto_increment primary key,
NomeCli varchar(45) not null
);

create table produto(
IdProduto int not null auto_increment primary key,
Descricao varchar(45) not null
);

create table venda(
IdVenda int not null auto_increment primary key,
DtVenda date not null,
IdCliente int not null,
IdProduto int not null
);

alter table venda add constraint venda_cliente_fk
foreign key (idCliente) references cliente(idCliente);

alter table venda add constraint venda_produto_fk
foreign key (idProduto) references produto (idProduto);

alter table cliente add column CPF varchar(11) null after NomeCli;

alter table cliente add constraint 
cliente_cpf_uk 
unique (cpf);

insert into cliente(NomeCli, CPF) values ('Alan', 45758695423); 
insert into cliente(NomeCli, CPF) values ('Ana', 25814736952); 
insert into cliente(NomeCli, CPF) values ('Sebastiao', 78965425845); 

select * from venda;

insert into produto(descricao) values ('camisa');
insert into produto(descricao) values ('bermunda');
insert into produto(descricao) values ('saia');

insert into venda(DtVenda, IdCliente, IdProduto) values ('2024-07-20', 2, 1);
insert into venda(DtVenda, IdCliente, IdProduto) values ('2024-07-22', 1, 3);
insert into venda(DtVenda, IdCliente, IdProduto) values ('2024-07-19', 2, 3);