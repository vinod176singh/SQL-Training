drop table Student
drop table department
drop table faculty
drop table semester
create table student(s_id int not null,s_name varchar(255), dob date, address varchar(255), city varchar(255), email varchar(255), mobile varchar(10),Dateofadmission date, dept_id int, semester_id int not null);
create table department(D_id int not null,D_name varchar(255));
create table faculty(F_id int not null, F_name varchar(20),mobile varchar(10),email varchar(50),dob date,disignation varchar(255),speciality varchar(255),D_id int,senior_id int not null);
create table semester(sem_id int not null, sem_name varchar(20));

insert into student values(1,'Ram','10-02-2018','psyah','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(2,'Shyam','02-03-2016','fhsj','mp','wuhb463@',87351826,'01-10-2011',1,8)
insert into student values(3,'Raj','10-02-2000','pou','up','gflgg@$g86',283654682,'09-05-2009',3,2)
insert into student values(4,'Radha','20-02-2018','ouz','pune','jkjys$5',9996664,'10-02-2010',1,5)
insert into student values(5,'Ramesh','15-09-2006','mnop','mhug','dyyfr%%67',235687447,'13-08-2011',10,2)
insert into student values(6,'Ravi','11-12-2018','lmn','','shaj48@sd',28365837,'19-07-2012',3,5)
insert into student values(7,'Mohan','10-01-2006','xyz','vns','shaj48@sd',28365837,'12-05-2013',2,7)
insert into student values(8,'Rohan','18-04-2004','xyz','vns','shaj48@sd',28365837,'01-02-2010',9,4)
insert into student values(9,'sohan','19-07-2011','xyz','vns','shaj48@sd',28365837,'01-02-2010',10,5)
insert into student values(10,'Suresh','21-03-2001','xyz','vns','shaj48@sd',28365837,'01-02-2010',2,5)
insert into student values(11,'Puja','23-09-2002','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,6)
insert into student values(12,'Riya','10-10-2010','xyz','vns','shaj48@sd',28365837,'01-02-2010',8,2)
insert into student values(13,'Rima','12-09-1992','xyz','vns','shaj48@sd',28365837,'01-02-2010',6,3)
insert into student values(14,'Rekha','28-02-1998','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(15,'Amin','17-06-2005','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(16,'Ajit','12-02-2001','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(17,'Atul','18-11-1999','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(18,'Amit','10-12-1994','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(19,'Shruti','18-12-1996','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(20,'Awanish','23-06-1997','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(21,'Suraj','20-02-1995','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(22,'Rajesh','28-02-1990','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(23,'Ashish','13-06-1991','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into student values(1,'aaa','10-02-2018','xyz','vns','shaj48@sd',28365837,'01-02-2010',1,1)
insert into department values(1,'it');
insert into faculty values(1,'ram','2697654356','qhw45#@hwhj','01-02-2019','phd','kdhjas',1,1);
insert into semester values(1,'3');

alter table student add constraint pk_student_id primary key (s_id);
alter table department add constraint pk_department_did primary key (d_id);
alter table faculty add constraint pk_faculty_fid primary key (f_id);
alter table semester add constraint pk_semester_id primary key (sem_id);
alter table faculty add constraint pk_senior_id primary key (senior_id);

ALTER TABLE student ADD constraint fk_student_d_id FOREIGN KEY (dept_id) REFERENCES department(d_id);
ALTER TABLE student ADD constraint fk_student_d_id FOREIGN KEY (dept_id) REFERENCES department(d_id);
ALTER TABLE student ADD constraint fk_student_sem_id FOREIGN KEY (s_id) REFERENCES semester(sem_id);
ALTER TABLE faculty ADD constraint fk_faculty_f_id FOREIGN KEY (senior_id) REFERENCES faculty(senior_id);



alter table student modify age int not null; 

ALTER TABLE student ADD UNIQUE (s_id);
ALTER TABLE student ADD UNIQUE (s_id);
ALTER TABLE student ADD UNIQUE (s_id);
ALTER TABLE student ADD UNIQUE (s_id);
select * from semester;

declare @mobile int=2147483647
select @mobile
