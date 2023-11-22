drop table orders
drop table customers

create table orders(id int, product varchar(20), quantity int ,price int , c_id int)
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
select max(price) as max_price  from orders 
select min(price) as min_price  from orders 
select sum(price) as sum_price from orders 
select avg(price) as avg_price from orders
select count(price) as count_price from orders  
select c_id,sum(price) as totalprice from orders group by c_id
select c_id,max(price) as totalprice from orders group by c_id
select c_id,min(price) as totalprice from orders group by c_id
select c_id,avg(price) as totalprice from orders group by c_id
select c_id,count(price) as totalprice from orders group by c_id

SELECT  product,price FROM orders WHERE price = (SELECT  MAX(price) FROM orders)
SELECT  product,price FROM orders WHERE price = (SELECT  Min(price) FROM orders)

select c.name as custome_name,sum(quantity) as totalquantity from orders o
inner join customers c on o.c_id=c.id
group by  c.name

select top 1 c.name as custome_name,sum(price) as maxPrice from orders o
inner join customers c on o.c_id=c.id
group by  c.name
order by 2 desc

select top 1 c.name as custome_name,sum(price) as maxPrice from orders o
inner join customers c on o.c_id=c.id
group by  c.name
order by 2 

select c.name as custome_name,avg(price) as maxPrice from orders o
inner join customers c on o.c_id=c.id
group by  c.name

