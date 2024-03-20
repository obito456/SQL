create database if not exists dbs;

use dbs;

create table tbs(
	id int primary key ,
    name varchar(25),
    gender varchar(15),
    age smallint check(age>=5),
    pocket_money int default '5000',
    city varchar(15)
);

drop database dbs;
drop table tbs;

insert into tbs values(1,'vijay','male',23,5000,'hyd');
insert into tbs values(2,'ajay','male',25,2000,'banglore');
insert into tbs values(3,'geetha','female',23,6000,'hyd');
insert into tbs values(4,'riya','female',22,8000,'hyd');

select distinct city from tbs;
select * from tbs where pocket_money>5000;
show databases;
show tables;

select * from tbs;
