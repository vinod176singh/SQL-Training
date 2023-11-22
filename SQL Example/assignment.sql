create table gender(g_id int ,flag varchar(3))
insert into gender values(1,'m')
insert into gender values(2,'f')
insert into gender values(3,'m')
insert into gender values(4,'f')
insert into gender values(5,'f')
update gender set flag=case when flag='m' then'f' else 'm' end
drop 
select * from gender