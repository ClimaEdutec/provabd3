create database prova_bd3b;
use prova_bd3b;

create table clientes(
	id_cliente INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

create table pedidos(
	id_pedido int,
    id_cliente int,
    data_pedido date,
    total decimal (10,2)
);

insert into `clientes` (`id_cliente`,`nome`,`email`,`telefone`) values
('1','Alice Souza','alice.souza@example.com','11999998888'),
('2','Bruno Lima','bruno.lima@example.com','119888877777'),
('3','Carla Santos','carla.santos@example.com','11977776666'),
('4','Daniela Oliveira','daniela.oliveira.com','11966665555'),
('5','Eduardo Pereira','eduardo.pereira@example.com','11955554444');

insert into `pedidos` (`id_pedidos`,`id_cliente`,`data_pedido`,`total`) values
('1','1','2024-08-01',250.00),
('2','2','2024-08-03',150.00),
('3','3','2024-08-05',300.00),
('4','4','2024-08-07',450.00),
('5','5','2024-08-09',200.00);

select clientes.nome 
from clientes 
join pedidos on clientes.id_cliente = pedidos.id_cliente
where pedidos.data_pedido = '2024-08-03';
