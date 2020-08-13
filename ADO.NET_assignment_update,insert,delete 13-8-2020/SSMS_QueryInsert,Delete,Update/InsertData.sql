use JulDotNetBatch
create table employee2(
empid int primary key  identity(500,1),
empname varchar(20),
empsal float
);
insert into employee2 values ('Sandipan',12345.68)
insert into employee2 values ('Joy',22345.68)
insert into employee2 values ('Dip',32345.68)
insert into employee2 values ('Som',42345.68)