--char vs varchar
create table tblperson(p_id int not null identity(1,1) primary key,p_name varchar(20),DOB date , Gender_id int ,age int check (age <= 200));--make identity to primary key column
create table tblgender(G_id int not null identity(1,1) primary key,Gender varchar(3)); -- make a identity 
ALTER TABLE tblgender ADD foreign key(person_id) REFERENCES tblperson (person_id);


insert into tblperson values('khushaboo','10-10-1996',1,12); --remove single quotes,don't pass primary key valus
insert into tblperson values('vinod','06-07-1989',2,13);
insert into tblperson values('shashi','02-06-1989',3,14);
insert into tblperson values('bindu','07-01-1990',1,12);
insert into tblperson values('ram','09-08-1996',1,12);   
insert into tblperson values('radha','',2,16);
insert into tblperson values('brijesh','04-02-1997',3,17);
insert into tblperson values('indu','03-02-1990',1,9);
insert into tblperson values('priyanka','05-06-1990',2,15);
insert into tblperson values('angel','02-06-2013',1,18);
insert into tblperson values('','11-02-1990',3,10);
insert into tblperson values('','12-04-1990',3,11);
insert into tblperson values('','09-07-1996',19,3);
insert into tblperson values('aaaaaa','2-02-1990',3,44);
insert into tblperson values('bbbbbb','8-02-1990',19,50);
alter table tblperson add unique(dob)  

insert into tblgender values('male'); --write proper name
insert into tblgender values('female');
insert into tblgender values('unknow');

create table persons(personid int,lastname varchar(255),firstname varchar(255),address varchar(255),city varchar(255));
insert into persons values(1,'aaaa','eeee','vns','raaa');
alter table persons add email varchar(255);
alter table persons add dateofbirth date ;
update persons
set dateofbirth='10-02-1999' where personid=1
update persons
set email='hgsfd2hsgf' where personid=1
alter table persons drop column email;
alter table persons add unique (city)
select * from persons;
drop table persons;