create database ProjetoPI;
use ProjetoPI;
create table Clientes (
idCliente int primary key auto_increment,
nome varchar (40),
empresa varchar (40),
cnpj varchar (14),
email varchar (40)
) ENGINE = innodb;

create table Arduino (
idArduino int primary key auto_increment,
idCliente int,
FOREIGN KEY (idCliente) 
REFERENCES Clientes(idCliente) 
on update cascade 
on delete cascade
) ENGINE = innodb;

insert into Clientes values	
(null, 'José Carlos', 'R2PB Confecções', '45430719000109', 'r2pb@gmail.com'),
(null, 'Caio Pereira', 'Gório', '45693085000179','gorio@gmail.com'),
(null, 'Lucas Gomes', 'Crochetta', '31783311000106','crochetta@gmail.com'),
(null, 'Ryan Rodrigues', 'Perel', '40268415000165','perel@gmail.com'),
(null, 'Carlos Souza', 'TERRIER', '16313721000191','terrier@gmail.com'),
(null, 'Arthur Silva', 'ARGOLLA', '77462391000190','argolla@gmail.com'),
(null, 'Lorenzo Batista', 'MDT eStudio', '77462391000190','mdt@gmail.com');

insert into Arduino values	
(null, 1),
(null, 2),
(null, 3),
(null, 4),
(null, 5),
(null, 6),
(null, 7);

select * from Arduino;

create table Dados (
idArduino int,
idCliente int,
horaData datetime,
umidade varchar(6),
temperatura varchar(4),
FOREIGN KEY (idArduino) 
REFERENCES Arduino(idArduino) 
on update cascade
on delete cascade
) ENGINE = innodb;

insert into Dados values	
(1, 1, '2020-01-01 12:12:12', '70.00%', '20°C'),
(2, 2, '2020-01-01 12:12:12', '35.00%', '24°C'),
(3, 3, '2020-01-01 12:12:12', '65.00%', '23°C'),
(4, 4, '2020-01-01 12:12:12', '60.00%', '21°C'),
(5, 5, '2020-01-01 12:12:12', '34.00%', '27°C'),
(6, 6, '2020-01-01 12:12:12', '87.00%', '28°C'),
(7, 7, '2020-01-01 12:12:12', '98.00%', '40°C');

insert into Dados values
(1, 1, '2020-01-01 12:12:12', '70.00%', '20°C');

select * from Dados;