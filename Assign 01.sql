-- ---------------------------------------------ASSIGNMENT 1----------------------------------------------------------------------
-- Q1.
create database assignmentdb;
-----------------------------------------------------------------------------------------------------------------------------------
use assignmentdb;     
-- Q2.                                                                    
show tables;  
-----------------------------------------------------------------------------------------------------------------------------------
-- Q3. (a)                                                                           
create table countries (name varchar(50), population integer, capital varchar(50));
-- Q3. (b)
insert into big_countries values ('China',1382,'Beijing'),
('India',1326,'Delhi'),
('United States',324,'Washington D.C.'),
('Indonesia',260,'Jakarta'),
('Brazil',209,'Brasilia'),
('Pakistan',193,'Islamabad'),
('Nigeria',187,'Abuja'),
('Bangladesh',163,'Dhaka'),
('Russia',143,'Moscow'),
('Mexico',128,'Mexico City'),
('Japan',126,'Tokyo'),
('Philippines',102,'Manila'),
('Ethiopia',101,'Addis Ababa'),
('Vietnam',94,'Hanoi'),
('Egypt',93,'Cairo'),
('Germany',81,'Berlin'),
('Iran',80,'Tehran'),
('Turkey',79,'Ankara'),
('Congo',79,'Kinshasa'),
('France',69,'Paris'),
('United Kingdom',65,'London'),
('Italy',60,'Rome'),
('South Africa',55,'Pretoria'),
('Myanmar',54,'Naypyidaw'),
('Austraila',752,'Canberra'),
('Srilanka',123,'Colombo'),
('Oman',453,'Muscat');
select * from countries;  
-- Q3. (c)
update big_countries set capital='New Delhi' where capital='Delhi';
set sql_safe_updates= 0;
select * from big_countries;
show tables; 
select * from products;
--------------------------------------------------------------------------------------------------------------------------------------
-- Q4.                                                              
rename table countries to Big_countries;                                                  
select * from big_countries;
--------------------------------------------------------------------------------------------------------------------------------------
-- Q5. (a)
create table product (product_id integer primary key, product_name varchar(30) not null unique, description char(100), 
supplier_id integer, foreign key (supplier_id) references suppliers (supplier_id));    
select * from product;
-- Q5. (b)
create table suppliers (supplier_id integer primary key, supplier_name varchar(30), location varchar(30));                 
desc product; 
desc suppliers;
select * from suppliers;
-- Q5. (c)
create table stock (id integer primary key, product_id integer, 
foreign key (product_id) references product (product_id), balance_stock integer);                                          
desc stock;
--------------------------------------------------------------------------------------------------------------------------------------
-- Q6.
insert into suppliers  values(1051, 'Super store', 'Nagpur');
insert into suppliers values(1052, 'Market for all', 'Bangalore'),(1053, 'HyperCity', 'Hyderabad'),
(1054, 'Lifestyle','Bangalore'),(1055,'BigBazar','Chennai');
select * from suppliers;
insert into product values(0015, 'handwash','daily use', 1051),(0012, 'Rice Pulses','Grocerries',1052),
(0017, 'Pen & register','Stationaries', 1054),(0020, 'Clothings','Dressing',1055),(0019, 'Chocolates','Deserts',1053);   
select * from product;
alter table stock modify balance_stock varchar(30);
select * from stock;
desc stock;
insert into stock values(1002, 0015, '1005 nos.'),(1001, 0012, '125 bags'),(1003, 0017, '150 nos.'),
(1004, 0020, '50 pieces'),(1005, 0019, '120 pieces');
select * from stock;
---------------------------------------------------------------------------------------------------------------------------------------
-- Q7.
alter table suppliers modify supplier_name varchar(30) unique not null;  
desc suppliers;                                                
insert into suppliers values(1052,'Market for all','Bagalore');    -- Error
---------------------------------------------------------------------------------------------------------------------------------------
-- Q8. (a)
alter table emp add deptno integer after emp_no;                                                                          
select * from emp limit 10;
-- Q8. (b)
select * from emp;
update emp set deptno = 20 where emp_no%2 = 0;
update emp set deptno = 30 where emp_no%3 = 0;
update emp set deptno = 40 where emp_no%4 = 0;
update emp set deptno = 50 where emp_no%5 = 0;
update emp set deptno = 10 where emp_no%5 = 0;                                                                     
select * from emp;
----------------------------------------------------------------------------------------------------------------------------------------
-- Q9.
select * from emp;
create index myindex on emp (emp_no);
create index hashidx using hash on emp (emp_no);
create unique index uidx on emp (emp_no);                                                                               
show indexes from emp;
select * from emp limit 10;
select emp_no, birth_date, first_name, last_name, gender, hire_date, salary from emp limit 10;
----------------------------------------------------------------------------------------------------------------------------------------
-- Q10.
create view emp_salary as select emp_no, first_name, last_name, salary from emp order by salary desc;               
select * from emp_salary;

----------------------------------------------------------------------------------------------------------------------------------------
show tables;













