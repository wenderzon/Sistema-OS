-- comentários
-- a linha abaixo cria banco de dados 
create database dbinfox;  
-- a linha abaixo escollhe o banco de dados 
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela 
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15), 
login varchar(15) not null unique,
senha varchar(15) not null,
cpf varchar(15) not null 
);  
-- o comando agora descreve a tabela 
describe tbusuarios;
-- a linha abaixo insere dados na tabela  (CRUD) 
-- create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha,cpf)
values(1,'Wenderson','999999999','negowe','123456','000.000.000-00');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> select 
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha,cpf)
values(2,'ADMINISTRADOR','999999999','admin','admin','111.111.111-11');
insert into tbusuarios(iduser,usuario,fone,login,senha,cpf)
values(3,'Eduardo','999999999','eduard','123456','222.222.222-22');

-- linha abaixo modifica dados na tabela  (CRUD)
-- update -> update 
update tbusuarios set cpf='000.000.000-03' where iduser=1;

-- a linha abaixo apaga o registro da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3; 

 select * from tbusuarios;

create table tbclientes(
idcliente int primary key auto_increment,
nomecliente varchar(50) not null,
endecliente varchar(100),
fonecliente varchar(15) not null,
cpfcliente varchar(15) not null unique,
gmailcliente varchar(100) not null 
);

describe tbclientes;

insert into tbclientes(nomecliente,endecliente,fonecliente,cpfcliente,gmailcliente)
values('wend','rua miguel barreto, 580','111111111','000.000.000.00','wend@gmail.com');

select * from tbclientes;




