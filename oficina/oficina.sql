-- Criação do banco da oficina
create database oficina;
use oficina;

-- Tabela cliente
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Lname varchar(20)
);

-- Tabela veículo
create table vehicle(
	idVehicle int auto_increment primary key,
    plate char(10) not null,
    brand varchar(25),
    model varchar(25),
    color varchar(10)
);

-- Tabela preço dos serviços
create table price(
	idPrice int auto_increment primary key,
    service_type varchar(45),
    price float default 0
);

-- Tabela serviço
create table services(
	idService int auto_increment primary key,
    price_idPrice int,
    client int,
    mechanic_idMechanic int,
    part_idPart int,
    emission date, 
    service_price float,
    status varchar(45),
    conclusion date,
    constraint fk_price foreign key (price_idPrice) references price(idPrice),
    constraint fk_part_price foreign key (part_idPart) references part(idPart)
);

-- Tabela client_has_vehicle
create table client_has_vehicle(
	client_idClient int,
    vehicle_idVehicle int,
    idVehicle_client int,
    constraint fk_client foreign key (client_idClient) references clients(idClient),
    constraint fk_vehicle foreign key (vehicle_idVehicle) references vehicle(idVehicle),
    constraint fk_vehicle_client foreign key (idVehicle_client) references service(client)
);

-- Tabela equipe de mecânicos
create table team(
	idTeam int auto_increment primary key,
    team varchar(45)
);

-- Tabela de mecânicos
create table mechanic(
	idMechanic int auto_increment primary key,
    mechanic_name varchar(45),
    address varchar(45),
    expertise varchar(45),
    team_idTeam int,
    constraint fk_mechanic_team foreign key (team_idTeam) references team(idTeam)
);


-- Tabela avaliação
create table evaluation(
	idEvaluation int auto_increment primary key,
    team_idTeam int,
    client_has_vehicle_idVehicle_client int,
    constraint fk_team foreign key (team_idTeam) references team(idTeam),
    constraint fk_vehicle_client foreign key (client_has_vehicle_idVehicle_client) references client_has_vehicle(idVehicle_client)
);

-- Tabela de peças
create table parts(
	idPart int auto_increment primary key,
    part_name varchar(45),
    part_price float default 0
);
