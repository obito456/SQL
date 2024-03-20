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

insert into tbs values(1,'vijay','male',23,5000,'hyd');
insert into tbs values(2,'ajay','male',25,2000,'banglore');
insert into tbs values(3,'geetha','female',23,6000,'hyd');
insert into tbs values(4,'riya','female',22,8000,'hyd');
insert into tbs values(5,'neha','female',24,7000,'mumbai');
insert into tbs values(6,'priya','female',21,9000,'mumbai');

select * from tbs where pocket_money<6000;
select * from tbs where age+10<35;
select * from tbs where pocket_money>5000 and age=23;
select * from tbs where pocket_money=6000 or age =23;
select * from tbs where pocket_money between 4000 and 9000;
select * from tbs where city in ('mumbai');
select * from tbs where city not in ('mumbai');
select name from tbs limit 4;

