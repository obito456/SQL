create database if not exists dbs;

use dbs;

create table tbs(
	id int primary key,
    name varchar(25),
    gender varchar(15),
    ranking tinyint unique,
    weight double,
    height float,
    ondate date,
    years year,
    topper boolean,
    buss_fees smallint,
    city_id tinyint,
    foreign key(tbs_city_id) references tbt(city_id), 
    ph_number bigint not null
    
);
create table tbt(
	city_id tinyint primary key,
    city varchar(15)
);

drop database dbs;
drop table tbs;

insert into tbs values(1,'vijay','male',5,63,5.11,'2023-02-20',2024,true,5000,2,7780235520);
insert into tbt values(2,'mumbai');

show databases;
show tables;

select * from tbs;
