create database locadora_veiculo;

use locadora_veiculo;

create table carro( numero_placa int not null auto_increment primary key,
cor_predominante varchar(30) not null,
ano_do_modelo numeric not null,
data_frabricacao date not null,
marca varchar(20) not null,
numero_chassi numeric not null,
modelo numeric not null);

create table manutencao( codigo_manutencao int not null auto_increment primary key,
placa_carro varchar(20) not null,
data_manutencao date not null,
custo float not null,
nome_oficina varchar(20) not null,
descricao_servico varchar(200) );

create table categoria_carro( codigo_categoria int not null auto_increment primary key,
nome_categoria varchar(20) not null,
preco_dia float not null,
numero_placa varchar(20) not null,
descricao varchar(200) not null );

create table cliente( cpf int not null auto_increment primary key,
numero_cnh varchar(20) not null,
endereco varchar(30) not null,
nome varchar(25) not null,
quantidade_locacoes numeric not null,
rg numeric not null,
data_nascimento date not null );

create table aluguel( cod_alguel int not null auto_increment primary key,
data_hora_entrega datetime not null,
rg numeric not null,
numero_placa numeric not null,
data_hora_devolucao datetime not null );

alter table aluguel
add cpf integer not null;

alter table aluguel
add (foreign key (cpf) references cliente(cpf));

alter table aluguel
modify numero_placa integer not null;

alter table aluguel
add (foreign key (numero_placa) references carro(numero_placa));

alter table categoria_carro
modify numero_placa integer not null;

alter table categoria_carro
add (foreign key (numero_placa) references carro(numero_placa));

alter table carro
add codigo_manutencao integer not null;

alter table carro
add (foreign key (codigo_manutencao) references manutencao(codigo_manutencao));

alter table carro
add codigo_categoria integer not null;

alter table carro
add (foreign key (codigo_categoria) references categoria_carro(codigo_categoria));

describe carro;

alter table carro
modify ano_do_modelo integer not null;

alter table carro
modify numero_chassi integer not null;

alter table carro
modify modelo integer not null;

 describe cliente;
 
 alter table cliente
modify quantidade_locacoes integer not null;

alter table cliente
modify rg integer not null;

describe aluguel;

alter table aluguel
modify rg integer not null;

show databases;

use locadora_veiculo;

describe manutencao;

insert into manutencao values(null,'abc123','2015/01/02','150.00','smith','ótimo');
insert into manutencao values(null,'abc123','2014/02/03','250.00','smith','ótimo');
insert into manutencao values(null,'abc123','2015/02/03','350.00','smith','ótimo');
insert into manutencao values(null,'abc123','2015/05/06','50.00','smith','ótimo');
insert into manutencao values(null,'abc123','2015/11/01','650.00','smith','ótimo');

describe cliente;

insert into cliente values(null,'123','rua a','smith','2','1234567891','1992/11/09');
insert into cliente values(null,'123','rua a','smith','2','1234567891','1993/11/09');
insert into cliente values(null,'123','rua a','smith','2','1234567891','1994/11/09');
insert into cliente values(null,'123','rua a','smith','2','1234567891','1995/11/09');
insert into cliente values(null,'123','rua a','smith','2','1234567891','1996/11/09');

select * from cliente;

select * from manutencao where custo>'100';

select * from manutencao order by custo;

SELECT COUNT(nome_oficina) FROM manutencao;

