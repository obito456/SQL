create database dbs;

use dbs;

create table tbs(
	id int primary key,
    name varchar(25),
    gender varchar(15)
    
);

drop database dbs;
drop table tbs;

insert into tbs values(1,'vijay','male');
insert into tbs values(1,'ajay','male');

show databases;
show tables;
