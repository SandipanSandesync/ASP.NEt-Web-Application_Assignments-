create proc update_emp
@empid int,
@empname varchar(20),
@empsal float
as
begin
update employee2 set empname=@empname ,empsal=@empsal where empid=@empid
end