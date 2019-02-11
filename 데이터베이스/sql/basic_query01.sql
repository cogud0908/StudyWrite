create table pet(
	
    name varchar(20),
    owner varchar(20),
    species varchar(20),
    gender char(1),
    birth date,
    death date
);

drop table pet;

desc pet;

insert into pet
values('동이','조사인','dog','m','2018-10-10',null);

select * from pet;

select name, owner, 'hihi' from pet;

select owner from pet where name = '동이';
