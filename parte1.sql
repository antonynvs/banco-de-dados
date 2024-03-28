create database e_commerce;
use e_commerce;

create table clientes(
	clientes_id int auto_increment primary key,
    nome varchar(150),
    endereco varchar(200),
    email varchar (100),
    celular varchar (20),
    data_nascimento date
);

create table produtos(
	produtos_id int auto_increment primary key,
	nome varchar(150),
    preço decimal (10,2),
    descrição varchar(500),
    qtd_estoque tinyint
);

create table pedidos(
	pedidos_id int auto_increment primary key,
	numero_pedido int,
    data_compra date,
    valor_total decimal(10,2),
    data_estimada_entrega date,
    clientes_id int,
    foreign key (clientes_id) references clientes(clientes_id)
);

create table lista_itens(
    id_item int auto_increment primary key,
    quantidade int,
    valor_unitario decimal(8,2),
    valor_total_item decimal(10,2),
    pedidos_id int, 
    foreign key (pedidos_id) references pedidos(pedidos_id),
    produtos_id int,
    foreign key (produtos_id) references produtos(produtos_id)
);