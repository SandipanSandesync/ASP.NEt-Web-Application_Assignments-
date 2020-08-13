create proc delete_emp
@empid int

as
begin
delete employee2  where empid=@empid
end