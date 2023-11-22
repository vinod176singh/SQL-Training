create table student1 (id int ,name char(100))
create table student_subject (id int ,name char(100),sid int)

insert into student1 values(1,'vinod'),(2,'vinny'),(3,'bot'),(4,NULL)
insert into student_subject values(1,'math',1),(2,'physics',1),(3,'maths',3),(4,'hindi',4),(5,'ENGLISH',2)

select *  From student1
select *  From student_subject

--update student_subject
--set sid=4
--where sid is null


select A.name AS STUDENT_NAME,B.name STUDENT_SUBJECT from student1 A inner join student_subject B on A.id=B.sid
WHERE A.name IS NOT NULL
SELECT A.id,A.name AS STUDENT_NAME,B.name STUDENT_SUBJECT FROM STUDENT1 A INNER JOIN STUDENT_SUBJECT B ON A.id =B.SID

create table orders (id int, product varchar(20), quantity int ,price int , c_id int)
insert into orders values(1,'dove',1,50,2)
insert into orders values(2,'himalaya',2,150,1)
insert into orders values(3,'toor dal',1,80,3)
insert into orders values(4,'oil',2,200,1)
insert into orders values(5,'sugar',4,500,3)
insert into orders values(6,'tide',3,450,2)
insert into orders values(7,'bat',7,360,3)
insert into orders values(8,'tv',1,11000,1)
insert into orders values(9,'good night',9,300,2)
insert into orders values(10,'phone',2,9000,1)
insert into orders values(11,'copy',5,100,3)
insert into orders values(12,'pet',6,600,1)
create table customers(id int, name varchar(20), address varchar(30))
insert into customers values(1,'vinod','kul')
insert into customers values(2,'khushbu','vns')
insert into customers values(3,'shashi','pune')

select * from orders
select * from customers
select  customers.name as customers, orders.product,orders.quantity  from orders  inner join customers  on orders.c_id=customers.id order by customers.name,product
select  customers.name as customers, orders.product,orders.quantity  from orders  left join customers  on orders.c_id=customers.id  order by customers.name,product 
select  customers.name as customers, orders.product,orders.quantity  from orders right join customers  on orders.c_id=customers.id order by customers.name,product
select  customers.name as customers, orders.product,orders.quantity  from orders  full join customers  on orders.c_id=customers.id order by customers.name,product

select max(price) from orders 
select min(price) from orders 
select sum(price) from orders 
select avg(price) from orders
select count(price) from orders  
select c_id,sum(price) as totalprice from orders group by c_id
select c_id,max(price) as totalprice from orders group by c_id
select c_id,min(price) as totalprice from orders group by c_id
select c_id,avg(price) as totalprice from orders group by c_id
select c_id,count(price) as totalprice from orders group by c_id



