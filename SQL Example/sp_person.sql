select * from tblperson
create Procedure spGettblperson
as
Begin
  Select p_Name, age from tblperson
End
 exec spGettblperson
  Execute spGettblperson
spGettblperson
create Procedure spGettblpersonBygender_idAndDOB 
@age varchar(80)
@Gender_id int not null
as
Begin
  Select p_Name, gender_id from tblperson Where gender_id = @gender_id and age=@age
End




