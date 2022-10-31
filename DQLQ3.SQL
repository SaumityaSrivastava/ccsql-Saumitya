create database employee;
use employee;
create table staff
(
    staff_id int(11) primary key,
    staff_name VARCHAR(25),
    supervisor_id int(11),
    salary BIGINt(20),
    join_date DATE,
    dept_id INT(11)
);

create table department
(
    dept_id INt(11),
    dept_name varchar(25)
);

Insert into staff
values
    (1, 'SAUMITYA', 32, 6000, '2022-09-09', 10),
    (2, 'AYUSH', 32, 6000, '2022-07-09', 10),
    (3, 'NITIN', 32, 2000, '2022-09-09', 11),
    (4, 'AKARSH', 32, 2000, '2022-06-19', 11);


SELECT staff_id, staff_name, salary, dept_id
FROM STAFF
WHERE salary > (select avg(salary)
    from staff
    where dept_id = 11) AND dept_id=10;
ORDER BY staff_id ASC;