create table employee_test(emp_id int identity, emp_name varchar(100), emp_sal decimal(10,2))
insert into employee_test values('ram',100.5)
insert into employee_test values('mohan',1050.5)
insert into employee_test values('sohan',1003.5)
insert into employee_test values('raja',100.55)
insert into employee_test values('ravi',1002.5)
insert into employee_test values('raj',1004.55)
select * from employee_test;