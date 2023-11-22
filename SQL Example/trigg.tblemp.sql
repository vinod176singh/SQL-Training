CREATE TABLE tblEmployee1
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)
Insert into tblEmployee1 values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee1 values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee1 values (3,'Pam', 6000, 'Female', 1) 

CREATE TABLE tblEmployee1Audit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)
CREATE TRIGGER tr_tblEMployee1_ForInsert
ON tblEmployee1
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployee1Audit 
 values('New employee1 with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END
Insert into tblEmployee1 values (7,'Tan', 2300, 'Female', 3)
Insert into tblEmployee1 values (8,'pan', 2000, 'male', 7)
Insert into tblEmployee1 values (9,'dan', 3300, 'male', 5)


CREATE TRIGGER tr_tblEMployee1_ForDelete
ON tblEmployee1
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted
 
 insert into tblEmployee1Audit 
 values('An existing employee1 with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END
s
DELETE FROM tblEmployee1  WHERE id=3

