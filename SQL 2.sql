create database dbs;

use dbs;

create table tbs(
	id int primary key,
    name varchar(25),
    gender varchar(15),
    ranking tinyint,
    weight double,
    height float,
    ondate date,
    years year,
    topper boolean,
    buss_fees smallint,
    ph_number bigint not null
    
);

drop database dbs;
drop table tbs;

insert into tbs values(1,'vijay','male',5,63,5.11,'2023-02-20',2024,true,5000,7780235520);
insert into tbs values(1,'ajay','male');

show databases;
show tables;
