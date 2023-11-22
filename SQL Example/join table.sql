create table student(id int,name varchar(20),marks int,sem int);
insert into student values(1,'ram','80',1)
insert into student values(2,'riya','76',4)
insert into student values(3,'puja','77',1)
insert into student values(4,'raj','89',2)
drop table course
create table cource(id int,name varchar(20),marks int,sem int);
insert into cource values(2,'mca','80',4)
insert into cource values(3,'bca','80',1)
insert into cource values(4,'bba','80',2)
insert into cource values(2,'mba','80',4)
select * from student
select * from student
select * from student inner join cource on student.id=cource.id 
select * from student left join cource on student.id=cource.id
select * from student right join cource on student.id=cource.id
select * from student right join cource on student.id=cource.id