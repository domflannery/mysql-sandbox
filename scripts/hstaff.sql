use sakila;

drop table if exists hstaff ;
create table hstaff ( 
staff_id int unsigned not null primary key,
manager_staff_id int unsigned,
`name` varchar(255),
title varchar(255),
index(manager_staff_id)
);

insert into hstaff (staff_id, manager_staff_id, name, title)
values (1, NULL, 'Suzy', 'CEO'),
	   (2, 1, 'Tommy', 'CFO'),
       (3, 1, 'Sally', 'CTO'),
       (4, 2, 'Jenny', 'VP Finance'),
       (5, 4, 'Johnny', 'Accountant'),
       (6, 4, 'Bobby', 'Accountant'),
       (7, 3, 'Adam', 'VP Technology'),
       (8, 7, 'Dom', 'Super DBA'),
       (9, 7, 'Greg', 'Dev Manager'),
       (10, 8, 'Ryan', 'DBA'),
       (11, 8, 'Tom', 'DBA'),
       (12, 9, 'Scott', 'Programmer'),
       (13, 9, 'Jami', 'Programmer'),
       (14, 8, 'Cory', 'Database Developer');
       
