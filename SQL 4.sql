create database if not exists dbs;

use dbs;

create table tbs(
	id int primary key,
    name varchar(25),
    gender varchar(15),
    ranking tinyint unique,
    age smallint check(age>=5) ,
    weight double,
    constraint to_check_wg check(weight >=10),
    height float,
    ondate date,
    years year,
    topper boolean,
    buss_fees smallint,
    ph_number bigint not null
    
);

drop database dbs;
drop table tbs;

insert into tbs values(1,'vijay','male',5,23,63,5.11,'2023-02-20',2024,true,5000,7780235520);
insert into tbs values(2,'ajay','male',6,23,63,5.11,'2023-02-20',2024,true,5000,7780235520);
insert into tbs values(3,'geetha','female',3,23,63,5.11,'2023-02-20',2024,true,5000,7780235520);
insert into tbs values(4,'riya','female',2,23,63,5.11,'2023-02-20',2024,true,5000,7780235520);

select name from tbs;

show databases;
show tables;

select * from tbs;
