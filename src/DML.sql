create table students3
(
    id      serial primary key,
    name    varchar not null,
    surnmae varchar default ('Last is not delete'),
    age     int check ( age > 18 ),
    email   varchar not null
);
drop table students3;
insert into students3(name, surnmae, age, email)
VALUES ('Abai', 'Asanov', 20, 'abai@gmail.com'),
       ('Aiba', 'Esenov', 23, 'aiba@gmail.com'),
       ('Bekzat', 'Abanov', 20, 'bekzat@gmail.com'),
       ('Asan', 'Kutmanov', 29, 'asan@gmail.com');

insert into students3(name, age, email)
VALUES ('Aleks', 90, 'alex@gmail.com');

insert into students3(name, age, email)
VALUES ('Peri', 15, 'peri@gmail.com'); --муну киригизбейт себеби жашы 18 ден ойдо болушу керек


create table students4
(
    id           serial primary key,
    first_name   varchar,
    last_name    varchar,
    gender       varchar,
    date_of_date date,
    email        varchar,
    course       varchar,
    payment      numeric,
    duration     int
);

insert into students4 (first_name, last_name, gender, date_of_date, email, course, payment, duration)
values ('Akylai', 'Musaeva', 'Female', '2001-02-15', 'akylai@gmail.com', 'Java', 14000.00, 9),
       ('Zhanuzak', 'Anashov', 'Male', '2000-03-15', 'zhan@gmail.com', 'JS', 12000.00, 9),
       ('Abai', 'Kubatov', 'Male', '2004-02-25', 'abai@gmail.com', 'Java', 14000.00, 6),
       ('Aibek', 'Asanov', 'Male', '2003-04-13', 'aibek@gmail.com', 'JS', 14000.00, 3),
       ('Kutman', 'Akbarov', 'Male', '2004-02-25', 'kutman@gmail.com', 'Java', 12000.00, 9),
       ('Manas', 'Manasov', 'Male', '1987-02-15', 'manas@gmail.com', 'Java', 13000.00, 6),
       ('Zhomart', 'Atabekov', 'Male', '2003-02-19', 'zhoni@gmail.com', 'JS', 11000.00, 9),
       ('Umar', 'Umarov', 'Male', '2005-02-03', 'umar@gmail.com', 'Java', 7000.00, 3),
       ('Mirbek', 'Mirbekov', 'Male', '1999-02-15', 'mirbek@gmail.com', 'Java', 12000.00, 9),
       ('Ascar', 'Hamzaev', 'Male', '2004-02-15', 'ascar@gmail.com', 'JS', 4000.00, 9);

insert into students4 (first_name, last_name, gender, date_of_date, email, course, payment, duration)
values ('akylai', 'Musaeva', 'Female', '2001-02-15', 'akylai@gmail.com', 'Java', 14000.00, 9);

insert into students4 (first_name, last_name, gender, date_of_date, email, course, payment, duration)
values ('Akylai', 'Musaeva', 'Female', '2001-02-15', 'akylai@gmail.com', 'Java', 14000.00, 9);

insert into students4 (first_name, last_name, gender, date_of_date,  course, payment, duration)
values ('Beksultan', 'Musaev', 'Male', '2001-02-15',  'Java', 14000.50, 9);

select * from students4;

select first_name, last_name from students4;

select first_name as name from students4;

select concat(first_name,' ', last_name )as full_name from students4;

select first_name, last_name, payment*students4.duration as total_paymaent from students4;

select first_name, last_name from students4 order by  first_name;

select first_name, last_name from students4 order by  first_name desc ;

select distinct gender from students4;


select * from students4 where course='Java';

select * from students4 where course='Java' and payment>10000;

select * from students4 where course='Java' or payment>10000;

select * from students4 limit 5;

select * from students4 offset 3;

select * from students4  limit 4 offset 4;

select * from students4 fetch first 3 row only;

select * from students4 where id in (4,6,8);
select * from students4 where id =4 and id=6 and id=8;

select * from students4 where course not in ('JS');

select * from students4 where date_of_date between  '2001-1-1' and '2004-1-1';

select * from students4 where last_name like '%va';

select * from students4 where last_name like 'A%';

select * from students4 where last_name like '______';

select * from students4 where last_name like 'A%';

select * from students4 where first_name ilike 'A%';

select course from students4 group by course;

select gender,count(gender) from students4 group by gender;
select gender,count(id) from students4 group by gender;
select gender,count(*) from students4 group by gender;

select gender, count(*) from students4 group by gender having  count(gender)>3;




--------------------------------------------------------

select course, count(*) from students4 group by course;

select max(payment)from students4;

select min(payment)from students4;

select avg(payment)from students4;

select round(avg(payment)) from students4;

select sum(payment)from students4;

select first_name,coalesce(email, 'Not provided') from students4;


-------------------------------------------------------------

select now();

select now()-interval '1 year';

select  now()+interval '1 week';

select now()::date;

select now()::time;

select extract(year from now());

select extract(dow from now());

select extract(century from now());


-------------------------------------------

delete from students4 where first_name='akylai';

delete from students4 where gender='Female';

---------------------------------------------

update students4 set course='Python' where course='JS';

update students4 set first_name='Muku' where first_name='Umar';

create database  java10;
