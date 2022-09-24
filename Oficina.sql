
create database oficina;
use oficina;

create table cliente(
	idCliente int auto_increment primary key,
    Nome varchar(10),
    endereço varchar(255),
    Cpf varchar(45),
    Carro varchar(45)
);

create table Serviço(
	idCliente int primary key,
    idServiço int,
    descrição varchar(250),
    constraint fk_cliente foreign key(idCliente) references cliente(idCliente)
);

create table mecanico(
	IdMecanico int auto_increment primary key,
    Nome varchar(45),
    Descrição varchar(45)
);

create table Analise(
	idCliente int primary key,
    idServiço int,
    idMecanico int,
    descrição varchar(250),
	constraint fk_cliente foreign key(idCliente) references cliente(idCliente),
    constraint fk_serviço foreign key(idServiço) references serviço(idServiço),
    constraint fk_mecanico foreign key(idMecanico) references mecanico(idMecanico)
);

create table Os(
	IdOs int auto_increment primary key,
    descrição varchar(45),
    valor float,
    data date,
    constraint fk_serviço foreign key(idServiço) references serviço(idServiço),
    constraint fk_mecanico foreign key(idMecanico) references mecanico(idMecanico)
);

Select * from Cliente;
Select descrição from OS where valor = '1500';
select * from Serviços order by IdCliente;

 


