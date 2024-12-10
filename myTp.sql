
CREATE DATABASE cars_system;
USE cars_system;


-- creation des tableau

CREATE TABLE clients (
     id int primary key,
     nom varchar(255),
     adress varchar(255),
     tel VARCHAR(20)
);

CREATE TABLE cars (
     matric varchar(255) primary key,
     marque varchar(255),
     annee int
     modele varchar(255),

);


CREATE TABLE rentalcontracts (
     num int primary key,
     date_debut date,
     date_fin date,
     dure int,

     id_client int ,
     id_matric varchar(255) ,
     FOREIGN key(id_client) REFERENCES clients(id),
     FOREIGN key(id_matric) REFERENCES cars(matric)
);

-- insertion des donnes

INSERT INTO clients VALUES
 (1,"Fatima El Amri","Rabat, Maroc","0678901234"),
 (2,"Ahmed Saidi","Casablanca, Maroc","0612345678");

INSERT INTO cars VALUES
 ("1234ABC","Toyota","Corolla",2020),
 ("5678XYZ","Renault","Clio",2021);

INSERT INTO rentalcontracts VALUES
 (1,"2024-01-01","2024-01-10",10,1,"1234ABC"),
 (2,"2024-02-01","2024-02-05",5,2,"5678XYZ");

-- select statment

-- 1
select * from rentalcontracts 
join clients on clients.id = rentalcontracts.id_client
join cars on cars.matric = rentalcontracts.id_matric;

-- 2
select * from rentalcontracts
where dure > 7;

-- 3

insert into clients values(3,"rida","casa,Maroc","0650256210");
insert into cars values("1234ABC14","Dodge","Hell Cat",1999);
insert into rentalcontracts values(5,"2026-02-22","2028-02-22",10,8,"1234ABC14");



-- delete statment

delete from rentalcontracts 
where date_fin < "2024-1-1";