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
insert into tbs values(7,'anu','female',18,11000,'banglore');

select count(name),city from tbs group by city having max(pocket_money)>10000 ;
update tbs set city ='chennai' where city='banglore';
delete from tbs where gender='female';

alter table tbs add column marital_status varchar(10);
alter table tbs drop marital_status;
alter table tbs rename to csk;
alter table tbs change column marital_status relationship varchar(9);
alter table tbs modify age tinyint;
