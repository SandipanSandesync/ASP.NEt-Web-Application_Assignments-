alter proc insert_emp
@empname varchar(20),
@empsal float
as
begin
insert into employee2(empname,empsal) values (@empname,@empsal)
end


